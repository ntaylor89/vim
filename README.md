Vim - setup and install 
=======================
This is my personal .vimrc as well as an install script to get 
you up and going on a new system. I am using pathogen to 
manage all the plugins. The install script with fetch each plugin
and install it into ~/.vim/bundles which pathogen with then add 
to your vim runtime files.


Fonts
-----
The Linux fonts rely on the Inconsolata font which can be downloaded from the link below
If you are running Fedora you can install the Inconsolata fonts with yum.

* http://www.levien.com/type/myfonts/inconsolata.html
* su -c yum install levien-inconsolata-fonts.noarch 


Plugins
=======
Below is a brief description of each plugin and how they are configured in my vimrc.
Unless otherwise specified the default key bindings for each plugin are used. 
Check the link to the plugin repository for more information on plugin features and 
any key bindings that the plugin may use.

supertab
--------
Allows you to use the [Tab] key for symbol completion. This is bound to omnicomplete, by pressing 
[Tab] [Tab] while typing a symbol omnicomplete will be called to complete the symbol.

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

