shopt -s histverify

if [[ "$(hostname)" == munich ]]; then
	alias ls="ls -F --group-directories-first"
	alias ,tcp="lsof -i TCP -s TCP:LISTEN -n -P"
else 
	alias ls="gls -F --group-directories-first"
	export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"
	PATH+=':/Users/monticellie/.gem/ruby/2.0.0/bin:'	
fi

alias s="ls"
alias t="tmux new bash"


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
