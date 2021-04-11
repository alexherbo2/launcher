# Launcher

<img src="https://github.com/FortAwesome/Font-Awesome/raw/master/svgs/solid/rocket.svg" height="16" align="right">

Launch applications with a dynamic menu program.

## Features

- MRU

## Dependencies

- [Crystal]

[Crystal]: https://crystal-lang.org

## Installation

``` sh
make install
```

## Usage

``` sh
launcher menu | dmenu | xargs launcher run --
```

[Sway] example configuration:

```
# Note: Pass the final command to swaymsg so that the resulting window can be opened
# on the original workspace that the command was run on.
set $launcher launcher menu | dmenu | xargs swaymsg exec launcher run --

bindsym $mod+Shift+Return exec $launcher
```

[Sway]: https://swaywm.org
