# Luke's config for the Zoomer Shell

# Enable colors and change prompt:
autoload -U colors && colors  # Load colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# History in cache directory:
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/zsh/history"
setopt inc_append_history

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)     # Include hidden files.

### Source plugins
##################
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
#
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
#
neofetch
#
#LC_CTYPE=pt_PT.UTF-8
#LC_ALL=pt_PT.UTF-8
#
alias cat="bat"
alias ccache="pacman -Scc"
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)'
alias git-pull="git pull --rebase"
alias grep='grep --color=auto'
alias ip="ip a"
alias jctl="journalctl -p 3 -xb"
alias keyring="sudo pacman -Sy archlinux-keyring"
alias ll="lsd -lh"
alias ls='lsd --color=auto'
alias nano-fstab="sudo nano /etc/fstab"
alias nano-grub="sudo nano /etc/default/grub"
alias nano-pacman.conf="sudo nano /etc/pacman.conf"
alias pacman='sudo pacman --color auto'
alias pacotes="pacman -Qet"
alias pull="git pull"
alias reload="sudo fc-cache -vf"
alias repo="repo-add ./repo.db.tar.gz ./*"
alias telemovel="simple-mtpfs --device 1 ~/Telemovel"
alias update="sudo pacman -Syyu"
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias update-mirrorlist="sudo reflector -c Portugal -c Spain -c germany -a 12 -p https -p http --sort rate --score 10 --save /etc/pacman.d/mirrorlist"
alias update-mkinitcpio="sudo mkinitcpio -P linux-lts"
alias vcahe="du -sh /var/cache/pacman/pkg/"
alias vm="looking-glass-client -s -m 97"
alias setlocales="sudo localectl set-x11-keymap pt && sudo localectl set-locale LANG=pt_PT.UTF-8"
# check vulnerabilities microcode
alias microcode='grep . /sys/devices/system/cpu/vulnerabilities/*'
#approximation of how old your hardware is
alias howold="sudo lshw | grep -B 3 -A 8 BIOS"
#Recent Installed Packages
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"
alias riplong="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -3000 | nl"
# This will generate a list of explicitly installed packages
alias list="sudo pacman -Qqe"
#This will generate a list of explicitly installed packages without dependencies
alias listt="sudo pacman -Qqet"
# list of AUR packages
alias listaur="sudo pacman -Qqem"
alias tempo="curl wttr.in"