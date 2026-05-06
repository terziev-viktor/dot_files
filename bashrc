# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi

# Add Flutter, Cargo, and Zig toolchains to PATH for all shells.
if ! [[ "$PATH" =~ "$HOME/.local/flutter/bin" ]]; then
    PATH="$HOME/.local/flutter/bin:$PATH"
fi
if ! [[ "$PATH" =~ "$HOME/.cargo/bin" ]]; then
    PATH="$HOME/.cargo/bin:$PATH"
fi
if ! [[ "$PATH" =~ "$HOME/.local/zig" ]]; then
    PATH="$HOME/.local/zig:$PATH"
fi

export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc
. "$HOME/.cargo/env"

. "$HOME/.secrets"

export PATH="$HOME/.npm-global/bin:$PATH"

# Open zed
alias zed='flatpak run dev.zed.Zed'

