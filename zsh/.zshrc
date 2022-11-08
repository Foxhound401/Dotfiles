# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export PATH="$HOME/.local/bin/tools:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.rvm/scripts/rvm:$PATH"
export ZSH="/home/brody/.oh-my-zsh"
export TERMINAL="st"
export TERMINFO="/usr/share/terminfo"
export EDITOR="nvim"
export READER="zathura"

# export PAGER="vimpager"
# export BROWSER="chromium"
export BROWSER="firefox"
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

export JAVA_HOME="/usr/lib/jvm/java-11-openjdk"
export PATH=$JAVA_HOME/bin:$PATH
export PATH="$PATH:$HOME/.config/composer/vendor/bin"


export PATH="$PATH:$HOME/.scripts/"
export PATH="$PATH:$HOME/.tools/"

export PATH="$PATH:$HOME/.dmenu/"
export PATH="$PATH:$HOME/.screenlayout/"
export PATH="$PATH:$HOME/.cargo/bin:$PATH"
export PATH="$PATH:$HOME/go/bin"
export PATH="$PATH:$HOME/.emacs.d/bin"




export CF_API_TOKEN=api-token
export CF_API_EMAIL="email"
set DEFAULT_USER="brody"

export LC_CTYPE=en_US.UTF-8


# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# NODE_GLOBALS=(`find ~/.nvm/versions/node -maxdepth 3 -type l -wholename '*/bin/*' | xargs -n1 basename | sort | uniq`)
# NODE_GLOBALS+=(node nvm yarn)
#
# _load_nvm() {
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# }
#
# for cmd in "${NODE_GLOBALS[@]}"; do
# eval "function ${cmd}(){ unset -f ${NODE_GLOBALS[*]}; _load_nvm; unset -f _load_nvm; ${cmd} \$@; }"
# done
# unset cmd NODE_GLOBALS
#
# export PATH="$PATH:$HOME/.yarn/bin"

# export NVM_DIR="$HOME/.nvm"
# [ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"
# export PATH="$NVM_DIR/versions/node/v$(<$NVM_DIR/alias/default)/bin:$PATH"

# export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# alias nvm="unalias nvm; [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"; nvm $@"
#
# New Script for better loading time of NVM
# Defer initialization of nvm until nvm, node or a node-dependent command is
# run. Ensure this block is only run once if .bashrc gets sourced multiple times
# by checking whether __init_nvm is a function.

# if [ -s "$HOME/.nvm/nvm.sh" ]; then
#   export NVM_DIR="$HOME/.nvm"
#   [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
#   declare -a __node_commands=('nvm' 'node' 'npm' 'yarn' 'gulp' 'grunt' 'webpack')
#   function __init_nvm() {
#     for i in "${__node_commands[@]}"; do unalias $i; done
#     . "$NVM_DIR"/nvm.sh
#     unset __node_commands
#     unset -f __init_nvm
#   }
#   for i in "${__node_commands[@]}"; do alias $i='__init_nvm && '$i; done
# fi

# ZSH_THEME="aloy"
ZSH_THEME="spaceship"

SPACESHIP_PROMPT_ORDER=(time user dir host git rust node docker venv conda pyenv kubectl exit_code char exec_time vi_mode line_sep)


plugins=(git colored-man-pages github pip python docker cp docker-compose docker-machine zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i

# youtube-dl
mp3 () {
	youtube-dl --ignore-errors -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0 -o '~/Music/youtube/%(title)s.%(ext)s' "$1"
}

mp3p () {
	youtube-dl --ignore-errors -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0 -o '~/Music/youtube/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' "$1"
}

yv () {
	youtube-dl --ignore-errors -o '~/Videos/youtube/%(title)s.%(ext)s' "$1"
}

yp () {
	youtube-dl --ignore-errors -o '~/Videos/youtube/%(playlist)s/%(title)s.%(ext)s' "$1"
}

ipp () {
  ip -4 addr show wlp3s0 | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" | awk 'NR==1{ print $1 }'
}

# tools
alias soff='xset dpms force off'
alias v='vim'
alias vim='nvim'
alias nnv='vim -u NONE'
alias sv='sudo nvim'
alias xcp='xclip -sel clipboard'
alias publicip='curl icanhazip.com'
alias cheat='cht.sh'
alias rln='sudo systemctl reload nginx.service'
alias ptype='typerace p'
alias start-android-emulator='emulator -avd Pixel_4_API_30 &!'
alias bosca='/opt/adobe-air-sdk/bin/adl -nodebug ~/Tools/Boscaceoil/share/META-INF/AIR/application.xml ~/Tools/Boscaceoil/share/ &!'
alias calendar='khal calendar'
alias vitrans='trans :vi '
alias rutrans='trans :ru '
alias cpk='cat ~/.ssh/id_rsa.pub | xcp'
alias toggletouch='xinput set-prop 16 178 0'
alias z='zathura'
alias bctl='bluetoothctl'
alias lp='lpass show --password -c'
alias flarecreate='flarectl dns create --type CNAME --content @ --zone eastplayers.io --proxy true --name '
alias guu='git push |& grep "\-\-set\-upstream" | sh'
alias stq='steampipe query'
alias gdvim='nvim --listen godothost .'
# alias rc="rustc"

# remapping
alias ww='cd /usr/share/nginx/www/'
alias deviant='cd /usr/share/nginx/www/deviant'
alias wl="nmcli device wifi list"
alias wcc="nmcli device wifi connect"
alias wd="nmcli device disconnect"
alias wpw="nmcli -s -g 802-11-wireless-security.psk connection show "
alias dimgs="docker images"
alias cp="rsync -P -r"
alias cls="clear"
alias du-check="du -hsx * | sort -rh | head -10"
alias du-var="du -a /var | sort -n -r | head -10"
alias dcompose="docker compose"
alias dok="docker"
alias ipconfig="ip -4 addr show wlp3s0"
alias gitlog="git log --all --decorate --oneline --graph"
alias status="sudo systemctl status"
alias start="sudo systemctl start "
alias restart="sudo systemctl restart "
alias stop="sudo systemctl stop "
alias reload="sudo systemctl restart "
alias dif='git diff .'
# alias ls='lsd'
alias la='ls -la'
alias lt='ls --tree'
alias szsh='source ~/.zshrc'
alias yt='yarn start'
alias ys='sudo yarn serve'
alias lsabd="adb devices"
alias cast=" scrcpy -s"
alias yo='git add -A && git commit -m "$(curl -s whatthecommit.com/index.txt)" '
alias pr='hub pull-request -m "$(curl -s whatthecommit.com/index.txt)"'
alias vol='alsamixer'
alias nb='newsboat'
alias apl='ansible-playbook'
alias se='fzf'
alias cr='cargo run'
alias lk='cd ~/Work/lukas/'
alias kf='kubectl --kubeconfig=$HOME/.kube/forthscale '

# I know this is unnecessary but I just dont' want to config thif in git
alias gpr='git pull --rebase'

alias xampp='sudo /opt/lampp/lampp'
alias show-key="xev | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf \"%-3s %s\n\", $5, $8 }'"

alias pixio='cd ~/pixio'

alias php='php7'
alias composer='php ~/Tools/composer.phar'
alias dc='docker-compose'
alias doc='docker'

alias sheet='sc-im '
alias artisan='php artisan '
alias tshark='tshark --color'
alias feh='feh --draw-filename'

# Folder fast travel
alias piz="cd ~/potato-salad/pizza-adventure/"
alias tt="ttyper"
alias reactnative-frontend="cd ~/CapstoneProject/react-native-boilerplate"
alias api-nodejs="cd ~/CapstoneProject/nodejs-boilerplate"
alias web-capstone="cd ~/CapstoneProject/web-admin"
alias playbooks='cd ~/pixio/ansible-playbooks/'
alias stardewMods='cd ~/.local/share/Steam/steamapps/common/Stardew\ Valley/Mods/'
alias nav='cd /etc/nginx/sites-available/'
alias nx='cd /etc/nginx/sites-available/'
alias lr='cd ~/Labs/lab-rust'
alias k8s='cd /usr/share/nginx/www/hhg-dev-ops/k8s-cluster-config/'
alias lgo='cd /home/brody/Labs/lab-go'
alias pg='cd ~/Work/poppy-faire-game'
alias pb='cd ~/Work/poppy-faire-lib'
alias dn='cd /home/brody/Work/eastplayers/danang-cns-mobile'
alias ph='cd /home/brody/Work/learning'
alias fo='cd /home/brody/Work/forthscale'
alias pp='cd /home/brody/Work/pp'

# parcel-perform
alias aws-prod="export AWS_PROFILE=AdministratorAccess-819159351269"
alias aws-artemis="export AWS_PROFILE=AdministratorAccess-009115022090"
alias aws-anorok="export AWS_PROFILE=AdministratorAccess-751440698033"
alias aws-orion="export AWS_PROFILE=AdministratorAccess-145228830231"
alias aws-cod="export AWS_PROFILE=AdministratorAccess-589431930217"
alias aws-iris="export AWS_PROFILE=AdministratorAccess-723734408185"
alias aws-hydra="export AWS_PROFILE=AdministratorAccess-319811653217"
alias tf5='terraform-binary'
alias tc-up="sudo tailscale up --accept-routes=true --accept-dns=true"
alias tc-down="sudo tailscale down"

# config files
alias zshrc='vim ~/.zshrc'
alias bashrc='vim ~/.bashrc'
alias i3config='vim ~/.config/i3/config'
alias polybarrc='vim ~/.config/polybar/'
alias vimrc='vim ~/.config/nvim/'
alias vplug='vim ~/.config/nvim/plug.vim'
alias tmuxconf='vim ~/.tmux.conf.local'
alias alconf='vim ~/.config/alacritty/alacritty.yml'
alias asbhosts='sudo vim /etc/ansible/hosts'
alias asbconf='sudo vim /etc/ansible/ansible.cfg'
alias phpini='sudo vim /etc/php73/php.ini'
alias picomconf='sudo vim ~/.config/picom/picom.conf'
alias sshrc='vim ~/.ssh/config'
alias sshrc='kitty +kitten ssh'
alias gdf='gitdf.sh '
alias ter='terraform'
alias dm='docker-machine'


# kubectl alias
alias kubectl='kubecolor'
alias k='kubectl'
alias kgp='k get pod'
alias kgd='k get deploy'
alias kgs='k get svc'
alias kgn='k get nodes'
alias kgi='k get ingress'
alias kgcm='k get cm'
alias kd='k describe'
alias kg='k get'
alias kge="k get events --sort-by='.metadata.creationTimestamp' | tail -8"

alias kc-anorok="k config use-context arn:aws:eks:ap-southeast-1:751440698033:cluster/anorok-bBZTfjjv"
alias kc-cod="k config use-context arn:aws:eks:ap-southeast-1:589431930217:cluster/cod-3XjQecxM"
# alias kc-hydra="k config use-context "
alias kc-prod="k config use-context arn:aws:eks:eu-west-1:819159351269:cluster/production-PhKBWYLW"
alias kc-artemis="k config use-context arn:aws:eks:ap-southeast-1:009115022090:cluster/artemis-Rb31070c"
alias kc-orion="k config use-context arn:aws:eks:ap-southeast-1:145228830231:cluster/orion-RiatABoo"
alias kc-iris="k config use-context arn:aws:eks:ap-southeast-1:723734408185:cluster/iris-EFeXb6hJ"
alias kc-internal="k config use-context arn:aws:eks:ap-southeast-1:819159351269:cluster/internal-tools-UmO5ZSAO"
alias kc-hydra="k config use-context arn:aws:eks:ap-southeast-1:319811653217:cluster/hydra-Fvm050k9"
alias tf='terraform'

alias labk8s='cd ~/Labs/lab-k8s/'

# ssh
alias sshconfig='vim ~/.ssh/config'

eval $(thefuck --alias)

# alias diff='colordiff'

# books
alias brust='zathura ~/Books/Programming Languages/Rust/programming-rust-jim-blandy-orendorff.pdf'
alias dkstat="docker ps | awk '{ print \$10\"   \"\$11 }' | awk -F: '{ print \$2 }' "
alias gcpipeline="gaa && gcmsg 'update build pipeline' --no-verify && git pull && git push"

alias deviant="docker build -t eastplayers/deviant -f /usr/share/nginx/www/deviant/deployments /usr/share/nginx/www/deviant/"

alias swagger="docker run --rm -it  --user $(id -u):$(id -g) -e GOPATH=$HOME/go:/go -v $HOME:$HOME -w $(pwd) quay.io/goswagger/swagger"
alias espd="cd /usr/share/nginx/www/esp-dev-ops-github/kustomize/"

# insult you when you type it wrong
if [ -f /etc/bash.command-not-found ]; then
    . /etc/bash.command-not-found
fi

. /opt/asdf-vm/asdf.sh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/terraform terraform
