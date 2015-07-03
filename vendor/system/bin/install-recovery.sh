#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 15450112 0127acbb8528b6139ee35bf624d81db1091ab9de 12783616 8de08afa3dc6ed294a17268d464206711ed5ba9f
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:15450112:0127acbb8528b6139ee35bf624d81db1091ab9de; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:12783616:8de08afa3dc6ed294a17268d464206711ed5ba9f EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 0127acbb8528b6139ee35bf624d81db1091ab9de 15450112 8de08afa3dc6ed294a17268d464206711ed5ba9f:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
