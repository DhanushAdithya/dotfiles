if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"

# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

plugins=(
	git
	zsh-autosuggestions
    virtualenv
)

fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

source $ZSH/oh-my-zsh.sh

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias vi="nvim"
alias cls="clear"
alias ch="cd ~"
alias vnv="cd ~/.config/nvim && vi && cd -"
alias vz="vi ~/.zshrc"
alias zb="exec zsh"
alias :q="exit"
alias df='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
source ~/.aliases
mk(){mkdir $1 && cd $1}
cc(){gcc $1 -o $1.out && ./$1.out && rm $1.out}
cppc(){g++ $1 -o $1.out && ./$1.out && rm $1.out}
jcc(){
    filename=$(echo $1 | cut -f 1 -d '.')
    javac $1 && java $filename && rm $filename.class
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# if [ -f '/c/Users/sdhan/anaconda3/Scripts/conda.exe' ]; then
#     eval "$('/c/Users/sdhan/anaconda3/Scripts/conda.exe' 'shell.zsh' 'hook')"
# fi
# <<< conda initialize <<<

