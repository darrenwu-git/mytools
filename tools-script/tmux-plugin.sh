#!/bin/bash

# The tmux plugin for restore tmux sessions after reboot
# https://github.com/tmux-plugins/tpm
# https://github.com/tmux-plugins/tmux-resurrect
echo "Installing tmux plugin"
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

[ -d ~/.tmux/plugins ] || mkdir -p ~/.tmux/plugins
cat << EOF > ~/.tmux.conf
# List of plugins
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-sensible'

# Other examples:
# set -g @plugin 'github_username/plugin_name'
# set -g @plugin 'git@github.com/user/plugin'
# set -g @plugin 'git@bitbucket.com/user/plugin'

# tmux-resurrect
set -g @plugin 'tmux-plugins/tmux-resurrect'

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run -b '~/.tmux/plugins/tpm/tpm'
EOF

tmux source ~/.tmux.conf

echo "Install complete!"
echo "Hit prefix + I to fetch the plugin and source it. You should now be able to use the plugin."
echo "prefix + Ctrl-s - save"
echo "prefix + Ctrl-r - restore"
