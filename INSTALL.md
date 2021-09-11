### [SolidWorks](https://www.solidworks.com)

#### Install using Git

If you are a git user, you can install the theme and keep up to date by cloning the repo:

    git clone https://github.com/dracula/solidworks.git

#### Install manually

Download using the [GitHub .zip download](https://github.com/dracula/solidworks/archive/master.zip) option and unzip them.

#### Activating theme

To install this you will need a unix-like terminal with access to vim. I have
tested this on MSYS2. The scripts also assume the `C:` drive is mounted at
`/c/`, which is true for MSYS2.

Because `override_background.sh` crudely edits DLLs, it could cause SolidWorks
to crash or become unstable. If you experience problems, replace the relevant
DLLs with the backups created in `solidworks-filebackup`.

1. Execute `override_background.sh` from a unix-like terminal
2. Load `dracula.sldreg` with the SolidWorks *Copy Settings Wizard*. Note that
   if you have already added custom themes, you will need to delete them first
   or modify the number of themes in `dracula.sldreg`
3. Activate the theme in SolidWorks by navigating to *Tools->Options->Colors*,
   and setting the options *Background: Dark* and *Current color scheme:
   Dracula*
4. Boom! It's working
