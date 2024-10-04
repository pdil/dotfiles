#!/bin/bash

# show build duration in Xcode
defaults write com.apple.dt.Xcode ShowBuildOperationDuration YES

# allow Cmd+Ctrl+Click drag gesture anywhere on windows
defaults write -g NSWindowShouldDragOnGesture -bool YES

# allow Shift+Click minimize button for slow motion animation
defaults write com.apple.dock slow-motion-allowed -bool YES
