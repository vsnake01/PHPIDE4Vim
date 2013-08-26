Use VIM as powerful IDE for PHP.

Features:
--

 * file browser
 * tags browser
 * auto-completition
 * goto-definition
 * version-control integration

Installation
--
    sudo yum install rake ruby-devel
    cd ~
    git clone https://github.com/vsnake01/PHPIDE4Vim.git .vim
    ln -s ~/.vim/vimrc ~/.vimrc
    cd ~/.vim/bundle/command-t/
    rake make
    
Create CTAGS
--
    cd <PROJECTFOLDER>
    ctags -R *

Instructions
--
    <F3> - toggle NERDTree
    <F4> - toggle tags
    <F5> - Show Svndiff()
    <F6> - toggle diff in two windows (Disabled for now)
    Ctrl+ <left>,<right> - move berween buffers
    Ctrl+W+l, Ctrl+W+h - move between windows
    Ctrl+n - autocomplete
    Ctrl+] - jump to definition
    Ctrl+o - jump to previous location
    Ctrl-i - jumo to next location
    Ctrl+w+c - close current window
    Shift+k - see help for function
