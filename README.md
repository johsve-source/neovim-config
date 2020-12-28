Neovim and terminal configuration
------

Neovim configuration is completely written in lua, thus it requires latest Neovim built from master.

* Super old tmux setup: [tmux](https://github.com/kristijanhusak/neovim-config/tree/tmux) branch.

This is my Neovim editor setup, with zsh and i3 configurations.
Feel free to fork it
and submit a pull request if you found any bug.

**Warning**: Install script removes all previous configuration (zshrc, oh-my-zsh, nvim, i3)

Installation
-----------

    $ git clone https://github.com/kristijanhusak/neovim-config.git ~/neovim-config
    $ cd ~/neovim-config
    $ chmod +x ./install.sh
    $ ./install.sh
    $ nvim

Plugins
----------------

* [kristijanhusak/vim-packager](https://github.com/kristijanhusak/vim-packager)
* [kristijanhusak/vim-js-file-import](https://github.com/kristijanhusak/vim-js-file-import)
* [kristijanhusak/defx-git](https://github.com/kristijanhusak/defx-git)
* [kristijanhusak/defx-icons](https://github.com/kristijanhusak/defx-icons)
* [fatih/vim-go](https://github.com/fatih/vim-go)
* [vimwiki/vimwiki](https://github.com/vimwiki/vimwiki)
* [Shougo/defx.nvim](https://github.com/Shougo/defx.nvim)
* [tpope/vim-commentary](https://github.com/tpope/vim-commentary)
* [tpope/vim-surround](https://github.com/tpope/vim-surround)
* [tpope/vim-repeat](https://github.com/tpope/vim-repeat)
* [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)
* [tpope/vim-sleuth](https://github.com/tpope/vim-sleuth)
* [tpope/vim-dadbod](https://github.com/tpope/vim-dadbod)
* [kristijanhusak/vim-dadbod-ui](https://github.com/kristijanhusak/vim-dadbod-ui)
* [lambdalisue/vim-backslash](https://github.com/lambdalisue/vim-backslash)
* [AndrewRadev/splitjoin.vim](https://github.com/AndrewRadev/splitjoin.vim)
* [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
* [sheerun/vim-polyglot](https://github.com/sheerun/vim-polyglot)
* [junegunn/fzf](https://github.com/junegunn/fzf)
* [junegunn/fzf.vim](https://github.com/junegunn/fzf.vim)
* [ludovicchabant/vim-gutentags](https://github.com/ludovicchabant/vim-gutentags)
* [editorconfig/editorconfig-vim](https://github.com/editorconfig/editorconfig-vim)
* [andymass/vim-matchup](https://github.com/andymass/vim-matchup)
* [haya14busa/vim-asterisk](https://github.com/haya14busa/vim-asterisk)
* [osyo-manga/vim-anzu](https://github.com/osyo-manga/vim-anzu)
* [stefandtw/quickfix-reflector.vim](https://github.com/stefandtw/quickfix-reflector.vim)
* [neoclide/coc.nvim](https://github.com/neoclide/coc.nvim)
* [w0rp/ale](https://github.com/w0rp/ale)
* [honza/vim-snippets](https://github.com/honza/vim-snippets)
* [AndrewRadev/tagalong.vim](https://github.com/AndrewRadev/tagalong.vim)
* [kristijanhusak/vim-create-pr](https://github.com/kristijanhusak/vim-create-pr)
* [wakatime/vim-wakatime](https://github.com/wakatime/vim-wakatime)
* [arzg/vim-colors-xcode](https://github.com/arzg/vim-colors-xcode)

Font used:
* Current - [IBM Plex Mono](https://github.com/IBM/plex)
* previous fonts
  * [Iosevka](https://github.com/be5invis/Iosevka)
  * [Input mono condensed](http://input.fontbureau.com/)
  * [Inconsolata for powerline](https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Inconsolata/complete/Inconsolata%20for%20Powerline%20Nerd%20Font%20Complete.otf)

License
-------

This project is licensed under MIT License (see LICENSE file for details). But
each plugin has its own license, so check each one to see what you can do.
