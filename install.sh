#!/bin/bash

#All plugins that need to be installed 
plugins=("https://github.com/ervandew/supertab.git" \
         "https://github.com/tomtom/tcomment_vim.git" \
         "https://github.com/majutsushi/tagbar" \
         "https://github.com/vim-scripts/DoxygenToolkit.vim" \
         "https://github.com/altercation/vim-colors-solarized.git" \
         "https://github.com/kien/ctrlp.vim" \
         "https://github.com/Lokaltog/powerline" \
         "https://github.com/scrooloose/syntastic.git" \
        ) 


#Sets up the vimrc to point to the version in your git folder
#Removes your .vim folder and any old plugins that may be there
setup() {
    echo "Sym linking vimrc to git repo"
    ln -s `pwd`/vimrc ~/.vimrc

    echo "setup .vim dir and pathogen"
    mkdir -p ~/.vim/{autoload,bundle}
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
}

#Sets up all the basic directories since we are 
#using the pathogen plugin manager all we need is 
#the autoload and bundle directories. 
clean(){
    echo "removing old .vimrc"
    rm -f ~/.vimrc
    echo "Removing old .vim folder"
    rm -rf ~/.vim
}

#Checks if git is currently installed so we can download
#the plugins we abort the install if git is not installed
check_git(){
    git --version
    if [ $? -eq 127 ]
    then
        echo "Git is not installed or is not on your path. Install git and try again"
        exit 0;
    fi
}

echo "WARNING: This install script will delete your .vimrc and .vim files"
echo "Please back them up if you would like to save any of your settings"
read -p "Continue with install? " -n 1 -r
echo

if [[ $REPLY =~ ^[Yy]$ ]]
then
    check_git
    clean
    setup
    cd ~/.vim/bundle
    for i in ${plugins[@]}; do
        echo "--> Downloading and installing plugin ${i}"
        git clone ${i}
    done 

    echo "********************************************************"
    echo "--> https://github.com/shanep/vim/ for more information on fonts"
    echo "--> update the help files with :Helptags"
else
    echo "Aborted install!!!"
fi

exit 0

