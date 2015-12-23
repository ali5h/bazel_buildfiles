package(default_visibility = ["//visibility:public"])
load("/ext/extension", "pkg_outs")

EXTERNAL_HDRS = [
                "glib/glib.h",
                "glib/glib-object.h",
                "gmodule/gmodule.h",
                ":inc_glib",
                ":inc_gobject",
                ":inc_gio",
]

ALL_HDRS = pkg_outs(
            libs = [
                "libglib-2.0.so",
                "libgthread-2.0.so",
                "libgobject-2.0.so",
                "libgmodule-2.0.so",
                "libgio-2.0.so",
            ],
            hdrs = EXTERNAL_HDRS,
)



genrule(
    name = "inc_gio",
    srcs = [
                
                "gio/gdesktopappinfo.h",
                "gio/gfiledescriptorbased.h",
                "gio/gunixconnection.h",
                "gio/gunixfdlist.h",
                "gio/gunixfdmessage.h",
                "gio/gunixinputstream.h",
                "gio/gunixmounts.h",
                "gio/gunixoutputstream.h",
                "gio/gunixsocketaddress.h",

                "gio/gappinfo.h",
                "gio/gasyncinitable.h",
                "gio/gasyncresult.h",
                "gio/gbufferedinputstream.h",
                "gio/gbufferedoutputstream.h",
                "gio/gcancellable.h",
                "gio/gcharsetconverter.h",
                "gio/gcontenttype.h",
                "gio/gconverter.h",
                "gio/gconverterinputstream.h",
                "gio/gconverteroutputstream.h",
                "gio/gdatainputstream.h",
                "gio/gdataoutputstream.h",
                "gio/gdrive.h",
                "gio/gemblem.h",
                "gio/gemblemedicon.h",
                "gio/gfile.h",
                "gio/gfileattribute.h",
                "gio/gfileenumerator.h",
                "gio/gfileicon.h",
                "gio/gfileinfo.h",
                "gio/gfileinputstream.h",
                "gio/gfileiostream.h",
                "gio/gfilemonitor.h",
                "gio/gfilenamecompleter.h",
                "gio/gfileoutputstream.h",
                "gio/gfilterinputstream.h",
                "gio/gfilteroutputstream.h",
                "gio/gicon.h",
                "gio/ginetaddress.h",
                "gio/ginetsocketaddress.h",
                "gio/ginitable.h",
                "gio/ginputstream.h",
                "gio/gio.h",
                "gio/gioenums.h",
                "gio/gioenumtypes.h",
                "gio/gioerror.h",
                "gio/giomodule.h",
                "gio/gioscheduler.h",
                "gio/giostream.h",
                "gio/giotypes.h",
                "gio/gloadableicon.h",
                "gio/gmemoryinputstream.h",
                "gio/gmemoryoutputstream.h",
                "gio/gmount.h",
                "gio/gmountoperation.h",
                "gio/gnativevolumemonitor.h",
                "gio/gnetworkaddress.h",
                "gio/gnetworkservice.h",
                "gio/goutputstream.h",
                "gio/gresolver.h",
                "gio/gseekable.h",
                "gio/gsimpleasyncresult.h",
                "gio/gsocket.h",
                "gio/gsocketaddress.h",
                "gio/gsocketaddressenumerator.h",
                "gio/gsocketclient.h",
                "gio/gsocketconnectable.h",
                "gio/gsocketconnection.h",
                "gio/gsocketcontrolmessage.h",
                "gio/gsocketlistener.h",
                "gio/gsocketservice.h",
                "gio/gsrvtarget.h",
                "gio/gtcpconnection.h",
                "gio/gthemedicon.h",
                "gio/gthreadedsocketservice.h",
                "gio/gvfs.h",
                "gio/gvolume.h",
                "gio/gvolumemonitor.h",
                "gio/gzlibcompressor.h",
                "gio/gzlibdecompressor.h",
    
    ],
    outs = [
    

                "gio-unix-2.0/gio/gdesktopappinfo.h",
                "gio-unix-2.0/gio/gfiledescriptorbased.h",
                "gio-unix-2.0/gio/gunixconnection.h",
                "gio-unix-2.0/gio/gunixfdlist.h",
                "gio-unix-2.0/gio/gunixfdmessage.h",
                "gio-unix-2.0/gio/gunixinputstream.h",
                "gio-unix-2.0/gio/gunixmounts.h",
                "gio-unix-2.0/gio/gunixoutputstream.h",
                "gio-unix-2.0/gio/gunixsocketaddress.h",

                "glib-2.0/gio/gappinfo.h",
                "glib-2.0/gio/gasyncinitable.h",
                "glib-2.0/gio/gasyncresult.h",
                "glib-2.0/gio/gbufferedinputstream.h",
                "glib-2.0/gio/gbufferedoutputstream.h",
                "glib-2.0/gio/gcancellable.h",
                "glib-2.0/gio/gcharsetconverter.h",
                "glib-2.0/gio/gcontenttype.h",
                "glib-2.0/gio/gconverter.h",
                "glib-2.0/gio/gconverterinputstream.h",
                "glib-2.0/gio/gconverteroutputstream.h",
                "glib-2.0/gio/gdatainputstream.h",
                "glib-2.0/gio/gdataoutputstream.h",
                "glib-2.0/gio/gdrive.h",
                "glib-2.0/gio/gemblem.h",
                "glib-2.0/gio/gemblemedicon.h",
                "glib-2.0/gio/gfile.h",
                "glib-2.0/gio/gfileattribute.h",
                "glib-2.0/gio/gfileenumerator.h",
                "glib-2.0/gio/gfileicon.h",
                "glib-2.0/gio/gfileinfo.h",
                "glib-2.0/gio/gfileinputstream.h",
                "glib-2.0/gio/gfileiostream.h",
                "glib-2.0/gio/gfilemonitor.h",
                "glib-2.0/gio/gfilenamecompleter.h",
                "glib-2.0/gio/gfileoutputstream.h",
                "glib-2.0/gio/gfilterinputstream.h",
                "glib-2.0/gio/gfilteroutputstream.h",
                "glib-2.0/gio/gicon.h",
                "glib-2.0/gio/ginetaddress.h",
                "glib-2.0/gio/ginetsocketaddress.h",
                "glib-2.0/gio/ginitable.h",
                "glib-2.0/gio/ginputstream.h",
                "glib-2.0/gio/gio.h",
                "glib-2.0/gio/gioenums.h",
                "glib-2.0/gio/gioenumtypes.h",
                "glib-2.0/gio/gioerror.h",
                "glib-2.0/gio/giomodule.h",
                "glib-2.0/gio/gioscheduler.h",
                "glib-2.0/gio/giostream.h",
                "glib-2.0/gio/giotypes.h",
                "glib-2.0/gio/gloadableicon.h",
                "glib-2.0/gio/gmemoryinputstream.h",
                "glib-2.0/gio/gmemoryoutputstream.h",
                "glib-2.0/gio/gmount.h",
                "glib-2.0/gio/gmountoperation.h",
                "glib-2.0/gio/gnativevolumemonitor.h",
                "glib-2.0/gio/gnetworkaddress.h",
                "glib-2.0/gio/gnetworkservice.h",
                "glib-2.0/gio/goutputstream.h",
                "glib-2.0/gio/gresolver.h",
                "glib-2.0/gio/gseekable.h",
                "glib-2.0/gio/gsimpleasyncresult.h",
                "glib-2.0/gio/gsocket.h",
                "glib-2.0/gio/gsocketaddress.h",
                "glib-2.0/gio/gsocketaddressenumerator.h",
                "glib-2.0/gio/gsocketclient.h",
                "glib-2.0/gio/gsocketconnectable.h",
                "glib-2.0/gio/gsocketconnection.h",
                "glib-2.0/gio/gsocketcontrolmessage.h",
                "glib-2.0/gio/gsocketlistener.h",
                "glib-2.0/gio/gsocketservice.h",
                "glib-2.0/gio/gsrvtarget.h",
                "glib-2.0/gio/gtcpconnection.h",
                "glib-2.0/gio/gthemedicon.h",
                "glib-2.0/gio/gthreadedsocketservice.h",
                "glib-2.0/gio/gvfs.h",
                "glib-2.0/gio/gvolume.h",
                "glib-2.0/gio/gvolumemonitor.h",
                "glib-2.0/gio/gzlibcompressor.h",
                "glib-2.0/gio/gzlibdecompressor.h",
    ],
    cmd = """

         cp      $(location gio/gdesktopappinfo.h)             $(location gio-unix-2.0/gio/gdesktopappinfo.h)
         cp      $(location gio/gfiledescriptorbased.h)        $(location gio-unix-2.0/gio/gfiledescriptorbased.h)
         cp      $(location gio/gunixconnection.h)             $(location gio-unix-2.0/gio/gunixconnection.h)
         cp      $(location gio/gunixfdlist.h)                 $(location gio-unix-2.0/gio/gunixfdlist.h)
         cp      $(location gio/gunixfdmessage.h)              $(location gio-unix-2.0/gio/gunixfdmessage.h)
         cp      $(location gio/gunixinputstream.h)            $(location gio-unix-2.0/gio/gunixinputstream.h)
         cp      $(location gio/gunixmounts.h)                 $(location gio-unix-2.0/gio/gunixmounts.h)
         cp      $(location gio/gunixoutputstream.h)           $(location gio-unix-2.0/gio/gunixoutputstream.h)
         cp      $(location gio/gunixsocketaddress.h)          $(location gio-unix-2.0/gio/gunixsocketaddress.h)

         cp      $(location gio/gappinfo.h)                    $(location glib-2.0/gio/gappinfo.h)
         cp      $(location gio/gasyncinitable.h)              $(location glib-2.0/gio/gasyncinitable.h)
         cp      $(location gio/gasyncresult.h)                $(location glib-2.0/gio/gasyncresult.h)
         cp      $(location gio/gbufferedinputstream.h)        $(location glib-2.0/gio/gbufferedinputstream.h)
         cp      $(location gio/gbufferedoutputstream.h)       $(location glib-2.0/gio/gbufferedoutputstream.h)
         cp      $(location gio/gcancellable.h)                $(location glib-2.0/gio/gcancellable.h)
         cp      $(location gio/gcharsetconverter.h)           $(location glib-2.0/gio/gcharsetconverter.h)
         cp      $(location gio/gcontenttype.h)                $(location glib-2.0/gio/gcontenttype.h)
         cp      $(location gio/gconverter.h)                  $(location glib-2.0/gio/gconverter.h)
         cp      $(location gio/gconverterinputstream.h)       $(location glib-2.0/gio/gconverterinputstream.h)
         cp      $(location gio/gconverteroutputstream.h)      $(location glib-2.0/gio/gconverteroutputstream.h)
         cp      $(location gio/gdatainputstream.h)            $(location glib-2.0/gio/gdatainputstream.h)
         cp      $(location gio/gdataoutputstream.h)           $(location glib-2.0/gio/gdataoutputstream.h)
         cp      $(location gio/gdrive.h)                      $(location glib-2.0/gio/gdrive.h)
         cp      $(location gio/gemblem.h)                     $(location glib-2.0/gio/gemblem.h)
         cp      $(location gio/gemblemedicon.h)               $(location glib-2.0/gio/gemblemedicon.h)
         cp      $(location gio/gfile.h)                       $(location glib-2.0/gio/gfile.h)
         cp      $(location gio/gfileattribute.h)              $(location glib-2.0/gio/gfileattribute.h)
         cp      $(location gio/gfileenumerator.h)             $(location glib-2.0/gio/gfileenumerator.h)
         cp      $(location gio/gfileicon.h)                   $(location glib-2.0/gio/gfileicon.h)
         cp      $(location gio/gfileinfo.h)                   $(location glib-2.0/gio/gfileinfo.h)
         cp      $(location gio/gfileinputstream.h)            $(location glib-2.0/gio/gfileinputstream.h)
         cp      $(location gio/gfileiostream.h)               $(location glib-2.0/gio/gfileiostream.h)
         cp      $(location gio/gfilemonitor.h)                $(location glib-2.0/gio/gfilemonitor.h)
         cp      $(location gio/gfilenamecompleter.h)          $(location glib-2.0/gio/gfilenamecompleter.h)
         cp      $(location gio/gfileoutputstream.h)           $(location glib-2.0/gio/gfileoutputstream.h)
         cp      $(location gio/gfilterinputstream.h)          $(location glib-2.0/gio/gfilterinputstream.h)
         cp      $(location gio/gfilteroutputstream.h)         $(location glib-2.0/gio/gfilteroutputstream.h)
         cp      $(location gio/gicon.h)                       $(location glib-2.0/gio/gicon.h)
         cp      $(location gio/ginetaddress.h)                $(location glib-2.0/gio/ginetaddress.h)
         cp      $(location gio/ginetsocketaddress.h)          $(location glib-2.0/gio/ginetsocketaddress.h)
         cp      $(location gio/ginitable.h)                   $(location glib-2.0/gio/ginitable.h)
         cp      $(location gio/ginputstream.h)                $(location glib-2.0/gio/ginputstream.h)
         cp      $(location gio/gio.h)                         $(location glib-2.0/gio/gio.h)
         cp      $(location gio/gioenums.h)                    $(location glib-2.0/gio/gioenums.h)
         cp      $(location gio/gioenumtypes.h)                $(location glib-2.0/gio/gioenumtypes.h)
         cp      $(location gio/gioerror.h)                    $(location glib-2.0/gio/gioerror.h)
         cp      $(location gio/giomodule.h)                   $(location glib-2.0/gio/giomodule.h)
         cp      $(location gio/gioscheduler.h)                $(location glib-2.0/gio/gioscheduler.h)
         cp      $(location gio/giostream.h)                   $(location glib-2.0/gio/giostream.h)
         cp      $(location gio/giotypes.h)                    $(location glib-2.0/gio/giotypes.h)
         cp      $(location gio/gloadableicon.h)               $(location glib-2.0/gio/gloadableicon.h)
         cp      $(location gio/gmemoryinputstream.h)          $(location glib-2.0/gio/gmemoryinputstream.h)
         cp      $(location gio/gmemoryoutputstream.h)         $(location glib-2.0/gio/gmemoryoutputstream.h)
         cp      $(location gio/gmount.h)                      $(location glib-2.0/gio/gmount.h)
         cp      $(location gio/gmountoperation.h)             $(location glib-2.0/gio/gmountoperation.h)
         cp      $(location gio/gnativevolumemonitor.h)        $(location glib-2.0/gio/gnativevolumemonitor.h)
         cp      $(location gio/gnetworkaddress.h)             $(location glib-2.0/gio/gnetworkaddress.h)
         cp      $(location gio/gnetworkservice.h)             $(location glib-2.0/gio/gnetworkservice.h)
         cp      $(location gio/goutputstream.h)               $(location glib-2.0/gio/goutputstream.h)
         cp      $(location gio/gresolver.h)                   $(location glib-2.0/gio/gresolver.h)
         cp      $(location gio/gseekable.h)                   $(location glib-2.0/gio/gseekable.h)
         cp      $(location gio/gsimpleasyncresult.h)          $(location glib-2.0/gio/gsimpleasyncresult.h)
         cp      $(location gio/gsocket.h)                     $(location glib-2.0/gio/gsocket.h)
         cp      $(location gio/gsocketaddress.h)              $(location glib-2.0/gio/gsocketaddress.h)
         cp      $(location gio/gsocketaddressenumerator.h)    $(location glib-2.0/gio/gsocketaddressenumerator.h)
         cp      $(location gio/gsocketclient.h)               $(location glib-2.0/gio/gsocketclient.h)
         cp      $(location gio/gsocketconnectable.h)          $(location glib-2.0/gio/gsocketconnectable.h)
         cp      $(location gio/gsocketconnection.h)           $(location glib-2.0/gio/gsocketconnection.h)
         cp      $(location gio/gsocketcontrolmessage.h)       $(location glib-2.0/gio/gsocketcontrolmessage.h)
         cp      $(location gio/gsocketlistener.h)             $(location glib-2.0/gio/gsocketlistener.h)
         cp      $(location gio/gsocketservice.h)              $(location glib-2.0/gio/gsocketservice.h)
         cp      $(location gio/gsrvtarget.h)                  $(location glib-2.0/gio/gsrvtarget.h)
         cp      $(location gio/gtcpconnection.h)              $(location glib-2.0/gio/gtcpconnection.h)
         cp      $(location gio/gthemedicon.h)                 $(location glib-2.0/gio/gthemedicon.h)
         cp      $(location gio/gthreadedsocketservice.h)      $(location glib-2.0/gio/gthreadedsocketservice.h)
         cp      $(location gio/gvfs.h)                        $(location glib-2.0/gio/gvfs.h)
         cp      $(location gio/gvolume.h)                     $(location glib-2.0/gio/gvolume.h)
         cp      $(location gio/gvolumemonitor.h)              $(location glib-2.0/gio/gvolumemonitor.h)
         cp      $(location gio/gzlibcompressor.h)             $(location glib-2.0/gio/gzlibcompressor.h)
         cp      $(location gio/gzlibdecompressor.h)           $(location glib-2.0/gio/gzlibdecompressor.h)


    """
)


genrule(
    name = "inc_gobject",
    srcs = [

                "gobject/gboxed.h",
                "gobject/gclosure.h",
                "gobject/genums.h",
                "gobject/gmarshal.h",
                "gobject/gobject.h",
                "gobject/gobjectnotifyqueue.c",
                "gobject/gparam.h",
                "gobject/gparamspecs.h",
                "gobject/gsignal.h",
                "gobject/gsourceclosure.h",
                "gobject/gtype.h",
                "gobject/gtypemodule.h",
                "gobject/gtypeplugin.h",
                "gobject/gvalue.h",
                "gobject/gvaluearray.h",
                "gobject/gvaluecollector.h",
                "gobject/gvaluetypes.h",
    
    ],
    outs = [

                "glib-2.0/gobject/gboxed.h",
                "glib-2.0/gobject/gclosure.h",
                "glib-2.0/gobject/genums.h",
                "glib-2.0/gobject/gmarshal.h",
                "glib-2.0/gobject/gobject.h",
                "glib-2.0/gobject/gobjectnotifyqueue.c",
                "glib-2.0/gobject/gparam.h",
                "glib-2.0/gobject/gparamspecs.h",
                "glib-2.0/gobject/gsignal.h",
                "glib-2.0/gobject/gsourceclosure.h",
                "glib-2.0/gobject/gtype.h",
                "glib-2.0/gobject/gtypemodule.h",
                "glib-2.0/gobject/gtypeplugin.h",
                "glib-2.0/gobject/gvalue.h",
                "glib-2.0/gobject/gvaluearray.h",
                "glib-2.0/gobject/gvaluecollector.h",
                "glib-2.0/gobject/gvaluetypes.h",
            
    ],
    cmd = """

           cp     $(location gobject/gboxed.h)              $(location glib-2.0/gobject/gboxed.h)
           cp     $(location gobject/gclosure.h)            $(location glib-2.0/gobject/gclosure.h)
           cp     $(location gobject/genums.h)              $(location glib-2.0/gobject/genums.h)
           cp     $(location gobject/gmarshal.h)            $(location glib-2.0/gobject/gmarshal.h)
           cp     $(location gobject/gobject.h)             $(location glib-2.0/gobject/gobject.h)
           cp     $(location gobject/gobjectnotifyqueue.c)  $(location glib-2.0/gobject/gobjectnotifyqueue.c)
           cp     $(location gobject/gparam.h)              $(location glib-2.0/gobject/gparam.h)
           cp     $(location gobject/gparamspecs.h)         $(location glib-2.0/gobject/gparamspecs.h)
           cp     $(location gobject/gsignal.h)             $(location glib-2.0/gobject/gsignal.h)
           cp     $(location gobject/gsourceclosure.h)      $(location glib-2.0/gobject/gsourceclosure.h)
           cp     $(location gobject/gtype.h)               $(location glib-2.0/gobject/gtype.h)
           cp     $(location gobject/gtypemodule.h)         $(location glib-2.0/gobject/gtypemodule.h)
           cp     $(location gobject/gtypeplugin.h)         $(location glib-2.0/gobject/gtypeplugin.h)
           cp     $(location gobject/gvalue.h)              $(location glib-2.0/gobject/gvalue.h)
           cp     $(location gobject/gvaluearray.h)         $(location glib-2.0/gobject/gvaluearray.h)
           cp     $(location gobject/gvaluecollector.h)     $(location glib-2.0/gobject/gvaluecollector.h)
           cp     $(location gobject/gvaluetypes.h)         $(location glib-2.0/gobject/gvaluetypes.h)

    """
)

genrule(
    name = "inc_glib",
    srcs = [
            
                "glib/galloca.h",
                "glib/garray.h",
                "glib/gasyncqueue.h",
                "glib/gatomic.h",
                "glib/gbacktrace.h",
                "glib/gbase64.h",
                "glib/gbitlock.h",
                "glib/gbookmarkfile.h",
                "glib/gcache.h",
                "glib/gchecksum.h",
                "glib/gcompletion.h",
                "glib/gconvert.h",
                "glib/gdataset.h",
                "glib/gdate.h",
                "glib/gdir.h",
                "glib/gerror.h",
                "glib/gfileutils.h",
                "glib/ghash.h",
                "glib/ghook.h",
                "glib/ghostutils.h",
                "glib/gi18n.h",
                "glib/gi18n-lib.h",
                "glib/giochannel.h",
                "glib/gkeyfile.h",
                "glib/glist.h",
                "glib/gmacros.h",
                "glib/gmain.h",
                "glib/gmappedfile.h",
                "glib/gmarkup.h",
                "glib/gmem.h",
                "glib/gmessages.h",
                "glib/gnode.h",
                "glib/goption.h",
                "glib/gpattern.h",
                "glib/gpoll.h",
                "glib/gprimes.h",
                "glib/gqsort.h",
                "glib/gquark.h",
                "glib/gqueue.h",
                "glib/grand.h",
                "glib/grel.h",
                "glib/gregex.h",
                "glib/gscanner.h",
                "glib/gsequence.h",
                "glib/gshell.h",
                "glib/gslice.h",
                "glib/gslist.h",
                "glib/gspawn.h",
                "glib/gstdio.h",
                "glib/gstrfuncs.h",
                "glib/gtestutils.h",
                "glib/gstring.h",
                "glib/gthread.h",
                "glib/gthreadpool.h",
                "glib/gtimer.h",
                "glib/gtree.h",
                "glib/gtypes.h",
                "glib/gunicode.h",
                "glib/gurifuncs.h",
                "glib/gutils.h",
                "glib/gvarianttype.h",
                "glib/gvariant.h",
                "glib/gwin32.h",
                "glib/gprintf.h",

    ],
    outs = [
                "glib-2.0/glib/galloca.h",
                "glib-2.0/glib/garray.h",
                "glib-2.0/glib/gasyncqueue.h",
                "glib-2.0/glib/gatomic.h",
                "glib-2.0/glib/gbacktrace.h",
                "glib-2.0/glib/gbase64.h",
                "glib-2.0/glib/gbitlock.h",
                "glib-2.0/glib/gbookmarkfile.h",
                "glib-2.0/glib/gcache.h",
                "glib-2.0/glib/gchecksum.h",
                "glib-2.0/glib/gcompletion.h",
                "glib-2.0/glib/gconvert.h",
                "glib-2.0/glib/gdataset.h",
                "glib-2.0/glib/gdate.h",
                "glib-2.0/glib/gdir.h",
                "glib-2.0/glib/gerror.h",
                "glib-2.0/glib/gfileutils.h",
                "glib-2.0/glib/ghash.h",
                "glib-2.0/glib/ghook.h",
                "glib-2.0/glib/ghostutils.h",
                "glib-2.0/glib/gi18n.h",
                "glib-2.0/glib/gi18n-lib.h",
                "glib-2.0/glib/giochannel.h",
                "glib-2.0/glib/gkeyfile.h",
                "glib-2.0/glib/glist.h",
                "glib-2.0/glib/gmacros.h",
                "glib-2.0/glib/gmain.h",
                "glib-2.0/glib/gmappedfile.h",
                "glib-2.0/glib/gmarkup.h",
                "glib-2.0/glib/gmem.h",
                "glib-2.0/glib/gmessages.h",
                "glib-2.0/glib/gnode.h",
                "glib-2.0/glib/goption.h",
                "glib-2.0/glib/gpattern.h",
                "glib-2.0/glib/gpoll.h",
                "glib-2.0/glib/gprimes.h",
                "glib-2.0/glib/gqsort.h",
                "glib-2.0/glib/gquark.h",
                "glib-2.0/glib/gqueue.h",
                "glib-2.0/glib/grand.h",
                "glib-2.0/glib/grel.h",
                "glib-2.0/glib/gregex.h",
                "glib-2.0/glib/gscanner.h",
                "glib-2.0/glib/gsequence.h",
                "glib-2.0/glib/gshell.h",
                "glib-2.0/glib/gslice.h",
                "glib-2.0/glib/gslist.h",
                "glib-2.0/glib/gspawn.h",
                "glib-2.0/glib/gstdio.h",
                "glib-2.0/glib/gstrfuncs.h",
                "glib-2.0/glib/gtestutils.h",
                "glib-2.0/glib/gstring.h",
                "glib-2.0/glib/gthread.h",
                "glib-2.0/glib/gthreadpool.h",
                "glib-2.0/glib/gtimer.h",
                "glib-2.0/glib/gtree.h",
                "glib-2.0/glib/gtypes.h",
                "glib-2.0/glib/gunicode.h",
                "glib-2.0/glib/gurifuncs.h",
                "glib-2.0/glib/gutils.h",
                "glib-2.0/glib/gvarianttype.h",
                "glib-2.0/glib/gvariant.h",
                "glib-2.0/glib/gwin32.h",
                "glib-2.0/glib/gprintf.h",
    
    ],
    cmd = """
            
        cp        $(location glib/galloca.h)          $(location glib-2.0/glib/galloca.h)
        cp        $(location glib/garray.h)           $(location glib-2.0/glib/garray.h)
        cp        $(location glib/gasyncqueue.h)      $(location glib-2.0/glib/gasyncqueue.h)
        cp        $(location glib/gatomic.h)          $(location glib-2.0/glib/gatomic.h)
        cp        $(location glib/gbacktrace.h)       $(location glib-2.0/glib/gbacktrace.h)
        cp        $(location glib/gbase64.h)          $(location glib-2.0/glib/gbase64.h)
        cp        $(location glib/gbitlock.h)         $(location glib-2.0/glib/gbitlock.h)
        cp        $(location glib/gbookmarkfile.h)    $(location glib-2.0/glib/gbookmarkfile.h)
        cp        $(location glib/gcache.h)           $(location glib-2.0/glib/gcache.h)
        cp        $(location glib/gchecksum.h)        $(location glib-2.0/glib/gchecksum.h)
        cp        $(location glib/gcompletion.h)      $(location glib-2.0/glib/gcompletion.h)
        cp        $(location glib/gconvert.h)         $(location glib-2.0/glib/gconvert.h)
        cp        $(location glib/gdataset.h)         $(location glib-2.0/glib/gdataset.h)
        cp        $(location glib/gdate.h)            $(location glib-2.0/glib/gdate.h)
        cp        $(location glib/gdir.h)             $(location glib-2.0/glib/gdir.h)
        cp        $(location glib/gerror.h)           $(location glib-2.0/glib/gerror.h)
        cp        $(location glib/gfileutils.h)       $(location glib-2.0/glib/gfileutils.h)
        cp        $(location glib/ghash.h)            $(location glib-2.0/glib/ghash.h)
        cp        $(location glib/ghook.h)            $(location glib-2.0/glib/ghook.h)
        cp        $(location glib/ghostutils.h)       $(location glib-2.0/glib/ghostutils.h)
        cp        $(location glib/gi18n.h)            $(location glib-2.0/glib/gi18n.h)
        cp        $(location glib/gi18n-lib.h)        $(location glib-2.0/glib/gi18n-lib.h)
        cp        $(location glib/giochannel.h)       $(location glib-2.0/glib/giochannel.h)
        cp        $(location glib/gkeyfile.h)         $(location glib-2.0/glib/gkeyfile.h)
        cp        $(location glib/glist.h)            $(location glib-2.0/glib/glist.h)
        cp        $(location glib/gmacros.h)          $(location glib-2.0/glib/gmacros.h)
        cp        $(location glib/gmain.h)            $(location glib-2.0/glib/gmain.h)
        cp        $(location glib/gmappedfile.h)      $(location glib-2.0/glib/gmappedfile.h)
        cp        $(location glib/gmarkup.h)          $(location glib-2.0/glib/gmarkup.h)
        cp        $(location glib/gmem.h)             $(location glib-2.0/glib/gmem.h)
        cp        $(location glib/gmessages.h)        $(location glib-2.0/glib/gmessages.h)
        cp        $(location glib/gnode.h)            $(location glib-2.0/glib/gnode.h)
        cp        $(location glib/goption.h)          $(location glib-2.0/glib/goption.h)
        cp        $(location glib/gpattern.h)         $(location glib-2.0/glib/gpattern.h)
        cp        $(location glib/gpoll.h)            $(location glib-2.0/glib/gpoll.h)
        cp        $(location glib/gprimes.h)          $(location glib-2.0/glib/gprimes.h)
        cp        $(location glib/gqsort.h)           $(location glib-2.0/glib/gqsort.h)
        cp        $(location glib/gquark.h)           $(location glib-2.0/glib/gquark.h)
        cp        $(location glib/gqueue.h)           $(location glib-2.0/glib/gqueue.h)
        cp        $(location glib/grand.h)            $(location glib-2.0/glib/grand.h)
        cp        $(location glib/grel.h)             $(location glib-2.0/glib/grel.h)
        cp        $(location glib/gregex.h)           $(location glib-2.0/glib/gregex.h)
        cp        $(location glib/gscanner.h)         $(location glib-2.0/glib/gscanner.h)
        cp        $(location glib/gsequence.h)        $(location glib-2.0/glib/gsequence.h)
        cp        $(location glib/gshell.h)           $(location glib-2.0/glib/gshell.h)
        cp        $(location glib/gslice.h)           $(location glib-2.0/glib/gslice.h)
        cp        $(location glib/gslist.h)           $(location glib-2.0/glib/gslist.h)
        cp        $(location glib/gspawn.h)           $(location glib-2.0/glib/gspawn.h)
        cp        $(location glib/gstdio.h)           $(location glib-2.0/glib/gstdio.h)
        cp        $(location glib/gstrfuncs.h)        $(location glib-2.0/glib/gstrfuncs.h)
        cp        $(location glib/gtestutils.h)       $(location glib-2.0/glib/gtestutils.h)
        cp        $(location glib/gstring.h)          $(location glib-2.0/glib/gstring.h)
        cp        $(location glib/gthread.h)          $(location glib-2.0/glib/gthread.h)
        cp        $(location glib/gthreadpool.h)      $(location glib-2.0/glib/gthreadpool.h)
        cp        $(location glib/gtimer.h)           $(location glib-2.0/glib/gtimer.h)
        cp        $(location glib/gtree.h)            $(location glib-2.0/glib/gtree.h)
        cp        $(location glib/gtypes.h)           $(location glib-2.0/glib/gtypes.h)
        cp        $(location glib/gunicode.h)         $(location glib-2.0/glib/gunicode.h)
        cp        $(location glib/gurifuncs.h)        $(location glib-2.0/glib/gurifuncs.h)
        cp        $(location glib/gutils.h)           $(location glib-2.0/glib/gutils.h)
        cp        $(location glib/gvarianttype.h)     $(location glib-2.0/glib/gvarianttype.h)
        cp        $(location glib/gvariant.h)         $(location glib-2.0/glib/gvariant.h)
        cp        $(location glib/gwin32.h)           $(location glib-2.0/glib/gwin32.h)
        cp        $(location glib/gprintf.h)          $(location glib-2.0/glib/gprintf.h)
    """
)

cc_library(
    name = "glib_libcharset",
    srcs = [
    
                "glib/libcharset/localcharset.c",

    ] + ALL_HDRS,
    includes = ["glib", "."],
    copts = [
                '-DLIBDIR=\\"/usr/local/lib\\"',
                '-DHAVE_CONFIG_H',
                '-DG_DISABLE_SINGLE_INCLUDES',
                '-pthread',
    ],
)

cc_library(
    name = "glib_pcre",
    srcs = [
    
                "glib/pcre/pcre_compile.c",
                "glib/pcre/pcre_chartables.c",
                "glib/pcre/pcre_config.c",
                "glib/pcre/pcre_dfa_exec.c",
                "glib/pcre/pcre_exec.c",
                "glib/pcre/pcre_fullinfo.c",
                "glib/pcre/pcre_get.c",
                "glib/pcre/pcre_globals.c",
                "glib/pcre/pcre_info.c",
                "glib/pcre/pcre_maketables.c",
                "glib/pcre/pcre_newline.c",
                "glib/pcre/pcre_ord2utf8.c",
                "glib/pcre/pcre_refcount.c",
                "glib/pcre/pcre_study.c",
                "glib/pcre/pcre_tables.c",
                "glib/pcre/pcre_try_flipped.c",
                "glib/pcre/pcre_ucp_searchfuncs.c",
                "glib/pcre/pcre_valid_utf8.c",
                "glib/pcre/pcre_version.c",
                "glib/pcre/pcre_xclass.c",
    ] + ALL_HDRS,
    includes = ["glib", "."],
    copts = [
    
	'-DG_LOG_DOMAIN=\\"GLib-GRegex\\"',
	'-DSUPPORT_UCP',
	'-DSUPPORT_UTF8',
	'-DNEWLINE=-1',
	'-DMATCH_LIMIT=10000000',
	'-DMATCH_LIMIT_RECURSION=8192',
	'-DMAX_NAME_SIZE=32',
	'-DMAX_NAME_COUNT=10000',
	'-DMAX_DUPLENGTH=30000',
	'-DLINK_SIZE=2',
	'-DPOSIX_MALLOC_THRESHOLD=10',
	'-DPCRE_STATIC',
	'-DG_DISABLE_CAST_CHECKS',
	'-DG_DISABLE_DEPRECATED',
	'-DGLIB_COMPILATION',
    '-DHAVE_CONFIG_H',
    
    ],
)

cc_binary(
    linkshared = 1,
    name = "libglib-2.0.so",
    srcs = [
    
                "glib/gatomic-gcc.c",
                "glib/gregex.c",
                "glib/garray.c",
                "glib/gasyncqueue.c",
                "glib/gbacktrace.c",
                "glib/gbase64.c",
                "glib/gbitlock.c",
                "glib/gbookmarkfile.c",
                "glib/gbuffer.c",
                "glib/gcache.c",
                "glib/gchecksum.c",
                "glib/gcompletion.c",
                "glib/gconvert.c",
                "glib/gdataset.c",
                "glib/gdate.c",
                "glib/gdir.c",
                "glib/gerror.c",
                "glib/gfileutils.c",
                "glib/ghash.c",
                "glib/ghook.c",
                "glib/ghostutils.c",
                "glib/giochannel.c",
                "glib/gkeyfile.c",
                "glib/glist.c",
                "glib/gmain.c",
                "glib/gmappedfile.c",
                "glib/gmarkup.c",
                "glib/gmem.c",
                "glib/gmessages.c",
                "glib/gnode.c",
                "glib/goption.c",
                "glib/gpattern.c",
                "glib/gpoll.c",
                "glib/gprimes.c",
                "glib/gqsort.c",
                "glib/gqueue.c",
                "glib/grel.c",
                "glib/grand.c",
                "glib/gscanner.c",
                "glib/gsequence.c",
                "glib/gshell.c",
                "glib/gslice.c",
                "glib/gslist.c",
                "glib/gstdio.c",
                "glib/gstrfuncs.c",
                "glib/gstring.c",
                "glib/gtestutils.c",
                "glib/gthread.c",
                "glib/gthreadpool.c",
                "glib/gtimer.c",
                "glib/gtree.c",
                "glib/guniprop.c",
                "glib/gutf8.c",
                "glib/gunibreak.c",
                "glib/gunicollate.c",
                "glib/gunidecomp.c",
                "glib/gurifuncs.c",
                "glib/gutils.c",
                "glib/gvariant.c",
                "glib/gvariant-core.c",
                "glib/gvariant-parser.c",
                "glib/gvariant-serialiser.c",
                "glib/gvarianttypeinfo.c",
                "glib/gvarianttype.c",
                "glib/gprintf.c",
                "glib/giounix.c",
                "glib/gspawn.c",
    
    ] + ALL_HDRS,
    includes = [".", "glib"],
    copts = [
                '-DHAVE_CONFIG_H',
                '-DG_LOG_DOMAIN=\\"GLib\\"',
                '-DG_DISABLE_DEPRECATED',
                '-DGLIB_COMPILATION',
                '-DPCRE_STATIC',
                '-DG_DISABLE_SINGLE_INCLUDES',
                '-pthread',
                '-DG_DISABLE_CAST_CHECKS',
    
    ],
    deps = [":glib_pcre", ":glib_libcharset", "special_ext"],
)

cc_library(
        name = "special_ext",
        hdrs = [
                "gio/gioaliasdef.c",
                "glib/galiasdef.c",
                "gobject/gobjectaliasdef.c",
                "gobject/gobjectnotifyqueue.c",
                "gobject/gmarshal.c",
                "gthread/gthread-posix.c",
                "gmodule/gmodule-dl.c",
        ],
)

cc_binary(
    linkshared = 1, 
    name = "libgio-2.0.so",
    srcs = [
    
                "gio/gappinfo.c",
                "gio/gasynchelper.c",
                "gio/gasyncinitable.c",
                "gio/gasyncresult.c",
                "gio/gbufferedinputstream.c",
                "gio/gbufferedoutputstream.c",
                "gio/gcancellable.c",
                "gio/gcontenttype.c",
                "gio/gcharsetconverter.c",
                "gio/gconverter.c",
                "gio/gconverterinputstream.c",
                "gio/gconverteroutputstream.c",
                "gio/gdatainputstream.c",
                "gio/gdataoutputstream.c",
                "gio/gdrive.c",
                "gio/gdummyfile.c",
                "gio/gemblem.c",
                "gio/gemblemedicon.c",
                "gio/gfile.c",
                "gio/gfileattribute.c",
                "gio/gfiledescriptorbased.c",
                "gio/gfileenumerator.c",
                "gio/gfileicon.c",
                "gio/gfileinfo.c",
                "gio/gfileinputstream.c",
                "gio/gfilemonitor.c",
                "gio/gfilenamecompleter.c",
                "gio/gfileoutputstream.c",
                "gio/gfileiostream.c",
                "gio/gfilterinputstream.c",
                "gio/gfilteroutputstream.c",
                "gio/gicon.c",
                "gio/ginetaddress.c",
                "gio/ginetsocketaddress.c",
                "gio/ginitable.c",
                "gio/ginputstream.c",
                "gio/gioerror.c",
                "gio/giomodule.c",
                "gio/gioscheduler.c",
                "gio/giostream.c",
                "gio/gloadableicon.c",
                "gio/gmount.c",
                "gio/gmemoryinputstream.c",
                "gio/gmemoryoutputstream.c",
                "gio/gmountoperation.c",
                "gio/gnativevolumemonitor.c",
                "gio/gnetworkaddress.c",
                "gio/gnetworkservice.c",
                "gio/goutputstream.c",
                "gio/gpollfilemonitor.c",
                "gio/gresolver.c",
                "gio/gseekable.c",
                "gio/gsimpleasyncresult.c",
                "gio/gsocket.c",
                "gio/gsocketaddress.c",
                "gio/gsocketaddressenumerator.c",
                "gio/gsocketclient.c",
                "gio/gsocketconnectable.c",
                "gio/gsocketconnection.c",
                "gio/gsocketcontrolmessage.c",
                "gio/gsocketinputstream.c",
                "gio/gsocketlistener.c",
                "gio/gsocketoutputstream.c",
                "gio/gsocketservice.c",
                "gio/gsrvtarget.c",
                "gio/gtcpconnection.c",
                "gio/gthreadedsocketservice.c",
                "gio/gthemedicon.c",
                "gio/gthreadedresolver.c",
                "gio/gunionvolumemonitor.c",
                "gio/gvfs.c",
                "gio/gvolume.c",
                "gio/gvolumemonitor.c",
                "gio/gzlibcompressor.c",
                "gio/gzlibdecompressor.c",
                "gio/gioenumtypes.c",
                "gio/gdesktopappinfo.c",
                "gio/gunixconnection.c",
                "gio/gunixfdlist.c",
                "gio/gunixfdmessage.c",
                "gio/gunixmount.c",
                "gio/gunixmounts.c",
                "gio/gunixresolver.c",
                "gio/gunixsocketaddress.c",
                "gio/gunixvolume.c",
                "gio/gunixvolumemonitor.c",
                "gio/gunixinputstream.c",
                "gio/gunixoutputstream.c",
                "gio/glocaldirectorymonitor.c",
                "gio/glocalfile.c",
                "gio/glocalfileenumerator.c",
                "gio/glocalfileinfo.c",
                "gio/glocalfileinputstream.c",
                "gio/glocalfilemonitor.c",
                "gio/glocalfileoutputstream.c",
                "gio/glocalfileiostream.c",
                "gio/glocalvfs.c",
                "gio/gio-marshal.c",

                "//external:zlib-so-latest",
                "libglib-2.0.so",
                "libgobject-2.0.so",
                "libgmodule-2.0.so",
    ] + ALL_HDRS,
    includes = [".", "glib"],
    copts = [
    
                '-DG_LOG_DOMAIN=\\"GLib-GIO\\"',
                '-DG_DISABLE_CAST_CHECKS',
                '-DG_THREADS_MANDATORY',
                '-DG_DISABLE_DEPRECATED',
                '-DGIO_COMPILATION',
                '-DGIO_MODULE_DIR=\\"/usr/local/lib/gio/modules\\"',

    ],
    deps = [
                ":gio_libasyncns",
                ":gio_libinotify",
                ":gio_libxdgmime",
                "//external:zlib-hdr-latest",
                "special_ext",
    ],
)

cc_library(
    name = "gio_libxdgmime",
    srcs = [
                "gio/xdgmime/xdgmime.c",
                "gio/xdgmime/xdgmimealias.c",
                "gio/xdgmime/xdgmimecache.c",
                "gio/xdgmime/xdgmimeglob.c",
                "gio/xdgmime/xdgmimeicon.c",
                "gio/xdgmime/xdgmimeint.c",
                "gio/xdgmime/xdgmimemagic.c",
                "gio/xdgmime/xdgmimeparent.c",
    
    ] + ALL_HDRS,
    includes = [],
    copts = [
            '-DXDG_PREFIX=_gio_xdg',
            '-DHAVE_CONFIG_H',
            '-DG_DISABLE_SINGLE_INCLUDES',
            '-pthread',
    ],
)
cc_library(
    name = "gio_libinotify",
    srcs = [

                "gio/inotify/inotify-kernel.c",
                "gio/inotify/inotify-sub.c",
                "gio/inotify/inotify-path.c",
                "gio/inotify/inotify-missing.c",
                "gio/inotify/inotify-helper.c",
                "gio/inotify/inotify-diag.c",
                "gio/inotify/ginotifyfilemonitor.c",
                "gio/inotify/ginotifydirectorymonitor.c",
    
    ] + ALL_HDRS,
    includes = ["glib", ".", "gmodule", "gio"],
    copts = [
    
            '-DHAVE_CONFIG_H',
            '-DG_DISABLE_SINGLE_INCLUDES',
            '-pthread',
            '-DGIO_MODULE_DIR=\\"/usr/local/lib/gio/modules\\"',
            '-DG_LOG_DOMAIN=\\"GLib-GIO\\"',
            '-DG_DISABLE_CAST_CHECKS',
            '-DGIO_COMPILATION',
            '-DG_DISABLE_DEPRECATED',

    ],
)
cc_library(
    name = "gio_libasyncns",
    srcs = [
    
            "gio/libasyncns/asyncns.c",
    
    ] + ALL_HDRS,
    copts = [
    
            '-DHAVE_CONFIG_H',
            '-DG_DISABLE_SINGLE_INCLUDES',
            '-pthread',
    ],
    linkopts = ["-lresolv"],
)


cc_binary(
    linkshared = 1,
    name = "libgmodule-2.0.so",
    srcs = [
                "gmodule/gmodule.c",

                "libglib-2.0.so",
    ] + ALL_HDRS,
    includes = ["glib", "."],
    copts = [
    
                '-DG_LOG_DOMAIN=\\"GModule\\"',
                '-DG_DISABLE_CAST_CHECKS',
                '-DG_DISABLE_DEPRECATED',
                '-DHAVE_CONFIG_H',
                '-pthread',
                '-DG_DISABLE_SINGLE_INCLUDES',

    ],
    linkopts = ["-ldl"],
    deps = ["special_ext"],
)

cc_binary(
    linkshared = 1,
    name = "libgobject-2.0.so",
    srcs = [
    
                "gobject/gatomicarray.c",
                "gobject/gboxed.c",
                "gobject/gclosure.c",
                "gobject/genums.c",
                "gobject/gobject.c",
                "gobject/gparam.c",
                "gobject/gparamspecs.c",
                "gobject/gsignal.c",
                "gobject/gsourceclosure.c",
                "gobject/gtype.c",
                "gobject/gtypemodule.c",
                "gobject/gtypeplugin.c",
                "gobject/gvalue.c",
                "gobject/gvaluearray.c",
                "gobject/gvaluetransform.c",
                "gobject/gvaluetypes.c",

    ] + ALL_HDRS,
    includes = [".", "glib", "gobject"],
    copts = [
    
                '-DHAVE_CONFIG_H',
                '-DG_DISABLE_SINGLE_INCLUDES',
                '-pthread',

                '-DG_LOG_DOMAIN=\\"GLib-GObject\\"',
                '-DG_DISABLE_CAST_CHECKS',
                '-DG_THREADS_MANDATORY',
                '-DG_DISABLE_DEPRECATED',
                '-DGOBJECT_COMPILATION',
                '-DG_DISABLE_CONST_RETURNS',
    
    ],
    deps = ["special_ext"],
)

cc_binary(
    linkshared = 1,
    name = "libgthread-2.0.so",
    srcs = [
                "gthread/gthread-impl.c",
                "libglib-2.0.so",
    ] + ALL_HDRS,
    includes = [".", "gthread", "glib"],
    copts = [
    
                '-DG_LOG_DOMAIN=\\"GThread\\"',
                '-D_POSIX4_DRAFT_SOURCE',
                '-D_POSIX4A_DRAFT10_SOURCE',
                '-U_OSF_SOURCE',
                '-DG_DISABLE_CAST_CHECKS',
                '-DG_DISABLE_DEPRECATED',
                '-DHAVE_CONFIG_H',
                '-DG_DISABLE_SINGLE_INCLUDES',
                '-pthread',
    
    ],
    linkopts = ["-lpthread"],
    deps = ["special_ext"],
)
