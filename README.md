# My Emacs Configuration

This is a simple [El-Get](https://github.com/dimitri/el-get)-based
configuration that automatically loads the packages I need in order to work
on my professional and personal projects.


## Compatibility

This configuration was built for Emacs 24.x and it should work on both
GUI-based and terminal-based versions of Emacs for Linux and MacOS X.

Windows aren't and won't be supported.


## Installation

Just clone this package to `~/.emacs.d` and start your Emacs. At that point,
it should start downloding all the missing packages.

This operation might take a few minutes to complete. Be patient!


## Usage

Since it relies heavily on environment variables, this configuration is
meant to be used with `emacs --daemon` and `emacsclient`.

Read the [Emacs documentation](http://www.gnu.org/software/emacs/manual/html_node/emacs/Emacs-Server.html)
for more information.


## How To

### Configure Slime With Your Lisp Implementation

The quickest way to add Slime support to your Lisp implementation is via
[Quicklisp](http://www.quicklisp.org/beta/). (No pun intended!)

After following the Quicklisp installation instructions, run the command
bellow in your Lisp implementation REPL in order to install Slime:

````common-lisp

(ql:quickload "quicklisp-slime-helper")
````

Then, specify the following environment variables pointing to
`slime-helper.el` file and the executable of your preferred Lisp
implementation:

````bash

export SLIME_HELPER_FILE=~/quicklisp/slime-helper.el
export LISP_PROGRAM=sbcl
````


### Change The Nickname Used By Erc

Specify the `IRCNICK` environment variable as follows:

````bash

export IRCNICK=danielfm
````

Read the [ERC manual](http://www.gnu.org/software/emacs/manual/html_mono/erc.html)
for more information.


### Emacs And Environment Variables

If you are having trouble to make Emacs find your environment variables, please
make sure they are being defined in `~/.bashrc`. If your variables are being
defined in `~/.bash_profile` (which is very common practice among Mac users),
please move them to `~/.bashrc` and source it from within `~/.bash_profile`:

````bash
# In ~/.bashrc
export VARIABLE=value
export ...

# In ~/.bash_profile
source ~/.bashrc
````

## Custom Keybindings

TODO: Finish the job of documenting them all.

### Multiple Cursors

````
C-c * mc/edit-lines
C-c . mc/mark-all-like-this
C-c > mc/mark-next-like-this
C-c < mc/mark-previous-like-this
````


## Thanks To

While building this configuration, I borrowed some ideas/code from others:

* [Prelude](https://github.com/bbatsov/prelude)
* [Peleteiro's dotfiles](https://github.com/peleteiro/dotfiles)


## License

Copyright (C) Daniel Fernandes Martins

Distributed under the New BSD License. See COPYING for further details.
