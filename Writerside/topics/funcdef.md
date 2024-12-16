# funcdef

<a href="https://www.angelcode.com/angelscript/sdk/docs/manual/doc_global_funcdef.html"/>

Объявляет сигнатуру функции для хранения функции в переменной или передачи аргументом.

```C#
funcdef void A(string); // Объявляем сигнатуру функции

void B(string C) { // Объявляем функцию, подходящую под сигнатуру
    print(C);
}

void D(A& E) { // Объявляем функцию, которая принимает функцию, подходящую под сигнатуру
    E("Вызываем функцию, переданную по ссылке");
}

void [[[main|main.md]]](){
    A@ F = @B; // Объявляем переменную где тип является сигнатурой функции
    D(@F); // Передаём переменную в функцию
}
```

## Встроенные сигнатуры {id="built-in"}

По умолчанию в игре определены две сигнатуры, которые используются для внутриигровых триггеров и таймеров:

```C#
void CallbackFunc();
bool BoolexprFunc();
```

## Методы класса {id="method"}

Для того, чтоб передать [метод](method.md) класса [аргументом](fun-arg.md) необходимо вручную привязать экземпляр класса
к методу:

```C#
class A {
    A() [[[delete|constructor-default.md#delete]]];
    
    A(string name){
        [[[this|this.md]]].name = name;
    }
    
    string name; 

    bool m(){
        return name == "2";
    }
}

void [[[main|main.md]]](){
    A a1("1");
    A a2("2");
   
    BoolexprFunc @f2 = BoolexprFunc(a2.m); // Привязываем экземпляр класса к методу
    
    print(f2() + "\n"); // true
}
```

### Утечка {id="leak"}

> Функции из API игры после завершения работы не освобождают ссылку на класс и предотвращают его удаление штатным
> сборщиком мусора.
>
{style="warning"}

В данном примере сработает только один [деструктор](destructor.md):

```C#
class A {
    A() [[[delete|constructor-default.md#delete]]];
    
    A(string name){
        [[[this|this.md]]].name = name;
    }
    
    [[[~|destructor.md]]]A(){
        print(name);
    }
    
    string name; 

    void m(){}
}

void [[[main|main.md]]](){
    A a1("1");
    A a2("2");
    
    TimerStart(CreateTimer, 0.f, false, CallbackFunc(a2.m));
}
// Деструктор для a2 вызван не будет
```

