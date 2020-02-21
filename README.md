# Launcher

[![IRC](https://img.shields.io/badge/IRC-%23launcher-blue)](https://webchat.freenode.net/#launcher)

A simple application launcher with no GUI.

## Features

- MRU

## Dependencies

- [Crystal]

## Installation

``` sh
make build # Build bin/launcher-list and bin/launcher-run.
make install # Install bin into ~/.local/bin.
```

## Usage

**Example** – Run with [fzf]:

``` sh
launcher-run $(launcher-list | fzf)
```

**Example** – Same with [Alacritty]:

``` sh
alacritty --command sh -c 'nohup launcher-run $(launcher-list | fzf) > /dev/null'
```

[Crystal]: https://crystal-lang.org
[fzf]: https://github.com/junegunn/fzf
[Alacritty]: https://github.com/alacritty/alacritty
