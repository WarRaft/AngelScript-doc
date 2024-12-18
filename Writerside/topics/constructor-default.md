# Конструктор по умолчанию

Если не объявлен ни один конструктор, то при компиляции будет создан конструктор по умолчанию.

```C#
class A {
    // Конструктор по умолчанию будет создан при компиляции
}

class B {
    // Явное объявление конструктора по умолчанию
    B(){
        print("Вызван конструктор по умолчанию");
    }
}

void [[[main|main.md]]](){
    A a;
    B b;
}
```

Конструктор по умолчанию полезен для присвоения значений полям в зависимости от условий:
```C#
int i = 23; // [[[Глобальная переменная|var.md#global]]], значение которой всячески меняется по ходу игры

class A {
    string a; 
    
    A(){
        a = i % 2 == 0 ? "чётное" : "нечётное";
    }
}

void [[[main|main.md]]](){
    A a;
    print(a.a); // нечётное
}
```
{collapsible="true" collapsed-title="class A"}

## delete {id="delete"}

Если вам не нужен конструктор по умолчанию, его можно явно удалить используя ключевое слово `delete`
и [перегрузку конструктора](constructor-overload.md).

```C#
class A {
    string s;
    
    A() delete; // Удаляем конструктор по умолчанию
    
    A(string s){
        [[[this|this.md]]].s = s;
    }
}

void [[[main|main.md]]](){
    A a("a");
    print(a.s); // a
}
```