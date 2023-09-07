#!/bin/bash

# show build duration in Xcode
defaults write com.apple.dt.Xcode ShowBuildOperationDuration YES

# allow Cmd+Ctrl+Click drag gesture anywhere on windows
defaults write -g NSWindowShouldDragOnGesture -bool true