# This tmux statusbar config was created by tmuxline.vim
# on Thu, 16 Mar 2023

set -g status-justify "left"
set -g status "on"
set -g status-left-style "none"
set -g message-command-style "fg=#4c4f69,bg=#e6e9ef"
set -g status-right-style "none"
set -g pane-active-border-style "fg=#e6e9ef"
set -g status-style "none,bg=#e6e9ef"
set -g message-style "fg=#4c4f69,bg=#e6e9ef"
set -g pane-border-style "fg=#e6e9ef"
set -g status-right-length "100"
set -g status-left-length "100"
setw -g window-status-activity-style "none"
setw -g window-status-separator ""
setw -g window-status-style "none,fg=#bcc0cc,bg=#e6e9ef"
set -g status-left "#[fg=#e6e9ef,bg=#4c4f69] #S #[fg=#4c4f69,bg=#e6e9ef,nobold,nounderscore,noitalics]"
set -g status-right "#[fg=#e6e9ef,bg=#e6e9ef,nobold,nounderscore,noitalics]#[fg=#4c4f69,bg=#e6e9ef] %Y-%m-%d  %H:%M #[fg=#4c4f69,bg=#e6e9ef,nobold,nounderscore,noitalics]#[fg=#e6e9ef,bg=#4c4f69] #h "
setw -g window-status-format "#[fg=#bcc0cc,bg=#e6e9ef] #I #[fg=#bcc0cc,bg=#e6e9ef] #W "
setw -g window-status-current-format "#[fg=#e6e9ef,bg=#e6e9ef,nobold,nounderscore,noitalics]#[fg=#4c4f69,bg=#e6e9ef] #I #[fg=#4c4f69,bg=#e6e9ef] #W #[fg=#e6e9ef,bg=#e6e9ef,nobold,nounderscore,noitalics]"
