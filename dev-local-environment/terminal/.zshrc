
# Path to your oh-my-zsh installation.
# === Setup ZSH ===
export ZSH="$HOME/.oh-my-zsh"
plugin=(git)
plugins+=(nvm)
source $ZSH/oh-my-zsh.sh
eval "$(oh-my-posh init zsh --config ~/.poshthemes/crown-theme.omp.json)"

function ud() {
  cd ../home/code
  clear
}
function b-ud() {
  cd ../../root
  clear
}
function pcd() {
   cd ../../mnt/c/Users/Crownie/Desktop/code/
   clear
}
function b-pcd() {
   cd ../../../../../../../root
   clear
}

clear


