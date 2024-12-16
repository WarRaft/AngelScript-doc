# include

Подключает код из внешнего файла. Путь относителен тому файлу, в котором используется `include`.

```C#
#include "Scripts\\blizzard.as"
```

> Для того, чтоб выйти в родительскую директорию используется специальное имя `..`.

Разрешено использовать только в корне файла или в [пространстве имён](namespace.md).

<deflist>
<def>
<title>Пример</title>

`A.as`
```c#
string A = "A";
```

`war3map.as`

```c#
#include "A.as"

void [[[main|main.md]]](){
    // #include "A.as" // Ошибка! Размещение include в функции запрещено!
    print(A); // A
}
```
</def>
</deflist>

## Разрешение {id="resolve"}

Функционал подключения никак не модифицирует исходную логику и видимость. Его задача состоит в том, чтоб указать какие
файлы участвуют в компиляции.

Один и тот же файл может быть подключён только единожды. Повторное указание файла для подключения не вызовет ошибки и
будет проигнорировано.

<deflist>
<def>
<title>Пример</title>

`C.as`
```c#
string C = "C";
```

`B.as`
```c#
#include "C.as"
string B = "B";
```

`A.as`
```c#
#include "B.as"
string A = "A";
```

`war3map.as`

```c#
#include "A.as"
#include "С.as" // Повторное подключение юудет проигнорировано и не вызовет ошибки
void [[[main|main.md]]](){
    print(A); // A
    print(B); // B
    print(C); // C
}
```
</def>
</deflist>

## Пространство имён {id="namespace"}

Использование подключения внутри [пространства имён](namespace.md#multi) служит только для удобства и не несёт никакого
дополнительного смысла с точки зрения работы с кодом.


<deflist>
<def>
<title>Пример</title>

`main.as`
```c#
[[[namespace|namespace.md]]] Map {
    void main(){
        print("main");
    }
}
```

`config.as`
```c#
[[[namespace|namespace.md]]] Map {
    void config(){
        print("config");
    }
}
```

`war3map.as`
```c#
[[[namespace|namespace.md]]] Map {
    #include "main.as" // Подключаем внутри [[[пространства имён|namespace.md]]] 
}
#include "config.as" // Подключаем просто в корне файла

void [[[main|main.md]]](){
    Map::main(); // main
    Map::config(); // config
}
```
</def>
</deflist>