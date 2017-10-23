> Only for Debian based distros!
>
> Don't forget to change the name and the email in .gitconfig!

### Local setup:

```shell
> sudo sh setup.sh
```

### Docker setup:

Dockerized Python development environment with Vim support and all required plugins.

```shell
> docker pull jonathanhs/py-dev-vim:0.1-python2    # Python 2
> docker pull jonathanhs/py-dev-vim:0.1-python3    # Python 3

# run container
> docker run -it jonathanhs/py-dev-vim:[tag] bash
```

**Packages installed:**

- curl
- git
- vim
- wget

**Vim plugins installed:**

- apiblueprint.vim: https://github.com/kylef/apiblueprint.vim
- ctrlp.vim: https://github.com/kien/ctrlp.vim
- delimitMate: https://github.com/Raimondi/delimitMate
- MatchTag: https://github.com/gregsexton/MatchTag
- nerdtree: https://github.com/scrooloose/nerdtree
- syntastic: https://github.com/vim-syntastic/syntastic
- vim-airline: https://github.com/vim-airline/vim-airline
- vim-airline-themes: https://github.com/vim-airline/vim-airline-themes
- vim-fugitive: https://github.com/tpope/vim-fugitive
- vim-gitgutter: https://github.com/airblade/vim-gitgutter
- Vundle.vim: https://github.com/VundleVim/Vundle.vim