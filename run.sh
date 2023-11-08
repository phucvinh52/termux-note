pkg install root-repo x11-repo -y
termux-change-repo
pkg upgrade
termux-change-repo
pkg install rust golang termux-x11-nightly openssh termux-api -y
