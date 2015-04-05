---
layout: blog
title: Golang 语法高亮
---

#### Gedit

    wget http://go-lang.cat-v.org/text-editors/gedit/go.lang
    cp go.lang /usr/share/gtksourceview-2.0/language-specs

#### Vim

    wget https://raw.githubusercontent.com/fatih/vim-go/master/syntax/go.vim
    mkdir ~/.vim
    mkdir ~/.vim/syntax
    mkdir ~/.vim/ftdetect
    cp go.vim ~/.vim/syntax/
    cp go.vim ~/.vim/ftdetect/
    echo "syntax on" >> /etc/vimrc
