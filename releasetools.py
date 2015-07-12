import common
import edify_generator
import os

def Writeboot(info):
    for filename in os.listdir("overlay"):
        if not (filename.find('.img')==-1):
            data=open(os.path.join(os.getcwd(),"overlay",filename)).read()
            common.ZipWriteStr(info.output_zip, filename, data)

    extra_img_flash = """ui_print("Update Boot image...");
package_extract_file("klte.img", "/tmp/klte.img");
package_extract_file("kltexx.img", "/tmp/kltexx.img");
package_extract_file("kltechn.img", "/tmp/kltechn.img");
package_extract_file("kltekdi.img", "/tmp/kltekdi.img");
package_extract_file("kltespr.img", "/tmp/kltespr.img");
set_metadata("/system/flash_boot", "uid", 0, "gid", 0, "mode", 0755);
run_program("/system/flash_boot");"""
    info.script.AppendExtra(extra_img_flash);

def RemoveCount(info):
    remove_Count = """mount("ext4", "EMMC", "/dev/block/platform/msm_sdcc.1/by-name/userdata", "/data");
delete("/data/system/count");"""
    info.script.AppendExtra(remove_Count);

def InstallSU(info):
    supersu = """set_metadata("/system/etc/supersu/install_su.sh", "uid", 0, "gid", 0, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");
run_program("/system/etc/supersu/install_su.sh");"""
    info.script.AppendExtra(supersu);

def UpdatePerm(info):
    extra_Perm = """set_metadata_recursive("/system/etc/init.d", "uid", 0, "gid", 2000, "dmode", 0755, "fmode", 0755, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");
set_metadata("/system/etc/init.d", "uid", 0, "gid", 0, "mode", 0755, "capabilities", 0x0, "selabel", "u:object_r:system_file:s0");"""
    info.script.AppendExtra(extra_Perm);

def WritePolicyConfig(info):
  try:
    file_contexts = info.input_zip.read("META/file_contexts")
    common.ZipWriteStr(info.output_zip, "file_contexts", file_contexts)
  except KeyError:
    print "warning: file_context missing from target;"

def FullOTA_InstallEnd(info):
    WritePolicyConfig(info)
    RemoveCount(info)
    InstallSU(info)
    Writeboot(info)
	
def IncrementalOTA_InstallEnd(info):
    RemoveCount(info)
    UpdatePerm(info)
