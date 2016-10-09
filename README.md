markdown-toc-docker
===================

<!-- toc -->

- [Basic Usage](#basic-usage)
- [Makefile Usage](#makefile-usage)

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
