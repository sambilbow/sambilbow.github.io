#!/bin/bash

# Install AUR packages
echo "Installing AUR packages: openxr-git, monado-git, libuvc, ultraleap-hand-tracking, arduino..."
yay -S --needed --noconfirm --batchinstall openxr-git monado-git libuvc ultraleap-hand-tracking arduino

# Create directory if it doesn't exist
mkdir -p ~/.config/monado

# Check if files exist
if [[ -f ~/.config/monado/NorthStarCalibration.json ]] && [[ -f ~/.config/monado/config_v0.json ]]; then
    read -p "Monado configuration files already exist. Do you want to overwrite them? [y/N] " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        # Backup old files
        cp ~/.config/monado/NorthStarCalibration.json ~/.config/monado/NorthStarCalibration.json.bak
        cp ~/.config/monado/config_v0.json ~/.config/monado/config_v0.json.bak

        # Download files
        curl -sS https://gist.githubusercontent.com/sambilbow/91e1f794a6c757aa368c17ee8e01a20e/raw/df0dbafc08662a93abaa40dd2dcdc4017af28500/NorthStarCalibration.json -o ~/.config/monado/NorthStarCalibration.json
        curl -sS https://gist.githubusercontent.com/sambilbow/3b7b257b535b3dd6fa7b53ad7e453ed0/raw/eb847feb3776ab8c5203b74da7487d3a2c720e03/config_v0.json -o ~/.config/monado/config_v0.json
        echo "Monado configuration files updated."
    else
        echo "Exiting without updating Monado configuration files."
    fi
else
    # Download files
    curl -sS https://gist.githubusercontent.com/sambilbow/91e1f794a6c757aa368c17ee8e01a20e/raw/df0dbafc08662a93abaa40dd2dcdc4017af28500/NorthStarCalibration.json -o ~/.config/monado/NorthStarCalibration.json
    curl -sS https://gist.githubusercontent.com/sambilbow/3b7b257b535b3dd6fa7b53ad7e453ed0/raw/eb847feb3776ab8c5203b74da7487d3a2c720e03/config_v0.json -o ~/.config/monado/config_v0.json
    echo "Monado configuration files downloaded."
fi


# Check if the North Star calibration file and other environment variables are set in the shell config file
echo "Checking ~/.zshrc for Monado Envrionment Variables"

if grep -q 'export NS_CONFIG_PATH=' ~/.zshrc; then
  echo "NS_CONFIG_PATH is already set in ~/.zshrc"
else
  echo 'export NS_CONFIG_PATH=~/.config/monado/NorthStarCalibration.json # Set path to North Star calibration file.' >> ~/.zshrc
  echo "NS_CONFIG_PATH is set in ~/.zshrc"
fi

if grep -q 'export XRT_COMPOSITOR_DISABLE_DEFERRED=' ~/.zshrc; then
  echo "XRT_COMPOSITOR_DISABLE_DEFERRED is already set in ~/.zshrc"
else
  echo 'export XRT_COMPOSITOR_DISABLE_DEFERRED=true # Keep Monado open even if no apps running.' >> ~/.zshrc
  echo "XRT_COMPOSITOR_DISABLE_DEFERRED is set in ~/.zshrc"
fi

if grep -q 'export XRT_COMPOSITOR_FORCE_XCB=' ~/.zshrc; then
  echo "XRT_COMPOSITOR_FORCE_XCB is already set in ~/.zshrc"
else
  echo 'export XRT_COMPOSITOR_FORCE_XCB=1 # Force an X11 window, thus causing Xwayland.' >> ~/.zshrc
  echo "XRT_COMPOSITOR_FORCE_XCB is set in ~/.zshrc"
fi

if grep -q 'export XRT_COMPOSITOR_XCB_FULLSCREEN=' ~/.zshrc; then
  echo "XRT_COMPOSITOR_XCB_FULLSCREEN is already set in ~/.zshrc"
else
  echo 'export XRT_COMPOSITOR_XCB_FULLSCREEN=1 # Fullscreen variable for X11/Xwayland.' >> ~/.zshrc
  echo "XRT_COMPOSITOR_XCB_FULLSCREEN is set in ~/.zshrc"
fi
# Reload the shell to apply changes
exec zsh