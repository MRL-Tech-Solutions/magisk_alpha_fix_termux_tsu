#!/data/data/com.termux/files/usr/bin/bash
# apply patch to tsu in Termux

# Install required packages if not installed
pkg install root-repo
pkg install -y tsu patch

# Download and apply the patch
curl -sL https://raw.githubusercontent.com/Alexjr2/magisk_alpha_fix_termux_tsu/main/tsu.patch | patch $PREFIX/bin/tsu -p0

echo "Patch applied successfully to $PREFIX/bin/tsu"
