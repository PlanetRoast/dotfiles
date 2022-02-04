###############################################################################
#                             PlanetRoast .bashrc                             #
###############################################################################

# Assorted
# -----------------------------------------------------------------------------
export TERM="xterm-256color"
export VISUAL=vim
export EDITOR="$VISUAL"

# Software flow control disabled
# -----------------------------------------------------------------------------
# A legacy feature which 'pauses' the flow of data in an application.  It's only
# a problem because the keyboard shortcut happens to be `ctrl s` which I use all
# the time in gui apps. Hit this shortcut in a terminal (or Vim) and the screen
# freezes. You can un-freeze it by hitting `ctrl q` but it's easier to just
# disable it.
stty -ixon
