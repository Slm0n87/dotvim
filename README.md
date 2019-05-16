# dotvim  
personal vimdot files

---------------------------------------------------------------------
    
    mv ~/.vim ~/.vim_backup
    git clone https://github.com/Slm0n87/dotvim.git ~/.vim
    mv ~/.vimrc ~/.vimrc_backup
    ln -s ~/.vim/vimrc ~/.vimrc
    cd ~/.vim
 
some dependencies for plugins:
---------------------------------------------------------------------

    #ack.vim.git
    apt install ack-grep
    #vim-fugitive
    apt install git
    #vim-puppet
    apt install ruby
    #syntastic
      # shell scripts
      apt install shellcheck
      # puppet
      gem install puppet-lint
      # yaml
      apt install python3-pkg-resources yamllint
      # xml
      apt install libxml2-utils
      # json
      npm install -g jsonlint


known issues::
---------------------------------------------------------------------


    **Error for jsonlint** /usr/bin/env: ‘node’: No such file or directory
    # for some distributions 'nodejs' has to be executed instad of 'node'
    # this can be solved by a symlink:
    sudo ln -s /usr/bin/nodejs /usr/bin/node

    

install plugins with vundle:
---------------------------------------------------------------------


    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    vim +BundleInstall +qall

- or - from within vim::

    :BundleInstall

.. _vundle: https://github.com/gmarik/vundle
