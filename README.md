Vim - setup and install 
=======================
This is my personal .vimrc as well as an install script to get 
you up and going on a new system. I am using pathogen to 
manage all the plugins. The install script with fetch each plugin
and install it into ~.vim/bundles which pathogen with then add 
to your vim runtime files.


FONTS
-----
The Linux fonts rely on the Inconsolata font which can be downloaded from the link below
* http://www.levien.com/type/myfonts/inconsolata.html

If you are running Fedora you can install the Inconsolata fonts with yum.
* su -c yum install levien-inconsolata-fonts.noarch 


Plugins
=======
Below is a description and how to leverage each of the installed plugins. 
Each plugin already has the appropriate options set in the installed vimrc.

supertab
--------
Allows you to use <Tab> for insert completion. This is bound to omnicomplete. By pressing 
<Tab> <Tab> while typing a symbol omnicomplete will be called to complete the symbol.

* https://github.com/ervandew/supertab.git 

tcomment
--------
TComment works like a toggle, i.e., it will comment out text that contains 
uncommented lines, and it will remove comment markup for already commented text.

* https://github.com/tomtom/tcomment_vim

tagbar
------

DoxygenToolkit
--------------

vim-color-solarized
-------------------

ctrlp
-----

powerline
---------

syntastic
---------

