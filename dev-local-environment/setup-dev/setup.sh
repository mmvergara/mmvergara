#!/bin/bash

# Check if a username parameter is provided
if [ $# -ne 1 ]; then
  echo "Usage: $0 <username>"
  exit 1
fi

# Extract the username parameter
username="$1"

# Install pip python-lsp-server
echo "# ==================== #"
echo "Installing pip python-lsp-server..."
echo "# ==================== #"
pip install python-lsp-server
echo "# ======= Done ======= #"

# Install Yarn
echo "# ==================== #"
echo "Installing vim-plug..."
echo "# ==================== #"
npm install -g yarn
echo "# ======= Done ======= #"

# Install vim-plug
echo "# ==================== #"
echo "Installing vim-plug..."
echo "# ==================== #"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
clear


# Copy coc-settings.json to the vimfiles directory
# ==================== #
cocSettingsFileLocation="C:/Users/$username/vimfiles/coc-settings.json"
cp "./files/coc-settings.json" $cocSettingsFileLocation
echo "Copied coc-settings.json to $cocSettingsFileLocation"
clear
# ==================== #


# stop here until user presses enter
echo "# ==================== IMPORTANT ==================== #"
read -p "Run gvim and type :PluginInstall and press enter to continue..."
echo "# ==================== IMPORTANT ==================== #"

cd "C:/Users/$username/.vim/bundle/coc.nvim" 
yarn install 
yarn build

exit