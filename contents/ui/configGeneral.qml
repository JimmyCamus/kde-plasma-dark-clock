import QtQuick 2.0
import QtQuick.Controls 2.0
import org.kde.kirigami 2.4 as Kirigami
import org.kde.kquickcontrols 2.0 as KQControls

Kirigami.FormLayout {
    id: page

    property alias cfg_fontColor: fontColor.color
    property alias cfg_titleFontSize: titleFontSize.value
    property alias cfg_dateFontSize: dateFontSize.value
    property alias cfg_timeFontSize: timeFontSize.value

    KQControls.ColorButton {
        id: fontColor
        Kirigami.FormData.label: "Font Color"
        showAlphaChannel: true
    }


    SpinBox {
        id: titleFontSize
        Kirigami.FormData.label: "Title Font Size"
        from: 10
        to: 200
    }

    SpinBox {
        id: dateFontSize
        Kirigami.FormData.label: "Date Font Size"
        from: 10
        to: 200
    }

    SpinBox {
        id: timeFontSize
        Kirigami.FormData.label: "Time Font Size"
        from: 10
        to: 200
    }

}
