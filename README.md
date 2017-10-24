> Only for Debian based distros!
>
> Don't forget to change the name and the email in .gitconfig!

### Local setup:

```shell
> sh setup.sh
```

### Docker setup:

Dockerized Python development environment with Vim support and all required plugins.

```shell
> docker pull jonathanhs/py-dev-vim:0.1-python2    # Python 2
> docker pull jonathanhs/py-dev-vim:0.1-python3    # Python 3

# run container
> docker run -it jonathanhs/py-dev-vim:[tag] bash
```
