#
# tmux-aliases.sh
#

# Create a new tmux session
alias tmux-create='tmux new-session -s'

# Attach to a session (default: latest if no name given)
tmux-attach() {
  if [ -n "$1" ]; then
    tmux attach -t "$1"
  else
    tmux attach
  fi
}

# List all tmux sessions
alias tmux-list='tmux ls'

# Kill a tmux session by name
tmux-kill() {
  if [ -z "$1" ]; then
    echo "Usage: tmux-kill <session-name>"
  else
    tmux kill-session -t "$1"
  fi
}

# Kill all tmux sessions
alias tmux-kill-all='tmux ls 2>/dev/null | cut -d: -f1 | xargs -n1 tmux kill-session -t'

# Rename a tmux session
tmux-rename() {
  if [ $# -ne 2 ]; then
    echo "Usage: tmux-rename <old-name> <new-name>"
  else
    tmux rename-session -t "$1" "$2"
  fi
}

