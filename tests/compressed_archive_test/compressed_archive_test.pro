TEMPLATE = app
CONFIG += console

QMAKE_CXXFLAGS+= -O2 -pipe -Wall 
SOURCES += \
    main.cpp \

QT += core

win32 {
    LIBS +=  -loleaut32 -lole32
    QMAKE_CXXFLAGS_RELEASE += /MP /Ob2 /Oi /Ot /GT
    QMAKE_LFLAGS_RELEASE += /LTCG
    CONFIG -= embed_manifest_exe
}

unix {
	DEFINES += "LIBDIR=\\\"$$/usr/lib\\\""
	}

!CONFIG(unarr){
    include(../../compressed_archive/wrapper.pri)
} else {
    include(../../compressed_archive/unarr/unarr-wrapper.pri)
}



