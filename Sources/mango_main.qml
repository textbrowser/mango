import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Dialogs 1.3

ApplicationWindow
{
    height: 480
    id: m_main_window
    title: qsTr("Mango Internet Radio")
    visible: true
    width: 640

    menuBar: MenuBar
    {
        Menu
	{
            title: qsTr("&File")

	    Action
	    {
		text: qsTr("&Quit")

		onTriggered: m_main_window.close()
	    }
        }

	Menu
	{
            title: qsTr("&Edit")

	    Action
	    {
		text: qsTr("&Settings...")
	    }
        }

        Menu
	{
            title: qsTr("&Help")

	    Action
	    {
		text: qsTr("&About...")

		onTriggered:
		{
		    var about = Qt.createComponent("mango_about.qml")
		    var window = about.createObject(m_main_window)
		}
	    }
        }
    }

}
