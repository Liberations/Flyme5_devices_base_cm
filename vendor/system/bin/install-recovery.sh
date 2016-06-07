#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 48787456 e082dd78b93b6effcbaf5f2696eef9f1de04127f 45780992 e3dcbc88f609df7937461fcaafd899ead887c052
fi

if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:48787456:e082dd78b93b6effcbaf5f2696eef9f1de04127f; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:45780992:e3dcbc88f609df7937461fcaafd899ead887c052 EMMC:/dev/block/bootdevice/by-name/recovery e082dd78b93b6effcbaf5f2696eef9f1de04127f 48787456 e3dcbc88f609df7937461fcaafd899ead887c052:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
