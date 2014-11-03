#!/bin/bash

plugins=("https://github.com/ervandew/supertab.git" \
         "https://github.com/tomtom/tcomment_vim.git" \
         "https://github.com/majutsushi/tagbar" \
         "https://github.com/vim-scripts/DoxygenToolkit.vim" \
         "https://github.com/altercation/vim-colors-solarized.git" \

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
    echo "Moving any old vimrc's to vimrc_old"
    if [ -e ~/.vimrc ]
    then
        echo "Saving off old vimrc"
        mv -b ~/.vimrc ~/.vimrc_old
    fi
    echo "Removing old .vim folder"
    rm -rf ~/.vim
}

clean
setup
cd ~/.vim/bundle

for i in ${plugins[@]}; do
    echo "--> Downloading and installing plugin ${i}"
    git clone ${i}
done 

echo "********************************************************"
echo "Note if you are on linux you should install nicer fonts"
echo "see https://github.com/shanep/vim/ for more information on fonts"
exit 0

