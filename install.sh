#!/bin/bash
echo "Installing vimrc"
rm -f ~/.vimrc
ln -s `pwd`/vimrc ~/.vimrc

#Create dir to contain all plugin source
if [ ! -d ~/github ] 
then
    mkdir ~/github
fi
echo "setup .vim dir"
mkdir -p ~/.vim/{autoload,doc,plugin}


#Install supertab
echo "--> Downloading and installing supertab"
cd ~/github
git clone https://github.com/ervandew/supertab.git
cd supertab
ln -s `pwd`/doc/supertab.txt ~/.vim/doc
ln -s `pwd`/plugin/supertab.vim ~/.vim/plugin 
cd .. 

#Install tcomment 
echo "--> Downloading and installing tcomment"
cd ~/github
git clone https://github.com/tomtom/tcomment_vim.git
cd tcomment_vim
ln -s `pwd`/autoload/tcomment.vim ~/.vim/autoload
ln -s `pwd`/doc/tcomment.txt ~/.vim/doc
ln -s `pwd`/plugin/tcomment.vim ~/.vim/plugin
cd ..

#Install taglist 
echo "--> Downloading and installing taglist"
cd ~/github
git clone https://github.com/shanep/taglist.vim.git
cd taglist.vim
ln -s `pwd`/doc/taglist.txt ~/.vim/doc
ln -s `pwd`/plugin/taglist.vim ~/.vim/plugin
cd ..

#Install gocode
if [ -d ${GOROOT:?"GOROOT needs to be set to your go install"} ]
then
    echo "--> Installing gocode"
    GOCODE="github.com/nsf/gocode"
    go get -u $GOCODE
    #go get installs libs in the first path listed in GOPATH
    IFS=:
    read -ra first rest <<< "$GOPATH"
    cd $first/src/$GOCODE/vim/
    ./update.bash
fi



echo "DONE"

