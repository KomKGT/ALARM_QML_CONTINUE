#include "mainwindow.h"
#include <QApplication>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    a.setOverrideCursor(Qt::BlankCursor);
    MainWindow w;
    w.setAttribute(Qt::WA_AcceptTouchEvents);
    w.show();

    return a.exec();
}
