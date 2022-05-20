unix {
QMAKE_LFLAGS_RPATH =
purge.commands = find . -iname '*~*' -exec rm -i {} \;
} else {
purge.commands =
}

QMAKE_EXTRA_TARGETS = purge
QML_DESIGNER_IMPORT_PATH =
QML_IMPORT_PATH =

QT += quick

RESOURCES += Resources/mango_qml.qrc

SOURCES += Sources/mango_main.cc

TARGET = Mango

qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
