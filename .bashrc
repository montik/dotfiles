shopt -s histverify

if [[ "$(hostname)" == munich ]]; then
	alias ls="ls -F --group-directories-first"
elif [[ "$(hostname)" == M10812.serviceplan.de ]]; then 
	PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"
	PATH+=':/Users/monticellie/.gem/ruby/2.0.0/bin:'	

	alias ls="gls -F --group-directories-first"
	alias ,tcp="lsof -i TCP -s TCP:LISTEN -n -P"

	alias e="touch ~/sr/relaunch-2017/src/typo3conf/ENABLE_INSTALL_TOOL"
	alias c="rm -rfv ~/sr/relaunch-2017/src/typo3conf/autoload ~/sr/relaunch-2017/src/typo3temp"
fi

alias s="ls"
alias t="tmux new bash"

alias ,p='read -s -p "Input your master password: " MASTER && printf "\n" && read -p "For which website: " WEBSITE && printf "\n" && shasum -a 256 - <<< "$MASTER"\#"$WEBSITE" | cut -c 10-20 | pbcopy'

export PS1='\w \$ '

#search history with key up 
# ~/.bashrc
if [[ $- == *i* ]]
then
	bind '"\e[A": history-search-backward'
	bind '"\e[B": history-search-forward'
fi

#bash completion
if [[ -f /usr/local/etc/bash_completion ]]; then
	.  /usr/local/etc/bash_completion
fi

# functions
mountf() {
	mount $@ | grep -E '^/'	
}
