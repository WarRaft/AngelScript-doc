# Пространство имён

<a href="https://www.angelcode.com/angelscript/sdk/docs/manual/doc_global_namespace.html"/>

Механизм, который позволяет организовать код в логические группы. Позволяет избежать конфликтов имён при разрастании
кодовой базы, особенно при использовании внешних зависимостей.

Для доступа к объектам внутри пространства имён используется оператор `::`:

```C#
string A = "A";

namespace N {
    string A = "NA";   
}

void [[[main|main.md]]](){
    print(A + N::A); //ANA
}
```

Оператор `::` можно опустить, если объекты находятся в одном пространстве имён:

```C#
namespace N {
    string A = "A";
    string B = A + "B";
}

void [[[main|main.md]]](){
    print(N::A); //AB
}
```

## Глобальное пространство имён {id="global"}

Доступ к любому объекту в глобальной области видимости можно получить с помощью оператора `::` без указания имени
пространства имён:

```C#
string A = "A";

namespace N {
    string A = "NA";
    string B = ::A + A;
}

void [[[main|main.md]]](){
    print(::A); // A
    print(::N::A); // NA
    print(N::B); //ANA
}
```

## Вложенные пространства имён {id="nested"}

Пространства имён можно вкладывать друг в друга.

```C#
namespace NA {
    namespace NB {
        namespace NC {
            string A = "NC";
        }
    }
}

void [[[main|main.md]]](){
    print(NA::NB::NC::A); // NC 
}
```

Доступ из вложенного пространства имён к родительскому осуществляется через [глобальное пространство имён](#global):

```C#
namespace NA {
    namespace NB {
        string A = "NB";
        namespace NC {
            string A = ::NA::NB::A + "NC";
        }
    }
}

void [[[main|main.md]]](){
    print(NA::NB::NC::A); // NBNC 
}
```

## Множественное объявление {id="multi"}

Пространства имён с одним именем допустимо объявлять неограниченное количество раз. Единственное условие — вложенные
объекты не должны конфликтовать друг с другом.

```C#
namespace N {
    string A = "A";
}

namespace N {
    string B = "B";
}

namespace N {
    string C = A + B + "C";
    // string A = "A"; // Ошибка! Переменная A уже объявлена.
}

void [[[main|main.md]]](){
    print(N::C); // ABC 
}
```

> Этот функционал удобно использовать совместно с [](include.md) для разбиения кода в разные файлы. 


