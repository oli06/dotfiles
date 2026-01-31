- Add `defaults write com.apple.dock expose-group-apps -bool true && killall Dock` to settings for better mission control when using aerospace, see https://nikitabobko.github.io/AeroSpace/guide#a-note-on-mission-control

- Add `ln -s $XDG_CONFIG_HOME/aerospace/aerospace.toml ~/.aerospace.toml` to symlink the aerospace config to the home/.aerospace.toml config path (having it here didn't help since $XDG_CONFIG_HOME is not available to the AeroSpace.app, when starting the app via Raycast.
