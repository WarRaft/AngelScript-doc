# Методы класса

[](https://www.angelcode.com/angelscript/sdk/docs/manual/doc_script_class_methods.html)

Методы это функции, которые привязаны к экземпляру [класса](class.md).

```C#
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