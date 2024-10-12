# this

[Свойства](class-property.md) и [методы](class-method.md) класса внутри собственного класса доступны по имени:

```C#
class A {
    string b = "b";
    
    string c() {
        return "c";
    }
   
    void d(){
        print(b + c()); // bc
    }
}

void [[[main|main.md]]](){
    A a;
    a.d();     
}
```

Для того чтоб явно обратиться к [свойству](class-property.md) или [методу](class-method.md) собственного класса
существует ключевое слово `this`:

```C#
class A {
    string b = "b1";

    string c() {
        return "c1";
    }

    void d(){
        string b = "b2"; // Перекрываем [[[свойство|class-property.md]]]
        print(this.b + b); // b1b2

        string c = "c2"; // Перекрываем [[[метод|class-method.md]]]
        print(this.c() + c); // c1c2
    }
}

void [[[main|main.md]]](){
    A a;
    a.d();     
}
```
