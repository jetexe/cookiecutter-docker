# Cookiecutter docker image

This is unofficial docker image for [Cookiecutter][Cookiecutter]

![Cookiecutter](https://raw.githubusercontent.com/cookiecutter/cookiecutter/3ac078356adf5a1a72042dfe72ebfa4a9cd5ef38/logo/cookiecutter_medium.png)



## Usage

From git:

```sh
# Create project from the cookiecutter-pypackage.git repo template
# You'll be prompted to enter values.
# Then it'll create your Python package in the current working directory,
# based on those values.
$ docker run --rm -it --volume $(PWD):/workdir -u $(id -u):$(id -g) jetexe/cookiecutter https://github.com/audreyfeldroy/cookiecutter-pypackage
```

From directory:

```sh
# Create project from the cookiecutter-pypackage.git repo template
# You'll be prompted to enter values.
# Then it'll create your Python package in the current working directory,
# based on those values.
$ docker run --rm -it --volume $(PWD):/workdir --volume /path/to/template:/tmp/template -u $(id -u):$(id -g) jetexe/cookiecutter /tmp/template
```



Welcome to your issues!

[Cookiecutter]:https://github.com/cookiecutter/cookiecutter

