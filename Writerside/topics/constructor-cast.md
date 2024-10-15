# Приведение типов

Конструкторы, принимающие один [аргумент](fun-arg.md) могут быть использованы в качестве конструктора при приведении
типов.

```C#
class A {
    string s;
    
    A(){} // Конструктор по умолчанию необходимо указать явно
    
    A([[[const|var.md#const]]] string s){
        [[[this|this.md]]].s = s;
    } 
}

void [[[main|main.md]]](){
    A a = "a";
    print(a.s);     
}
```

В отличие от [копирующего конструктора](constructor-copy.md) такие конструкторы требуют
наличие [конструктора по умолчанию](constructor-default.md).

## explicit {id="explicit"}

Для того чтобы разрешить только явное использование конструктора, необходимо использовать ключевое слово `explicit`.

```C#
class A {
    string s;
    
    A(){}
    
    A([[[const|var.md#const]]] string s) explicit {
        [[[this|this.md]]].s = s;
    } 
}

void [[[main|main.md]]](){
    A a = A("a");
    // A a = "a"; // Ошибка! Запрещено неявное использование конструктора
    print(a.s); // a
}
```