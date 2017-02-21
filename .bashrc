export PS1='\w \$ '
export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"

shopt -s histverify

alias ls="gls -F --group-directories-first"
alias s="ls"
alias t="tmux new bash"

alias ,tcp="lsof -i TCP -s TCP:LISTEN -n -P"

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
PATH+=':/Users/monticellie/.gem/ruby/2.0.0/bin:'
