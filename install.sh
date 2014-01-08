#1 is the dir
#2 is the github url
git_update() {
    if [ -d $1 ] 
    then
        cd $1
        git pull
        cd ..
        return
    fi
    git clone $2
}

#!/bin/bash
echo "Installing vimrc"
rm -f ~/.vimrc
rm -rf ~/.vim
ln -s `pwd`/vimrc ~/.vimrc

#Create dir to contain all plugin source
if [ ! -d ~/github ] 
then
    mkdir ~/github
fi
echo "setup .vim dir"
mkdir -p ~/.vim/{autoload,doc,plugin,syntax,etc,lib}


#Install supertab
echo "--> Downloading and installing supertab"
cd ~/github
git_update supertab https://github.com/ervandew/supertab.git
cd supertab
ln -s `pwd`/doc/supertab.txt ~/.vim/doc
ln -s `pwd`/plugin/supertab.vim ~/.vim/plugin 
cd .. 

#Install tcomment 
echo "--> Downloading and installing tcomment"
cd ~/github
git_update tcomment_vim https://github.com/tomtom/tcomment_vim.git
cd tcomment_vim
ln -s `pwd`/autoload/tcomment.vim ~/.vim/autoload
ln -s `pwd`/doc/tcomment.txt ~/.vim/doc
ln -s `pwd`/plugin/tcomment.vim ~/.vim/plugin
ln -s `pwd`/etc/tpl_tcomment.vim ~/.vim/etc
cd ..

#Install tagbar 
echo "--> Downloading and installing tagbar"
cd ~/github
git_update tagbar https://github.com/majutsushi/tagbar
cd tagbar
ln -s `pwd`/autoload/tagbar.vim ~/.vim/autoload
ln -s `pwd`/doc/tagbar.txt ~/.vim/doc
ln -s `pwd`/plugin/tagbar.vim ~/.vim/plugin
ln -s `pwd`/syntax/tagbar.vim ~/.vim/syntax
cd ..

#Install nerdtree 
echo "--> Downloading and installing nerdtree"
cd ~/github
git_update nerdtree https://github.com/scrooloose/nerdtree
cd nerdtree 
ln -s `pwd`/autoload/nerdtree.vim ~/.vim/autoload
ln -s `pwd`/doc/NERD_tree.txt ~/.vim/doc
ln -s `pwd`/lib/nerdtree ~/.vim/lib/nerdtree
ln -s `pwd`/nerdtree_plugin ~/.vim/nerdtree_plugin
ln -s `pwd`/plugin/NERD_tree.vim ~/.vim/plugin
ln -s `pwd`/syntax/nerdtree.vim ~/.vim/syntax
cd ..

#Install DoxygenToolkit
echo "--> Downloading and installing DoxygenToolkit"
cd ~/github
git_update DoxygenToolkit.vim https://github.com/vim-scripts/DoxygenToolkit.vim
cd DoxygenToolkit.vim
ln -s `pwd`/plugin/DoxygenToolkit.vim ~/.vim/plugin
cd ..


echo "DONE"

