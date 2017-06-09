#-------------------------------------------------
#
# Project created by QtCreator 2017-01-24T14:16:11
#
#-------------------------------------------------

QT       -= gui

TARGET = NmeaLib
TEMPLATE = lib
CONFIG += staticlib

SOURCES += \
    context.c \
    generate.c \
    generator.c \
    gmath.c \
    info.c \
    parse.c \
    parser.c \
    sentence.c \
    time.c \
    tok.c

HEADERS += \
    nmea/config.h \
    nmea/context.h \
    nmea/generate.h \
    nmea/generator.h \
    nmea/gmath.h \
    nmea/info.h \
    nmea/nmea.h \
    nmea/parse.h \
    nmea/parser.h \
    nmea/sentence.h \
    nmea/time.h \
    nmea/tok.h \
    nmea/units.h

include(../.build.pri)


