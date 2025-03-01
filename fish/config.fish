if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx EDITOR nvim
set -gx BROWSER firefox
set -gx ELECTRON_TRASH gio

set -gx npm_config_prefix "$HOME/.local"

fish_add_path ~/.cargo/bin
fish_add_path ~/.local/bin

# opam configuration
# source "$HOME/.opam/opam-init/init.fish" >/dev/null 2>/dev/null; or true

# ssh-agent
if not command pgrep -u "$USER" ssh-agent >/dev/null
    ssh-agent -c >"$XDG_RUNTIME_DIR/ssh-agent.env"
end

if not set -q SSH_AUTH_SOCK
    source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
end

abbr -a hx helix

if command -v exa >/dev/null
    abbr -a l exa
    abbr -a ls exa
    abbr -a ll 'exa -l'
    abbr -a lll 'exa -la'
else
    abbr -a l ls
    abbr -a ll 'ls -l'
    abbr -a lll 'ls -la'
end

# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end

COMPLETE=fish jj | source
zoxide init fish | source
starship init fish | source
