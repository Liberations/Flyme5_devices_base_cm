import common
import edify_generator

def ModifyBegin(info):
  edify = info.script
  edify.script[0] = \
  '''ifelse(is_mounted("/system"), unmount("/system"));
ui_print("******************************************");
ui_print("* Flyme5 for Mi-4c(Libra)");
ui_print("*");
ui_print("* Romer: Liberation");
ui_print("******************************************");\n''' + edify.script[0]

  return



def AddSuperSU(info):
    SuperSU = info.input_zip.read("META/SuperSU.zip")
    common.ZipWriteStr(info.output_zip, "SuperSU/SuperSU.zip", SuperSU)

    info.script.AppendExtra(('ui_print("{*} Flashing SuperSU");'))
    info.script.AppendExtra(('package_extract_dir("SuperSU", "/tmp/supersu");'))
    info.script.AppendExtra(('run_program("/sbin/busybox", "unzip", "/tmp/supersu/SuperSU.zip", "META-INF/com/google/android/*", "-d", "/tmp/supersu");'))
    info.script.AppendExtra(('run_program("/sbin/busybox", "sh", "/tmp/supersu/META-INF/com/google/android/update-binary", "dummy", "1", "/tmp/supersu/SuperSU.zip");'))
    info.script.AppendExtra(('ui_print("{*} Finish!");'))

def FullOTA_InstallEnd(info):
    ModifyBegin(info)
   # ModifyCommand(info)
   # AddPrompt(info)
    AddSuperSU(info)
