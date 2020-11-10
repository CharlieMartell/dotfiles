# Base16 Styling Guidelines:

base00='#282828' # - ----
base01='#3c3836' # - ---
base02='#504945' # - --
base03='#665C54' # - -
base04='#BDAE93' # - +
base05='#D5C4A1' # - ++
base06='#EBDBB2' # - +++
base07='#FBF1C7' # - ++++
base08='#FB4934' # - red
base09='#FE8019' # - orange
base0A='#FABD2F' # - yellow
base0B='#B8BB26' # - green
base0C='#8EC07C' # - cyan
base0D='#83a598' # - blue
base0E='#D3869B' # - purple
base0F='#D65D0E' # - brown

set -g status-left-length 32
set -g status-right-length 150
set -g status-interval 5

# default statusbar colors
set-option -g status-style fg=$base02,bg=$base00,default

set-window-option -g window-status-style fg=$base03,bg=$base00
set-window-option -g window-status-format " #I #W"

# active window title colors
set-window-option -g window-status-current-style fg=$base0C,bg=$base00
set-window-option -g window-status-current-format " #I #[bold]#W"

# pane border colors
set-window-option -g pane-active-border-style fg=$base0C
set-window-option -g pane-border-style fg=$base03

# message text
set-option -g message-style bg=$base00,fg=$base0C

# pane number display
set-option -g display-panes-active-colour $base0C
set-option -g display-panes-colour $base01

# clock
set-window-option -g clock-mode-colour $base0C

tm_session_name="#[default,bg=$base00,fg=$base0E] #S "
set -g status-left "$tm_session_name"

tm_tunes="#[bg=$base00,fg=$base0D] ♫ #(osascript -l JavaScript ~/.dotfiles/applescripts/tunes.js)"
tm_battery="#[fg=$base0F,bg=$base00] ♥ #(battery)"
tm_date="#[default,bg=$base00,fg=$base0C] %R"
tm_host="#[fg=$base0E,bg=$base00] #h "
set -g status-right "$tm_tunes $tm_battery $tm_date $tm_host"
