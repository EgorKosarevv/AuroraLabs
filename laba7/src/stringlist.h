
#ifndef STRINGLIST_H
#define STRINGLIST_H

#include <QObject>
#include <QString>

class StringList : public QObject
{
    Q_OBJECT
public:
    explicit StringList(QObject *parent = nullptr);
    Q_INVOKABLE void add(QString temp) { m_data << temp; };
    Q_INVOKABLE void popBack()
    {
        if (!m_data.isEmpty()) {
            m_data.pop_back();
        }
    };

    Q_INVOKABLE QString getAll() {
        QString temp;
        for (int i = 0; i < m_data.length(); i++) {
            QString str = m_data[i];


            str = str.toLower();

            if (i == 0) {

                str[0] = str[0].toUpper();
            }

            temp += str;


            if (i != m_data.length() - 1) {
                temp += ", ";
            }
        }
        return temp;
    };

private:
    QList<QString> m_data;
};

#endif // STRINGLIST_H
