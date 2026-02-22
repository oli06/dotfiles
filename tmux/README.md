# Introduction

tmux uses sessions (tmux ls to list all sessions) that you can attach to. A session consists of 1 to n windows (listed in the statusbar). Each window consists of 1 to n panes.

## Sessions
- You can attach or detach to / from sessions.
- Use tmux new or tmux new -sNAME to create a new session (with name)
- Use tmux new -AsName to attach to an existing session named NAME or otherwise create a new session with name NAME.
- Detach from a session using C-b d
- Attach to a session using tmux attach or tmux attach -tName (attaches to the most recently used session or to a named session)
- Renaming a session using C-b $

## Help
- Use C-b ? to open a list of available tmux commands

## Commandline
- Use C-b : to open a single line commandline prefix with tmux to run tmux commands without interrupting the current pane's content

## Windows
A session consists of 1 to n windows that are listed in the statusbar
- Create a new window using C-b c or :neww (equivalent to tmux neww or tmux new-window)
- Add arguments -n for naming, -t for index 

### Panes / Splitting windows
- C-b % to split vertically
- C-b " to split horizontally
- C-b x or exit or C-d to close a pane (C-b x requires y to confirm)

### Switch between windows
- C-b i to switch to window with index i
- C-b n, C-b p changes to the next and previous window

### Switch between panes
- C-b UP, C-b DOWN C-b LEFT, C-b RIGHT to switch vertically / horizontally between panes. C-b DOWN on a pane at the bottom of the window will cycle to the window at the top.
- C-b o to move between panes using pane index (top left is 0, bottom right is max number)
- C-b q prints the pane index

### Pane resizing
- Panes can be resized using C-b H, J, K and L (for 5 padding left, bottom, top, right)


## Copy mode / Copy text
- To enter copy mode press C-b [
- To paste the current buffer press C-b ]
- During copy mode, vim keybindings can be used to move around and select (v), yank, quit, etc. 
- Using C-b = opens the tree of latest buffers

## Search
- C-b f searches for visible text in all panes

## Plugins
- Using TPM for plugins (github.com/tmux-plugins/tpm)
- Use C-b I (uppercase I) for automatic installation of plugins after they were added to the `tmux.conf` file
