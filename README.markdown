# Install

    git clone git://github/mribica/vim.git ~/.vim

# Create symlink to .vimrc

    ls -s ~/.vim/vimrc ~/.vimrc

# Rebuild command-t plugin
    ** Make sure you are using ruby 1.8.7-p352 **

    cd cd ~/.vim/bundle/command-t/ruby/command-t
    ruby extconf.rb
    make
