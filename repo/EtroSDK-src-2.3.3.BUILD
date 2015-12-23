package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs",)

EXTERNAL_HDRS = [
                "EtroConfigLib/EtroConfigLib.h",
                "EtroConfigLib/NVSConfigLib.h",
                "EtroConfigLib/NVSConfigStruct.h",
                "EtroNetLib/include/NVSNetLib.h",
                "EtroNetLib/EtroNetLib.h",
                ]

ALL_HDRS = pkg_outs(
            libs = ["libNVSConfigLib.so", "libNVSNetLib.so"],
            hdrs = EXTERNAL_HDRS,
            )


cc_binary(
    linkshared = 1,
    name = "libNVSConfigLib.so",
    srcs = [
    
                "EtroConfigLib/capture.c",
                "EtroConfigLib/channelSetting.c",
                "EtroConfigLib/controlList.c",
                "EtroConfigLib/date.c",
                "EtroConfigLib/ddns.c",
                "EtroConfigLib/eventSetting.c",
                "EtroConfigLib/eventSettingEx.c",
                "EtroConfigLib/ftp.c",
                "EtroConfigLib/motionSetting.c",
                "EtroConfigLib/motionSettingEx.c",
                "EtroConfigLib/network.c",
                "EtroConfigLib/color.c",
                "EtroConfigLib/NVSConfigLib.c",
                "EtroConfigLib/osdSetting.c",
                "EtroConfigLib/passwd.c",
                "EtroConfigLib/port.c",
                "EtroConfigLib/power_led.c",
                "EtroConfigLib/prepost.c",
                "EtroConfigLib/reboot.c",
                "EtroConfigLib/securitySetting.c",
                "EtroConfigLib/smtp.c",
                "EtroConfigLib/trigger.c",
                "EtroConfigLib/user.c",
                "EtroConfigLib/videoSetting.c",
                "EtroConfigLib/vsmp.c",
                "EtroConfigLib/EtroConfigLibStc/NVSConfigLibStc.c",
                "EtroConfigLib/qnap_fix_network.c",

    ] + ALL_HDRS,
    includes = ["EtroConfigLib"],
)

cc_binary(
    linkshared = 1,
    name = "libNVSNetLib.so",
    srcs = [
            
                "EtroNetLib/common.c",
                "EtroNetLib/doStateMachine.c",
                "EtroNetLib/release.c",
                "EtroNetLib/close.c",
                "EtroNetLib/sendAudio.c",
                "EtroNetLib/sendControl.c",
                "EtroNetLib/NVSNetLib.c",
                "EtroNetLib/EtroNetLibStc/NVSNetLibStc.c",
                "EtroNetLib/qnap_fix_network.c",

    ] + ALL_HDRS,
    includes = ["EtroNetLib", "EtroNetLib/include"],
)
