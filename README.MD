# Readme - NeoVim Config

## Install Vim-Plug

[junegunn/vim-plug](https://github.com/junegunn/vim-plug)

## Required install on `pip`

`jedi` for Python LSP:

```CLI
pip install -U jedi-language-server
```

`autopep8` for code formatting:

```CLI
pip install autopep8
```

`pyvim` for code formatting:

```CLI
pip install pyvim
```

## Font Setting Download

[Hack Nerd Font](https://www.nerdfonts.com/font-downloads)

## Coc.nvim Plugin

```CLI
CocInstall coc-tsserver coc-css coc-diagnostic coc-html coc-jedi coc-markdownlint
```

## Airline Theme

[vim/autoload/airline/themes/dracula.vim](https://github.com/extrante/dracula-theme/blob/e383876e6236fe3dbf504a71bf412f8cae447777/vim/autoload/airline/themes/dracula.vim)

## FZF.vim

### Windows Issue

1. Convert `preview.sh` Using Notepad++
Edit -> EOL conversion -> Unix

2. Check line 25 in `preview.sh`
Replace:

```sh
FILE="${FILE/#\~\//$HOME/}"
```

With:

```sh
FILE="${FILE/#\~\//$HOME/}"
FILE="${FILE//\\\\/\/}"
```

3. For Syntax Highline

`Bat` must be installed in bash(WSL)

