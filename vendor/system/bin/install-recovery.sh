#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 15577088 67b56bc8458bef75a7593f93d3fbcc837b9c8850 12843008 0d0d157a3dd2ade217f736b61ef57714d36bb251
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:15577088:67b56bc8458bef75a7593f93d3fbcc837b9c8850; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:12843008:0d0d157a3dd2ade217f736b61ef57714d36bb251 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 67b56bc8458bef75a7593f93d3fbcc837b9c8850 15577088 0d0d157a3dd2ade217f736b61ef57714d36bb251:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
