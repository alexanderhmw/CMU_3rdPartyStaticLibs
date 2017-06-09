unix {
    LIBNAME=$${TARGET}
	
    CONFIG+=debug_and_release build_all

    MOC_DIR = $$(HOME)/SDK/CMU_LIBS/3rdLibs/.BUILD/$${LIBNAME}/MOC
    UI_DIR = $$(HOME)/SDK/CMU_LIBS/3rdLibs/.BUILD/$${LIBNAME}/UI
    RCC_DIR = $$(HOME)/SDK/CMU_LIBS/3rdLibs/.BUILD/$${LIBNAME}/RCC

    CONFIG(debug,debug|release){
        OBJECTS_DIR = $$(HOME)/SDK/CMU_LIBS/3rdLibs/.BUILD/$${LIBNAME}/OBJ/Debug
        DESTDIR = $$(HOME)/SDK/CMU_LIBS/3rdLibs/.BUILD/$${LIBNAME}
        TARGET = $${LIBNAME}_Debug
        target.path = $$(HOME)/SDK/CMU_LIBS/3rdLibs/$${LIBNAME}
    }else{
        OBJECTS_DIR = $$(HOME)/SDK/CMU_LIBS/3rdLibs/.BUILD/$${LIBNAME}/OBJ/Release
        DESTDIR = $$(HOME)/SDK/CMU_LIBS/3rdLibs/.BUILD/$${LIBNAME}
	TARGET = $${LIBNAME}_Release
        target.path = $$(HOME)/SDK/CMU_LIBS/3rdLibs/$${LIBNAME}
    }
    
    INSTALLS += target

    for(header, HEADERS) {
      path = $$(HOME)/SDK/CMU_LIBS/3rdLibs/$${LIBNAME}/$${dirname(header)}
      eval(headers_$${header}.files += $$header)
      eval(headers_$${header}.path = $$path)
      eval(INSTALLS *= headers_$${header})
    }

    dist.files = $$DISTFILES
    dist.path = $$(HOME)/SDK/CMU_LIBS/3rdLibs/$${LIBNAME}
    INSTALLS += dist

    isEmpty(DOXYGEN){
    }
    else{
        doxygen.files = $$DOXYGEN
        doxygen.path = $$(HOME)/SDK/CMU_LIBS/3rdLibs/$${LIBNAME}/doc
        INSTALLS += doxygen
    }

}

win32{
    LIBNAME=$${TARGET}

    CONFIG+=debug_and_release build_all

    MOC_DIR = C:\SDK\CMU_LIBS\3rdLibs\.BUILD\\$${LIBNAME}\MOC
    UI_DIR = C:\SDK\CMU_LIBS\3rdLibs\.BUILD\\$${LIBNAME}\UI
    RCC_DIR = C:\SDK\CMU_LIBS\3rdLibs\.BUILD\\$${LIBNAME}\RCC

    CONFIG(debug,debug|release){
        OBJECTS_DIR = C:\SDK\CMU_LIBS\3rdLibs\.BUILD\\$${LIBNAME}\OBJ\Debug
        DESTDIR = C:\SDK\CMU_LIBS\3rdLibs\.BUILD\\$${LIBNAME}
        TARGET = $${LIBNAME}_Debug
        target.path = C:\SDK\CMU_LIBS\3rdLibs\\$${LIBNAME}
    }else{
        OBJECTS_DIR = C:\SDK\CMU_LIBS\3rdLibs\.BUILD\\$${LIBNAME}\OBJ\Release
        DESTDIR = C:\SDK\CMU_LIBS\3rdLibs\.BUILD\\$${LIBNAME}
        TARGET = $${LIBNAME}_Release
        target.path = C:\SDK\CMU_LIBS\3rdLibs\\$${LIBNAME}
    }

    INSTALLS += target

    for(header, HEADERS) {
      path = C:\SDK\CMU_LIBS\3rdLibs\\$${LIBNAME}\\$${dirname(header)}
      eval(headers_$${header}.files += $$header)
      eval(headers_$${header}.path = $$path)
      eval(INSTALLS *= headers_$${header})
    }

    dist.files = $$DISTFILES
    dist.path = C:\SDK\CMU_LIBS\3rdLibs\\$${LIBNAME}
    INSTALLS += dist
}
