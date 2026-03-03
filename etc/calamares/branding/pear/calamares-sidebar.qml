// SPDX-FileCopyrightText: no
// SPDX-License-Identifier: CC0-1.0

import QtQuick 2.15
import QtQuick.Controls 2.15

/*
 * Sidebar QML pentru Calamares.
 *
 * Este încărcat de Calamares când în branding.desc:
 *     sidebar: qml,bottom
 *
 * API așteptat (expus de Calamares în contextul QML):
 *   - installer: obiect cu
 *       * steps: listă de pași, fiecare cu:
 *           - name        (string uman‑readabil)
 *           - prettyName  (opțional)
 *       * currentStepIndex: int (indexul pasului curent)
 */

Item {
    id: root
    anchors.fill: parent

    // Fundal subtil pentru bară (dark)
    Rectangle {
        anchors.fill: parent
        color: "#292F34"
    }

    // Container pentru pași, jos, orizontal
        Row {
        id: stepsRow
        anchors {
            left: parent.left
            right: parent.right
            bottom: parent.bottom
            margins: 12
        }
        spacing: 8

        Repeater {
            id: stepsRepeater
            model: installer && installer.steps ? installer.steps.length : 0

            delegate: Rectangle {
                id: stepItem
                height: 32
                radius: 16

                // Lățimea se adaptează la text
                implicitWidth: stepText.implicitWidth + 28

                color: index === installer.currentStepIndex ? "#00CED1" : "#222831"

                border.color: index === installer.currentStepIndex ? "#00CED1" : "#3A4248"
                border.width: 1

                Text {
                    id: stepText
                    anchors.centerIn: parent
                    text: (installer.steps[index].prettyName || installer.steps[index].name)
                    color: index === installer.currentStepIndex ? "#292F34" : "#FFFFFF"
                    font.pixelSize: 12
                    elide: Text.ElideRight
                }
            }
        }
    }
}

