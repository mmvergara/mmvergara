# Local Dev Environment Installation

## Setting up WSL ubuntu

- INSTALL WSL on MICROSOFT STORE
- Install font CaskaydiaCover Nerd Font Mono
- wsl --list --online
- pick ubuntu 20.04-
- Create new user
- `sudo apt-get update`
- `sudo apt-get upgrade`

## Setting up zsh terminal

> Install unzip and zsh
- `sudo apt-get install zsh -y`

> Set zsh as default shell
- `chsh -s /usr/bin/zsh`

### Download oh my zsh

https://ohmyz.sh/#install

- open the `.zshrc` file (code .zshrc)
- remove `ZSH_THEME=""`
- Install Nvm and node

## Configure Git and Github
git config --global user.email "example@localhost.com"
git config --global user.username "mmvergara"

### Install Github CLI
https://github.com/cli/cli/blob/trunk/docs/install_linux.md
`gh auth login`

---

## Install Brew
- https://brew.sh/

## Download oh my posh

> Only Download oh my posh don't install themes
> https://ohmyposh.dev/docs/installation/linux

- goto root folder
- `mkdir ~/.poshthemes`
- `cd .poshthemes`
- `touch crown-theme.omp.json`
- `code crown-theme.omp.json`
- `copy paste the crown-theme.omp.json` (terminal > crown-theme.omp.json)

### Initialize oh my posh theme
- goto `.zshrc` and paste the following
- `eval "$(oh-my-posh init zsh --config ~/.poshthemes/crown-theme.omp.json)"`


#### You are done!