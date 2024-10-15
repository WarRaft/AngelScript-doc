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



