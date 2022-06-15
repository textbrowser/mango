/*
** Alexis Megas.
*/

import QtQuick 2.15
import QtQuick.Controls 1.2
import QtQuick.Dialogs 1.2

Dialog
{
    height: 200
    property string m_version: "Mango Version 2022.10.10."
    title: "Mango: About"
    width: 200

    contentItem: Rectangle
    {
        implicitHeight: 100
        implicitWidth: 400

	Button
	{
	    anchors.centerIn: parent
	    text: "Close"
	}

	Text
	{
            anchors.centerIn: parent
            text: m_version
	}
    }

    Component.onCompleted: visible = true
}
