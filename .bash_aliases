# [ohmyzsh built in aliases](https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/git/git.plugin.zsh)

# customized
# alias la='ls -A'
alias la='ls -a' # this is for exa
alias ni='npm install'
alias home='code ~'
alias reload='source ~/.zshrc'
alias op='code .'
alias nvf='nvim $(fzf)'
alias nv='nvim'
alias vi='cd ~/.config/nvim/ && nv'

# command line tools
alias ls='exa -1F --color=always'
alias tree='exa --tree -I node_modules'
alias cat='batcat'
alias fhist='history | fzf'

# git
alias gst='git status'
alias glo='git log --oneline'
alias gcm='git commit -m '
alias co='git checkout'
alias gcb='git checkout -b '
alias con=gcb
alias fetch='git fetch origin'
alias push='git push '
alias pull='git pull'
alias hreset='git reset --hard'
alias revert='git reset --soft HEAD~1'
alias gbc='git branch --show-current'

alias windows='cd ~/../../mnt/c/Users/fdien/code'
alias kboard='cd ~/../../mnt/c/Users/fdien/qmk_firmware/keyboards/ergodox_ez/keymaps/slag_ergodox/ && nv keymap.c'

help() {
   COMMAND=$1 
   $COMMAND --help >> zx.txt && cat zx.txt && rm zx.txt
}

cocf() {
    commit=$(glo | fzf)
    hash=${commit%% *}
    co $hash
}

# takes a branch name of `feature/####/<component>/<description>`
# and gives prompts to execute: fix(CAMPFIRE-####): <MESSAGE>
gcmm() {
    TICKET=$(git branch --show-current | grep -Eo '\/[0-9]+\/' | grep -Eo '[0-9]+')
    HEAD=$1
    BODY=$2
    ALL_ARGS=("$@");
    REST=("${ALL_ARGS[@]:2}") # get all args after first 2
    echo 'What type of commit is this (fix, feat, build, chore, ci, docs, style, refactor, perf, test)?'
    read TYPE
    gcm "$TYPE(CAMPFIRE-$TICKET): $HEAD" -m $BODY $REST
}

findFile() {
    find . -type d -name node_modules -prune -o -name .git -prune -o -iname $1 -print
}

logit() {
    $@ 2>&1 | tee log.txt
}
