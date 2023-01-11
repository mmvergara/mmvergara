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

> To upgrade to the latest version

- `sudo apt-get update`
- `sudo apt-get upgrade`

> Install Brew
- https://brew.sh/

> Install unzip and zsh
- `sudo apt-get install zsh -y`

> Set zsh as default shell
- `chsh -s /usr/bin/zsh`

### Download oh my zsh

https://ohmyz.sh/#install

- open the `.zshrc` file (code .zshrc)
- remove `ZSH_THEME=""`

### Download oh my posh

> Only Download oh my posh don't install themes
> https://ohmyposh.dev/docs/installation/linux

- goto root folder
- `mkdir ~/.poshthemes`
- `cd .poshthemes`
- `touch crown-theme.omp.json`
- `code crown-theme.omp.json`
- `copy paste the crown-theme.omp.json`

### Initialize oh my posh theme

- goto `.zshrc` and paste the following

> Initiate crown theme

- `eval "$(oh-my-posh init zsh --config ~/.poshthemes/crown-theme.omp.json)"`

#### Default Directorries
* cd `../../mnt/c/Users/Crownie/Desktop/code/`
* cd `../home/code`

### Install Nvm and node
install them on this directory
* on root foler
* `mkdir zsh-extensions`
* `cd zsh-extensions`


## Configure Git and Github
git config --global user.email "example@localhost.com"
git config --global user.username "mmvergara"

### Install Github CLI
https://github.com/cli/cli/blob/trunk/docs/install_linux.md

### Generate SSH key then login
`ssh-keygen -t rsa -b 4096 -C your**gmail`
<br/> #=== or ===# <br/>
`ssh-keygen -t ed25519 -C your**gmail`<br/>
`gh auth login`

### Test
`ssh -T git@github.com`

---

#### You are done!