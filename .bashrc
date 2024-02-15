Created by:Lucas Tyman 
Created on:Feb-2024 
.bashrc file

 parse_git_branch() {
       git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
       }

       PS1='\[\e[38;5;135m\]Lucas-Tyman\[\e[38;5;27m\]\[\033[33m\]$(parse_git_branch) ↦ \[\e[0m\]'

      PROMPT_DIRTRIM=1 #shows just the current directory name
       alias ls='ls --color=auto'
       alias ll='ls -alF'
       alias la='ls -A'
       alias l='ls -CF'

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH
