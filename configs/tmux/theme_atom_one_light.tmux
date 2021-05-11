### Source: https://cassidy.codes/blog/2019-08-03-tmux-colour-theme/
# Using atom one light colors:
# https://github.com/jonathanchu/atom-one-light-theme/blob/master/atom-one-light-theme.el

# Colours
# background_color '#FAFAFA' 
# current_line_color '#CECECE'
# foreground_color '#383A42'
# comment_color '#E5E5E6'
# cyan '#0184BC'
# blue '#4078F2'
# green '#50A14F'
# gold '#C18401'
# brown '#986801'
# red_bright '#E45649'
# red_dark '#CA1243'
# purple '#A626A4'

set -g default-terminal "screen-256color"

# window style
set -g window-style bg='#E5E5E6',fg='#383A42'
set -g window-active-style bg='#FAFAFA',fg='#383A42'

# pane border
set -g pane-border-style bg='#E5E5E6',fg='#FAFAFA' 
set -g pane-active-border-style bg='#E5E5E6',fg='#E45649'

# message text
set -g message-style bg='#CECECE',fg='#0184BC'

set -g status-style bg='#CECECE',fg='#A626A4'
set -g status-interval 1

# status left
# are we controlling tmux or the content of the panes?
set -g status-left '#[bg=#383A42]#[fg=#FAFAFA]#{?client_prefix,#[bg=#E45649],} ☺ '

# are we zoomed into a pane?
set -ga status-left '#[bg=#CECECE]#[fg=#E45649] #{?window_zoomed_flag, ↕  ,   }'

# window status
set-window-option -g window-status-style fg='#A626A4',bg=default
set-window-option -g window-status-current-style fg='#E45649',bg='#FAFAFA'

set -g window-status-current-format "#[fg=#CECECE]#[bg=#A626A4]◗#[fg=#383A42]#[bg=#A626A4] #I #W #[fg=#A626A4]#[bg=#CECECE]◗"
set -g window-status-format "#[fg=#383A42]#[bg=#CECECE]#I #W #[fg=#CECECE]◗ "

# status right
set -g status-right '#[fg=#0184BC,bg=#CECECE]◖#[fg=#CECECE,bg=#0184BC] #(tmux-mem-cpu-load -g 5 --interval 2) '
set -ga status-right '#[fg=#E45649,bg=#0184BC]◖#[fg=#CECECE,bg=#E45649] #(uptime | cut -f 4-5 -d " " | cut -f 1 -d ",") '
set -ga status-right '#[fg=#A626A4,bg=#E45649]◖#[fg=#383A42,bg=#A626A4] %a %H:%M:%S #[fg=#E5E5E6]%Y-%m-%d '