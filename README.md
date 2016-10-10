markdown-toc-docker
===================

<!-- toc -->

- [Basic Usage](#basic-usage)
- [Makefile Usage](#makefile-usage)
- [Building](#building)

<!-- tocstop -->

This is a docker container containing an installation of [markdown-toc](https://github.com/jonschlinkert/markdown-toc#cli).

It's purpose is to provide a convenient way to use markdown-toc without having
to install node.js or npm.

Basic Usage
-----------

Run markdown-toc on `./README.md` (edits in place):

    $ docker run -v `pwd`:/src quay.io/getpantheon/markdown-toc -i /src/README.md

Makefile Usage
--------------

Use as a Makefile task `readme-toc`:

    readme-toc: ## update the Table of Contents in ./README.md
        docker run --rm -v `pwd`:/src quay.io/getpantheon/markdown-toc -i /src/README.md

Workflow:

    $ vim README.md
    $ make readme-toc
    $ git commit README.md

Building
--------

There is no make task for building the docker container because this repo is
setup to auto-build on quay.io whenever a new branch is pushed to Github.
See here: https://quay.io/repository/getpantheon/markdown-toc
