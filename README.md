# Power-saving settings for AMD Radeon HD graphics cards

This is a command-line tool for changing the power saving settings of the
open-source [radeon X.org driver](http://www.x.org/wiki/radeon) for AMD Radeon
HD graphics cards.


## Usage

If your video card fans are making too much noise, this command will quiet them
down.

```bash
radeonhd-power low
```

If you want to play video games or do another graphics-intensive task, this
command will give you all juice your card has.

```bash
radeonhd-power high
```

The tool includes a [systemd](http://www.freedesktop.org/wiki/Software/systemd)
unit file that you can use to set your graphics card's power settings at boot
time.

```bash
systemctl enable radeonhd-power.service
systemctl start radeonhd-power.service
```


## Installation

[This review request](https://bugzilla.redhat.com/show_bug.cgi?id=819274) will
make the tool available as a Fedora package, so the command below will install
it.

```bash
yum install radeonhd-power
```


## Copyright

The tool is Copyright (c) 2012-2013 Victor Costan, and distributed under the
MIT license.
