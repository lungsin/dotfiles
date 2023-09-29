# dotfiles

Welcome to my personal dotfiles repository! 👋

## Getting Started

### Installing dependencies

This repository is managed using [twpayne/chezmoi](https://github.com/twpayne/chezmoi) tools. Also, there are scripts managed by `chezmoi` that install some packages using [Homebrew](https://brew.sh/).

- Install [Homebrew or linuxbrew](https://brew.sh/).
- Install [twpayne/chezmoi](https://www.chezmoi.io/install/). I'm using brew to install it, but you can use whatever method you want.
  ```sh
  brew install chezmoi
  ```

### Apply the config

```sh
chezmoi init <repository url>
```
