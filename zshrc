# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="frisk"
#ZSH_THEME="robbyrussell"
ZSH_THEME="miloshadzic"
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git svn)

# User configuration

#export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"
export PATH="/opt/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/MacGPG2/bin:/usr/texbin:/Applications/SPASS3.5:/Applications/yices-1.0.40/bin:/Users/victordejuan/Documents/ares/src/leap/trunk/bin"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
. ~/.dotfiles/z.sh
alias eclipse="/home/vicdejuan/Documents/Programacion/eclipse/eclipse"
function openpdf {
	if [[ -z $@ ]];
	then
		evince *.pdf 2&>/dev/null &
	else
		evince $@ 2&>/dev/null &
	fi;
}
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
function opendir { nautilus $@ 2&>/dev/null &}
alias nautilus=opendir
alias evince=openpdf
httprep="/media/vicdejuan/TOLAI/Carrera/Apuntes"
sshrep="/home/vicdejuan/Documents/Carrera/Apuntes"
function http_pull {
	if [[ -z $@ ]];
	then
		echo "cd $httprep" && cd  $httprep && git pull && cd "$sshrep" && cd $sshrep && git pull $httprep
	else
		cd $1 && git pull && cd $2 && git pull $1
	fi;
}
export TERM="xterm-256color"
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="frisk"
#ZSH_THEME="robbyrussell"
ZSH_THEME="miloshadzic"
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git svn)

# User configuration

#export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"
export PATH="/opt/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/MacGPG2/bin:/usr/texbin:/Applications/SPASS3.5:/Applications/yices-1.0.40/bin:/Users/victordejuan/Documents/ares/src/leap/trunk/bin"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
. ~/.dotfiles/z.sh
alias eclipse="/home/vicdejuan/Documents/Programacion/eclipse/eclipse"
function openpdf {
	if [[ -z $@ ]];
	then
		evince *.pdf 2&>/dev/null &
	else
		evince $@ 2&>/dev/null &
	fi;
}
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
function opendir { nautilus $@ 2&>/dev/null &}
alias nautilus=opendir
alias evince=openpdf
httprep="/media/vicdejuan/TOLAI/Carrera/Apuntes"
sshrep="/home/vicdejuan/Documents/Carrera/Apuntes"
function http_pull {
	if [[ -z $@ ]];
	then
		echo "cd $httprep" && cd  $httprep && git pull && cd "$sshrep" && cd $sshrep && git pull $httprep
	else
		cd $1 && git pull && cd $2 && git pull $1
	fi;
}
export TERM="xterm-256color"
function ltxmk { latexmk -shell-escape -synctex=1 -pdf -silent -interaction=nonstopmode $@ }
alias sl=ls

export EDITOR=vim

. ~/.zsh_aliases


# OPAM configuration
. /home/vicdejuan/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

function spch_check {
	echo "·Conjecture to prove:"
	cat $@"yes.dfg" | grep conjectures -A -1
	echo -n "Result: "
	spass $@"yes.dfg" | grep beiseite
	echo "·Conjecture to prove:"
	cat $@"no.dfg" | grep conjectures -A -1
	echo -n "Result: "
	spass $@"no.dfg" | grep beiseite
}
function spch {
	color_spass $@"yes.dfg"
	color_spass $@"no.dfg"
}
function multspass {
	file=$(echo $1 | awk -v FS="." '{print $1}')
	cat list.dfg | grep conjectures -B -1 | grep -v conjectures > .template
	# yes file
	aux=/tmp/$file"-yes.dfg"
	cat .template > $aux
	echo "list_of_formulae(conjectures)." >> $aux
	cat $1 >> /tmp/$file"-yes.dfg" >> $aux
	echo "end_of_list." >> $aux
	echo "end_problem." >> $aux
	# no file
	aux=/tmp/$file"-no.dfg"
	cat .template >$aux
	echo "list_of_formulae(conjectures)." >> $aux
	sed -e 's/formula(/formula(not(/' -e 's/)\./))./' $1 >>$aux
	echo "end_of_list." >> $aux
	echo "end_problem." >> $aux
 	spch /tmp/$file"-"
}

function color_spass {


	var_f=$(echo -n "file: "$1"  ->")
	var_aux=$(spass $1 | grep beiseite -A -1 | grep spent -B -1)
	var_r=$(echo $var_aux | awk -v FS=":" '{print $2}' | head -n 1)
	timing=$(echo $var_aux | awk -v FS="spent" '{print $2}' | awk '{print $1}' | tail -n 1)
	st_f_y=$(echo $var_f | grep yes)
	st_f_n=$(echo $var_f | grep no)
	st_r=${var_r%found.}
	if [[ -n $st_f_n ]]; then
		if [[ -n $(echo $st_r | grep Completion) ]]; then
			echo $var_f "\e[32m" $st_r "\e[0m  time:" $timing
		else
			echo $var_f"\e[31m" $st_r "\e[0m  time:" $timing
		fi
	fi
	if [[ -n $st_f_y ]]; then
		if [[ -n $(echo $st_r | grep Proof) ]]; then
			echo $var_f"\e[32m" $st_r "\e[0m  time:" $timing
		else
			echo $var_f"\e[31m" $st_r "\e[0m  time:" $timing
		fi
	fi
}


function ltxmk { latexmk -shell-escape -synctex=1 -pdf -silent -interaction=nonstopmode $@ }
alias sl=ls

export EDITOR=vim

. ~/.zsh_aliases


# OPAM configuration
. /home/vicdejuan/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
