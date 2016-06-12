import common
import edify_generator
import os
import copy

def RemoveDeviceAssert(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "ro.product" in edify.script[i]:
      edify.script[i] = """ifelse(is_mounted("/system"), unmount("/system"));
ui_print(" ");
ui_print("********************************************");
ui_print("* Galaxy S4/S5 FlymeOS5 Based on CM12.1  ");
ui_print("*              ^.^     Welcome     ^.^");
ui_print("*       http://weibo.com/kwangaho");
ui_print("********************************************");"""
      return

def CopyVariantFiles(input_zip, output_zip, script):

  print "[GaHoKwan CUST] OTA: copy variant files"
  for info in input_zip.infolist():
    if info.filename.startswith("VARIANT/variant/"):
      basefilename = info.filename[8:]
      info2 = copy.copy(info)
      info2.filename = basefilename
      data = input_zip.read(info.filename)
      output_zip.writestr(info2, data)

def MountParam(info):
    edify = info.script
    for i in xrange(len(edify.script)):
        if "mount(" in edify.script[i] and "ext4" and "EMMC" and "system" in edify.script[i]:
            edify.script[i] = """ui_print("Formatting system...");
mount("ext4", "EMMC", "/dev/block/platform/msm_sdcc.1/by-name/system", "/system");
ui_print("Installing system files...");"""
            return

def WriteVariant(info):
    extra_metadata = """ui_print("Update Variant...");
if is_substring("G9009D", getprop("ro.bootloader")) || is_substring("G900R", getprop("ro.bootloader")) then
package_extract_dir("variant/cdma", "/system");
endif;
if is_substring("G900I", getprop("ro.bootloader")) || is_substring("G900P", getprop("ro.bootloader")) then
package_extract_dir("variant/bcmnfc", "/system");
endif;
if is_substring("SCL23", getprop("ro.bootloader")) || is_substring("SC04F", getprop("ro.bootloader")) then
package_extract_dir("variant/felica", "/system");
symlink("/system/lib/libnfc_sony_jni.so", "/system/app/NfcNci/lib/arm/libnfc_sony_jni.so");
set_metadata("/system/bin/mfdp", "uid", 0, "gid", 2000, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");
set_metadata("/system/bin/mfsc", "uid", 0, "gid", 2000, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");
endif;
if is_substring("I9508V", getprop("ro.bootloader")) then
package_extract_dir("variant/jsglte", "/system");
set_metadata("/system/bin/btnvtool", "uid", 0, "gid", 2000, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");
set_metadata("/system/bin/hci_qcomm_init", "uid", 0, "gid", 2000, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");
set_metadata("/system/bin/mm-qcamera-daemon", "uid", 0, "gid", 2000, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:mm-qcamerad_exec:s0");
set_metadata("/system/bin/wcnss_service", "uid", 0, "gid", 2000, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:wcnss_service_exec:s0");
endif;
if is_substring("G9006W", getprop("ro.bootloader")) || is_substring("G9008W", getprop("ro.bootloader")) || is_substring("G9009W", getprop("ro.bootloader")) then
package_extract_dir("variant/duos", "/system");
set_metadata("/system/bin/efsks", "uid", 0, "gid", 2000, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");
set_metadata("/system/bin/ks", "uid", 0, "gid", 2000, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:mdm_helper_exec:s0");
set_metadata("/system/bin/qcks", "uid", 0, "gid", 2000, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");
set_metadata("/system/bin/qmuxd", "uid", 0, "gid", 2000, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:qmuxd_exec:s0");
set_metadata("/system/bin/rfs_access", "uid", 0, "gid", 2000, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:rfs_access_exec:s0");
set_metadata("/system/bin/rild", "uid", 0, "gid", 2000, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:rild_exec:s0");
set_metadata("/system/bin/rmt_storage", "uid", 0, "gid", 2000, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:rmt_storage_exec:s0");
endif;"""
    info.script.AppendExtra(extra_metadata);

def Writeboot(info):
    for filename in os.listdir("overlay"):
        if not (filename.find('.img')==-1):
            data=open(os.path.join(os.getcwd(),"overlay",filename)).read()
            common.ZipWriteStr(info.output_zip, filename, data)

    edify = info.script
    for i in xrange(len(edify.script)):
        if "package_extract_file(" in edify.script[i] and "boot.img" in edify.script[i]:
            edify.script[i] = """ui_print("Update Boot image...");
package_extract_file("boot_klte.img", "/dev/block/platform/msm_sdcc.1/by-name/boot");
if is_substring("G900I", getprop("ro.bootloader")) || is_substring("G900P", getprop("ro.bootloader")) then
package_extract_file("boot_kltebcm.img", "/dev/block/platform/msm_sdcc.1/by-name/boot");
endif;
if is_substring("SCL23", getprop("ro.bootloader")) || is_substring("SC04F", getprop("ro.bootloader")) then
package_extract_file("boot_kltejpn.img", "/dev/block/platform/msm_sdcc.1/by-name/boot");
endif;
if is_substring("G9006V", getprop("ro.bootloader")) || is_substring("G9008V", getprop("ro.bootloader")) then
package_extract_file("boot_kltechn.img", "/dev/block/platform/msm_sdcc.1/by-name/boot");
endif;
if is_substring("G9006W", getprop("ro.bootloader")) || is_substring("G9008W", getprop("ro.bootloader")) || is_substring("G9009W", getprop("ro.bootloader")) then
package_extract_file("boot_kltechnduo.img", "/dev/block/platform/msm_sdcc.1/by-name/boot");
endif;
ifelse(is_substring("G9009D", getprop("ro.bootloader")), package_extract_file("boot_k3gduos.img", "/dev/block/platform/msm_sdcc.1/by-name/boot"));
ifelse(is_substring("I9508V", getprop("ro.bootloader")), package_extract_file("boot_jsglte.img", "/dev/block/platform/msm_sdcc.1/by-name/boot"));"""
            return

def InstallSU(info):
    supersu = """set_metadata("/system/etc/supersu/install_su.sh", "uid", 0, "gid", 0, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");
run_program("/system/etc/supersu/install_su.sh");"""
    info.script.AppendExtra(supersu);

def WritePolicyConfig(info):
  try:
    file_contexts = info.input_zip.read("META/file_contexts")
    common.ZipWriteStr(info.output_zip, "file_contexts", file_contexts)
  except KeyError:
    print "warning: file_context missing from target;"

def FullOTA_InstallEnd(info):
    CopyVariantFiles(info.input_zip, info.output_zip, info.script)
    MountParam(info)
    RemoveDeviceAssert(info)
    WritePolicyConfig(info)
    WriteVariant(info)
    InstallSU(info)
    Writeboot(info)
	
def IncrementalOTA_InstallEnd(info):
    RemoveDeviceAssert(info)
    WritePolicyConfig(info)
