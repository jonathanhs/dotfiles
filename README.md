`only for debian based distros!` `please update docker id in .bashrc!` `please update name and email in .gitconfig!`

## Local setup

```shell
> sh setup.sh
```

## Docker setup

Dockerized dev environment with Vim support and all required plugins.

Installed plugins and configuration: https://github.com/jonathanhs/dotfiles/blob/master/.vimrc

**Tags:** `0.1-ub14.04-stable` `0.1-ub16.04-stable` `0.1-python2` `0.1-python3`

**Usage:**

```shell
> docker pull jonathanhs/dev-vim:[tag]
> docker run -it jonathanhs/dev-vim:[tag] bash
```

### Use your own .vimrc

```shell
# clone this repository
> git clone https://github.com/jonathanhs/dotfiles.git

# replace .vimrc with your .vimrc
> cd dotfiles
> cp [path/to/your/.vimrc] .

# build and run new docker image
> docker build -t my-dev-vim --build-arg image=ubuntu:16.04 .
> docker run -it my-dev-vim bash
```