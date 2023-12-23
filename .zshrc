# Path to your oh-my-zsh installation.
export ZSH=/home/oberger/.oh-my-zsh

# Fix color issues.
TERM='xterm-256color'

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="frisk"
#
# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git sudo)

# User configuration
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/oberger/.local/bin:/snap/nvim/current/usr/bin"
source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='vim'

# Aliases
alias cdp="cd $HOME/Projects"

# virtualenvwrapper
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export WORKON_HOME=$HOME/.virtualenvs
[ -f $HOME/.local/bin/virtualenvwrapper.sh ] && source $HOME/.local/bin/virtualenvwrapper.sh

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# CUDA
export CUDA_HOME=/usr/local/cuda
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib64:/usr/local/cuda/extras/CUPTI/lib64
export PATH=$PATH:$CUDA_HOME/bin

# ROS
[ -f /opt/ros/foxy/setup.zsh ] && \
  export ROS_DOMAIN_ID=30 && \
  export TURTLEBOT3_MODEL=burger && \
  source /opt/ros/foxy/setup.zsh && \
  echo "Sourced ROS2 Foxy. Domain ID: $ROS_DOMAIN_ID"
