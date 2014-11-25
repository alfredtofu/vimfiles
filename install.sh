#/bin/sh

if [ ! -e $HOME/.vim/bundle/vundle ]; then
    git clone http://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle
fi

system_shell=$SHELL
export SHELL="/bin/sh"
vim +BundleInstall! +BundleClean +qall
export SHELL=$system_shell

rm ~/.vim/bundle/c.vim/c-support/templates/Templates
ln -s ~/.vim/Templates ~/.vim/bundle/c.vim/c-support/templates/

rm ~/.vim/bundle/c.vim/c-support/templates/c.comments.template
ln -s ~/.vim/c.comments.template ~/.vim/bundle/c.vim/c-support/templates/

rm ~/.vim/bundle/vim-snippets/snippets/cpp.snippets
ln -s ~/.vim/cpp.snippets ~/.vim/bundle/vim-snippets/snippets/

#rm ~/.vim/bundle/vim-snippets/snippets/c.snippets
#ln -s ~/.vim/c.snippets ~/.vim/bundle/vim-snippets/snippets/
