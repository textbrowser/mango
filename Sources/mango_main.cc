#include <QGuiApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
  QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif

  QGuiApplication application(argc, argv);
  QQmlApplicationEngine engine;
  const QUrl url(QStringLiteral("qrc:/Sources/mango_main.qml"));

  QObject::connect(&engine,
		   &QQmlApplicationEngine::objectCreated,
		   &application,
		   [url] (QObject *object, const QUrl &object_url)
		   {
		     if(!object && url == object_url)
		       QCoreApplication::exit(-1);
		   },
		   Qt::QueuedConnection);
  engine.load(url);
  return application.exec();
}
