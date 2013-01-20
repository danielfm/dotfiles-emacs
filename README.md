# My Emacs Configuration

This is a simple [El-Get](https://github.com/dimitri/el-get)-based
configuration that automatically loads the packages I need in order to work
on my professional and personal projects.

## Compatibility

This configuration was built for Emacs 24.x and it should work on both
GUI-based and terminal-based versions of Emacs (for Linux and MacOS X).

## Installation

Just clone this package to `~/.emacs.d` and start up your Emacs. At that
point, it should start downloding all the missing packages.

This operation might take a few minutes to complete. Be patient!

## How To

### Configure Slime With Your Lisp Implementation

The quickest way to add Slime support to your Lisp implementation is via
[Quicklisp](http://www.quicklisp.org/beta/). (No pun intended!)

After following the Quicklisp installation instructions, run the command
bellow in your Lisp implementation REPL in order to install Slime:

````common-lisp

(ql:quickload "quicklisp-slime-helper")
````

Then, open `~/.emacs.d/modules/lisp.el` and add the required lines in the
`:after` directive of the `slime` package.

### Change The Nickname Used By Erc

Set your nickname in `~/.emacs.d/modules/irc.el`.

## Thanks To

While building this configuration, I borrowed some ideas/code from others:

* [Prelude](https://github.com/bbatsov/prelude)
* [Peleteiro's dotfiles](https://github.com/peleteiro/dotfiles)

## License

Copyright (C) Daniel Fernandes Martins

Distributed under the New BSD License. See COPYING for further details.
