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
launcher menu | fzf | xargs launcher run --
```

**Example** – Same with [Alacritty]:

``` sh
alacritty --command sh -c 'launcher menu | fzf | xargs setsid launcher run --'
```

[Crystal]: https://crystal-lang.org
[fzf]: https://github.com/junegunn/fzf
[Alacritty]: https://github.com/alacritty/alacritty
