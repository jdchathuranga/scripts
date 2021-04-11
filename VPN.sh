# VPN.sh 
#QR Code secret key
VPNQR=""
#VPN Connection name
VPNName=""
#Username
userName=""
#Password, TOTP Will be appended for the format $password$TOTP
# Example if your password is Abc@123 and TOTP 098765 generated password will be Abc@123098765
password=""

get_user () {
	echo $userName
}

get_pw () {
	echo $password$(oathtool -b --totp $VPNQR)
}

scutil --nc start "$VPNName"

sleep 1
osascript -e "tell application \"System Events\" to keystroke \"$(get_user)\""
osascript -e "tell application \"System Events\" to keystroke key code 48"
osascript -e "tell application \"System Events\" to keystroke \"$(get_pw)\""
osascript -e "tell application \"System Events\" to keystroke return"
sleep 1

exit