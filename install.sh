#/bin/sh

if [ ! -e $HOME/.vim/bundle/vundle ]; then
    git clone http://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle
fi

system_shell=$SHELL
export SHELL="/bin/sh"
vim +BundleInstall! +BundleClean +qall
export SHELL=$system_shell

@mv ~/.vim/Templates ~/.vim/bundle/cvim/c-support/templates/
@mv ~/.vim/c.comments.template ~/.vim/bundle/cvim/c-support/templates/
@mv ~/.vim/cpp.snippets ~/.vim/bundle/snipmate-snippets/snippets/
