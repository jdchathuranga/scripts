# scripts

# How to use VPN Script (This is only for MacOS)

Requred tools and Settings
  - Enable accesibility for the terminal (This will allow Terminal to control you Computer).
      - Apple Menu > System Preferences > Scurity and Privacy > Privacy > Select Accessibility form left pane > Use + button to add Terminal and make sure terminal is Checked.
  - Install `oath-toolkit`, This is requred to generate TOTP code.
      - Use homebrew (https://formulae.brew.sh/formula/oath-toolkit), `brew install oath-toolkit`
  - Now update the script with your data, make sure you give the excute permission for the script (`chmod +x VPN.sh`)
  - Run the script using terminal `sh VPN.sh`

# How this script works

Script will automate following things, Open VPN connect dialog for defined VPN Connection, fill username, press tab key, generate password based on the given format, fill the password, press enter.

# TODO
check if VPN is already connected before connecting.

# CREDITS
Connecting VPN via the script inspired by this https://superuser.com/questions/809150/how-to-make-scutil-login-to-vpn-with-password-on-mac
