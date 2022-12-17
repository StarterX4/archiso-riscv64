#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="archlinuxrv64"
iso_label="ARCH_RISCV64_$(date +%Y%m)"
iso_publisher="StarterX4"
iso_application="Generic Reference RISC-V Arch Linux Live/Rescue Disk"
iso_version="$(date +%Y.%m.%d)"
install_dir="arch"
buildmodes=('iso')
bootmodes=('uefi-riscv64.systemd-boot.esp' 'uefi-riscv64.systemd-boot.eltorito')
arch="riscv64"
pacman_conf="pacman.conf"
airootfs_image_type="erofs"
#airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'arm' '-b' '1M' '-Xdict-size' '1M')
airootfs_image_tool_options=('-zlz4hc,12')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/Installation_guide"]="0:0:755"
  ["/usr/local/bin/livecd-sound"]="0:0:755"
)
