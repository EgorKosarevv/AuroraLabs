#include <QScopedPointer>
#include <QGuiApplication>
#include <QQuickView>
#include "counter.h"
#include "stringlist.h"

#include <sailfishapp.h>

int main(int argc, char *argv[])
{

    srand(time(NULL));

    QScopedPointer<QGuiApplication> application(SailfishApp::application(argc, argv));
    application->setOrganizationName(QStringLiteral("ru.auroraos"));
    application->setApplicationName(QStringLiteral("laba7"));

    qmlRegisterType<Counter>("com.counter", 1, 0, "Counter");
    qmlRegisterType<StringList>("com.stringlist", 1, 0, "StringList");

    QScopedPointer<QQuickView> view(SailfishApp::createView());
    view->setSource(SailfishApp::pathTo(QStringLiteral("qml/laba7.qml")));
    view->show();

    return application->exec();
}
