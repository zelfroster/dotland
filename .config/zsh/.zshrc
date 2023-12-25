# zsh Options
# setopt case_glob              # Use Case-Insensitve Globbing.
setopt globdots                 # Glob Dotfiles As Well.
setopt extendedglob             # Use Extended Globbing.
setopt interactivecomments	# Ignore lines prefixed with '#'

# Completion Options.
setopt complete_in_word         # Complete From Both Ends Of A Word.
setopt always_to_end            # Move Cursor To The End Of A Completed Word.
#setopt path_dirs                # Perform Path Search Even On Command Names With Slashes.
setopt auto_menu                # Show Completion Menu On A Successive Tab Press.
#setopt auto_list                # Automatically List Choices On Ambiguous Completion.
#setopt auto_param_slash         # If Completed Parameter Is A Directory, Add A Trailing Slash.
#setopt menu_complete            # Do Not Autoselect The First Completion Entry.

# History Management
HISTFILE=$ZDOTDIR/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt hist_ignore_all_dups
setopt extended_history          # record timestamp of command in HISTFILE
setopt hist_expire_dups_first    # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups          # Don't record an entry that was just recorded again
setopt hist_find_no_dups         # Do not display a line previously found
#setopt hist_ignore_space         # ignore commands that start with space
setopt inc_append_history        # add commands to HISTFILE in order of execution

# Keybindings and enable backward search
bindkey -v
bindkey '^R' history-incremental-search-backward

# Added by compinstall
zstyle :compinstall filename '/home/zel/.zshrc'
autoload -Uz compinit
compinit

# Source Files
source $ZDOTDIR/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZDOTDIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZDOTDIR/custom/aliases.zsh
if [[ "$TERM_PROGRAM" != "vscode" ]]; then
	source $ZDOTDIR/custom/fancy.zsh
fi
source $ZDOTDIR/custom/lficons.zsh

# Better Url Management
autoload -Uz url-quote-magic
zle -N self-insert url-quote-magic

# Find dir
fcd() {
  cd "$(find -type d | fzf)"
}

# Start Starship
eval "$(starship init zsh)"

# Remove Underline From Paths
(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

# Load nvm
export NVM_DIR="$XDG_CONFIG_HOME/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
