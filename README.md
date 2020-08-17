# Launcher

[![IRC](https://img.shields.io/badge/IRC-%23launcher-blue)](https://webchat.freenode.net/#launcher)

A simple application launcher with no GUI.

## Features

- MRU

## Dependencies

- [Crystal]

## Installation

``` sh
make install
```

## Usage

**Example** – Run with [fzf]:

``` sh
launcher run $(launcher menu | fzf)
```

**Example** – Same with [Alacritty]:

``` sh
alacritty --command sh -c 'setsid launcher run $(launcher menu | fzf) < /dev/null > /dev/null 2>&1'
```

[Crystal]: https://crystal-lang.org
[fzf]: https://github.com/junegunn/fzf
[Alacritty]: https://github.com/alacritty/alacritty
