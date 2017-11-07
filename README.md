> Only for Debian based distros!
>
> Don't forget to change the name and the email in .gitconfig!

### Local Setup:

```shell
> sh setup.sh
```

### Docker Setup:

Dockerized Python development environment with Vim support and all required plugins.

Installed plugins and configuration: https://github.com/jonathanhs/dotfiles/blob/master/.vimrc

**Tags:** `0.1-python2` `0.1-python3`

**Usage:**

```shell
# Python 2 or Python 3
> docker pull jonathanhs/py-dev-vim:0.1-python2
> docker pull jonathanhs/py-dev-vim:0.1-python3

# run container
> docker run -it jonathanhs/py-dev-vim:[tag] bash
```