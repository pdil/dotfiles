
#### zsh config
cp .zshrc ~

#### git completion
curl -o git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
curl -o _git https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh

mkdir -p ~/.zsh/functions
cp git-completion.bash ~/.git-completion.bash
cp _git ~/.zsh/functions/_git

rm git-completion.bash
rm _git

#### set defaults

# show build duration in Xcode
defaults write com.apple.dt.Xcode ShowBuildOperationDuration YES

# use BBEdit as default text editor
defaults write com.apple.LaunchServices/com.apple.launchservices.secure LSHandlers -array-add '{LSHandlerContentType=public.plain-text;LSHandlerRoleAll=com.barebones.bbedit;}'

#### enable Touch ID for sudo
sh scripts/enable_tid_sudo.sh

#### install Homebrew packages
sh scripts/homebrew.sh

#### finish
echo "Done."
