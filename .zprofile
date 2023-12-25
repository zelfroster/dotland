export EDITOR="nvim"
export TERMINAL="foot"
export BROWSER="firefox"

export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$XDG_CONFIG_HOME/zsh/.zsh_history"
export PNPM_HOME="$HOME/.local/bin/pnpm"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export WAKATIME_HOME="$XDG_CONFIG_HOME/wakatime"
export PYTHONSTARTUP="$XDG_CONFIG_HOME/.pythonrc"
export LESSHISTFILE=-
export PATH=$PATH:$HOME/.local/bin
export GTK_THEME=Adwaita:dark
export GTK2_RC_FILES=/usr/share/themes/Adwaita-dark/gtk-2.0/gtkrc
export QT_STYLE_OVERRIDE=adwaita-dark

# MPD daemon start (if no other user instance exists)
# [ ! -s ~/.config/mpd/pid ] && mpd

# Run the startx command if the tty is tty1
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec Hyprland
fi

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
