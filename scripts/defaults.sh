#!/bin/bash

# show build duration in Xcode
defaults write com.apple.dt.Xcode ShowBuildOperationDuration YES

# show single touches in Xcode Simulator
defaults write com.apple.iphonesimulator ShowSingleTouches YES

# allow Cmd+Ctrl+Click drag gesture anywhere on windows
defaults write -g NSWindowShouldDragOnGesture -bool YES

# allow Shift+Click minimize button for slow motion animation
defaults write com.apple.dock slow-motion-allowed -bool YES

# allow event details popover when hovering over items in Itsycal event list
defaults write com.mowglii.ItsycalApp ShowEventPopoverOnHover -bool YES
