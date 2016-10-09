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

Run markdown-toc on `./README.md`:

    $ docker run -v `pwd`:/src quay.io/getpantheon/markdown-toc -i /src/README.md


Makefile Usage
--------------

Here is an example make task named `readme-toc` that you can use in a project to
update the TOC in `./README.md`:

    # Makefile:

    readme-toc: ## update the Table of Contents in ./README.md
        docker run --rm -v `pwd`:/src quay.io/getpantheon/markdown-toc -i /src/README.md

Run `make readme-toc` to update the README.md's table of contents.
