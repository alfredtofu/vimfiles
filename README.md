Zhujin's vim files
================

## Bundled Plugins ##

* [c.vim](https://github.com/vim-scripts/c.vim) - C/C++ IDE -- Write and run programs. Insert statements, idioms, comments etc
* [closetag](https://github.com/docunext/closetag.vim) - Functions and mappings to close open HTML/XML tags
* [delimitMate](https://github.com/Raimondi/delimitMate) - provides insert mode auto-completion for quotes, parens, brackets, etc
* [endwise](https://github.com/tpope/vim-endwise) - wisely add "end" in ruby, endfunction/endif/more in vim script, etc
* [indent guides](https://github.com/nathanaelkane/vim-indent-guides) - visually displaying indent levels in code
* [jquery.vim](https://github.com/nono/jquery.vim) - Syntax file for jQuery
* [matchit](https://github.com/vim-scripts/matchit.zip) - extended % matching for HTML, LaTeX, and many other languages
* [neocomplcache](https://github.com/Shougo/neocomplcache) - Ultimate auto-completion system
* [neosnippet](https://github.com/Shougo/neosnippet) - adds snippet support to Vim
* [nerd commenter](https://github.com/scrooloose/nerdcommenter) - for intensely orgasmic commenting 
* [nerd tree](https://github.com/scrooloose/nerdtree) - tree explorer plugin for navigating the filesystem
* [powerline](https://github.com/Lokaltog/vim-powerline) - create better-looking, more functional vim statuslines
* [rainbow parenthesis](https://github.com/kien/rainbow_parentheses.vim) - highlights matching parenthesis with a rainbow of colors
* [snipmate-snippets](https://github.com/honza/snipmate-snippets) - vim-snipmate default snippets
* [supertab](https://github.com/ervandew/supertab) - Perform all your vim insert mode completions with Tab 
* [surround](https://github.com/tpope/vim-surround) - quoting/parenthesizing made simple
* [syntastic](https://github.com/scrooloose/syntastic/) - Syntax checking hacks for vim 
* [tabbar](https://github.com/humiaozuzu/TabBar.git) - add tab bar (derived from miniBufExplorer)
* [tagbar](https://github.com/majutsushi/tagbar) - displays tags in a window, ordered by class etc
* [vim-autoformat]('https://github.com/Chiel92/vim-autoformat') - Format the code. 
* [vim-css3-syntax]('https://github.com/hail2u/vim-css3-syntax') - Add CSS3 syntax support to vim
* [vim-coffee-script](https://github.com/kchmck/vim-coffee-script) - CoffeeScript support for vim
* [vim-easymotion](https://github.com/Lokaltog/vim-easymotion) -  provides a much simpler way to use some motions in vim
* [vim-javascript](https://github.com/pangloss/vim-javascript) - Vastly improved vim's javascript indentation
* [zencoding](https://github.com/mattn/zencoding-vim) - for high-speed HTML, XML, XSL, etc coding and editing

## Themes ##

* [tir\_black](http://www.vim.org/scripts/script.php?script_id=2777)

## Dependencies ##

* `ctags` - required by `tagbar`

For ArchLinux. 

    sudo yaourt -S ag ctags

For MacOS:

	brew install ag ctags

Note that package names and install tools may differ in other environments.


## Installation ##

Backup your own vim files.

    mv .vim .vim.bak
    mv .vimrc .vimrc.bak

Clone this repository.

    git clone git://github.com/alfredtofu/vimfiles.git .vim

Create link for `.vimrc`.
    
    ln -s .vim/vimrc .vimrc

Install the plugins (This step may take some time. Go have yourself a cup of tea).

    .vim/install.sh

## Key Bindings ##

* `F2` -> Toggle highlight mode 
* `F3` -> Toggle paste mode
* `F4` -> Toggle indentation guides
* `F5` -> Toggle Nerd-Tree file viewer
* `F6` -> Toggle tagbar
* `F7` -> Format the code
* `Ctrl` + `j` -> Call zen-coding expansion on html tags
* `Ctrl` + `c` -> Copy content of current file to system clipboard
* `Alt` + `1~9` -> Switch between multiple buffers
* `Alt` + `x` -> " Delete current tab, remove it from tagbar
* `gr` `gR` -> local/global variable replace
