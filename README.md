Installation
--
    sudo yum install rake ruby-devel
    cd ~
    git clone https://github.com/vsnake01/PHPIDE4Vim.git .vim
    ln -s ~/.vim/vimrc ~/.vimrc
    cd ~ /.vim
    cd ~/.vim/bundle/command-t/
    rake make

Instructions
--
    <F3> - toggle NERDTree
    <F4> - toggle tags
    Ctrl+ <left>,<right> - move berween buffers
    Ctrl+W+l, Ctrl+W+h - move between windows
    Ctrl+n - autocomplete
    :AuVimDiff - shows diff in two windows
    
