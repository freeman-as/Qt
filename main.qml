// 使用するエレメントに合わせてモジュールをインポートする
import QtQuick 2.7
//import QtQuick.Controls 2.0
import QtQuick.Controls 1.5
import QtQuick.Layouts 1.3
//import QtQuick.Dialogs 1.2

//メニューバー、ステータスバー、ツールバーを追加できるWindowを作成するエレメント
ApplicationWindow {
    visible: true; //作成したウインドウを表示状態にする
    width: 640; //コンテンツ領域のサイズ
    height: 480;
    title: qsTr("Hello World"); //ウインドウのタイトル

    //マウス入力を受け付ける領域の設定
    MouseArea {
        anchors.fill: parent; //親エレメントの全体に配置
        onClicked: { //クリック時の動作
            Qt.quit();
        }
    }

    menuBar: MenuBar {
        Menu {
            title: qsTr("File");
            MenuItem {
                text: qsTr("&Open");
                onTriggered: console.log("Open action triggered"); //選択時の動作
            }
            MenuItem {
                text: qsTr("Exit");
                onTriggered: Qt.quit(); //選択時の動作
            }
        }
    }

    //文字列を配置
//    Label {
//        anchors.top: parent.top;
//        anchors.horizontalCenter: parent.horizontalCenter;
//        anchors.verticalCenter: parent.verticalCenter;
//    }

    //文字列を配置
    Text {
        text: qsTr("Hello World");
        anchors.centerIn: parent;
    }
}
