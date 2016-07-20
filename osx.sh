#!/bin/bash

set -x
set -e


# Menu bar: show remaining battery time (on pre-10.8); hide percentage
defaults write com.apple.menuextra.battery ShowPercent -string "NO"
defaults write com.apple.menuextra.battery ShowTime -string "YES"


###############################################################################
# Finder                                                                      #
###############################################################################

# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: allow text selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Enable snap-to-grid for icons on the desktop and in other icon views
#/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
#/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
#/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist

# settings brought in from old boxen config
defaults write -g NSNavPanelExpandedStateForSaveMode -boolean true
defaults write -globalDomain com.apple.mouse.tapBehavior -int 1
#dock
defaults write com.apple.dock autohide 1
defaults write com.apple.dock magnification 1
defaults write com.apple.dock checked-for-launchpad 1 #clear dock
defaults write com.apple.dock tilesize 20
killall Dock

defaults write com.apple.finder AppleShowAllFiles 1
defaults write com.apple.universalaccess HIDScrollZoomModifierMask 262144 #ctrl_mod_zoom
defaults write com.apple.universalaccess closeViewScrollWheelToggle 1

defaults write com.apple.desktopservices DSDontWriteNetworkStores 1
defaults write com.apple.LaunchServices LSQuarantine 0
chflags nohidden ~/Library #unhide library

defaults write -g InitialKeyRepeat -int 15 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)

#screensaver on - bottom right
defaults write com.apple.dock wvous-br-corner -int 5
defaults write com.apple.dock wvous-br-modifier -int 0
###############################################################################
# Screen                                                                      #
###############################################################################

# Save screenshots to the desktop
defaults write com.apple.screencapture location -string "$HOME/Desktop"

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "png"

###############################################################################
# Spotlight                                                                   #
###############################################################################

# Hide Spotlight tray-icon (and subsequent helper)
#sudo chmod 600 /System/Library/CoreServices/Search.bundle/Contents/MacOS/Search
# Disable Spotlight indexing for any volume that gets mounted and has not yet
# been indexed before.
# Use `sudo mdutil -i off "/Volumes/foo"` to stop indexing any volume.
sudo defaults write /.Spotlight-V100/VolumeConfiguration Exclusions -array "/Volumes"
# Change indexing order and disable some file types
# defaults write com.apple.spotlight orderedItems -array \
#   '{"enabled" = 1;"name" = "APPLICATIONS";}' \
#   '{"enabled" = 1;"name" = "SYSTEM_PREFS";}' \
#   '{"enabled" = 1;"name" = "DIRECTORIES";}' \
#   '{"enabled" = 1;"name" = "PDF";}' \
#   '{"enabled" = 0;"name" = "FONTS";}' \
#   '{"enabled" = 1;"name" = "DOCUMENTS";}' \
#   '{"enabled" = 0;"name" = "MESSAGES";}' \
#   '{"enabled" = 0;"name" = "CONTACT";}' \
#   '{"enabled" = 0;"name" = "EVENT_TODO";}' \
#   '{"enabled" = 0;"name" = "IMAGES";}' \
#   '{"enabled" = 0;"name" = "BOOKMARKS";}' \
#   '{"enabled" = 0;"name" = "MUSIC";}' \
#   '{"enabled" = 0;"name" = "MOVIES";}' \
#   '{"enabled" = 0;"name" = "PRESENTATIONS";}' \
#   '{"enabled" = 0;"name" = "SPREADSHEETS";}' \
#   '{"enabled" = 0;"name" = "SOURCE";}'
# Load new settings before rebuilding the index
# killall mds
# Make sure indexing is enabled for the main volume
# sudo mdutil -i on /
# Rebuild the index from scratch
# sudo mdutil -E /
