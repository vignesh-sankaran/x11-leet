# NAME

x11-leet - turn your machine into a leet workstation

# DESCRIPTION

x11-leet is a handful of scripts that will automatically install and setup the following very useful packages:

* feh - lightweight app to set background image for xdm and xroot
* i3 - an awesome tiling window manager
* Terminator - terminal with transparency that works
* x11 - the X Window System
* xdm - a simple X Display Manager

Here's an example of x11-leet installed on my machine:

![Screenshot](https://github.com/alfiedotwtf/x11-leet/blob/master/screenshot.jpg)

# INSTALLATION

## Preferred configuration

I've found that some window managers (e.g. Enlightenment) will clobber
/etc/alternatives/x-window-manager, so it's easiest to get x11-leet working
when there are no X packages installed on the system.

During installation of Debian Jessie, when the "Software selection" screen
comes up, uncheck the following:

* Debian desktop environment
  * ... GNOME
  * ... xfce
  * ... KDE
  * ... Cinnamon
  * ... MATE
  * ... LXDE

## In general

To install x11-leet:

    wget https://github.com/alfiedotwtf/x11-leet/archive/master.zip
    apt-get -y install unzip
    unzip x11-leet-master.zip
    cd x11-leet-master
    make install

Once installed, reboot :)

# SUPPORT

Please report any bugs or feature requests at:

* [https://github.com/alfiedotwtf/x11-leet/issues](https://github.com/alfiedotwtf/x11-leet/issues)

Watch the repository and keep up with the latest changes:

* [https://github.com/alfiedotwtf/x11-leet/subscription](https://github.com/alfiedotwtf/x11-leet/subscription)

Feel free to fork the repository and submit pull requests :)

# DEPENDENCIES

* Debian Jessie

# SEE ALSO

* [http://www.imdb.com/title/tt0113243/](Hackers)
* [http://www.imdb.com/title/tt0159784/](Takedown)
* [http://www.imdb.com/title/tt0309614/](Freedom Downtime)
* [http://www.imdb.com/title/tt0308808/](Revolution OS)

# AUTHOR

[Alfie John](https://github.com/alfiedotwtf) [alfie@fastmail.com](mailto:alfie@fastmail.com)

Photo from (http://commons.wikimedia.org/wiki/File:TeamTimeCar.com-BTTF_DeLorean_Time_Machine-OtoGodfrey.com-JMortonPhoto.com-01.jpg)[Wikimedia Commons] 

# WARRANTY

IT COMES WITHOUT WARRANTY OF ANY KIND.

# COPYRIGHT AND LICENSE

Copyright (C) 2015 by Alfie John

This program is free software: you can redistribute it and/or modify it under
the terms of the GNU General Public License as published by the Free Software
Foundation, either version 3 of the License, or (at your option) any later
version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with
this program. If not, see [http://www.gnu.org/licenses/](http://www.gnu.org/licenses/).

