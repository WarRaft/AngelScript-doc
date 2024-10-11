# Методы класса

[](https://www.angelcode.com/angelscript/sdk/docs/manual/doc_script_class_methods.html)

Методы это функции, которые привязаны к экземпляру [класса](class.md).

```C++
class A {
    void a(string b) {
        print(b);
    }
}

void [[[main|main.md]]](){
    A a;
    a.a("Вызываем метод класса и передаём ему строку аргументом");     
}
```

## const

Классы добавляют новый тип [перегрузки функций](fun-overload.md) - `const` перегрузку.

При доступе через ссылку, определённую через `const` можно вызвать только методы, определённые как `const`.

Если ссылка доступна для записи, то могут быть вызваны методы обоих типов, причем предпочтение
будет отдано версии без `const`.

```C++
class A {
    string a()       { return "1"; } 
    string a() const { return "2"; }
}
  
void [[[main|main.md]]](){
    A a;
    A@ b = a;
    const A@ c = a;
    A@ const d = a;
   
    print( a.a() ); // 1
    print( b.a() ); // 1
    print( c.a() ); // 2
    print( d.a() ); // 1
}
```