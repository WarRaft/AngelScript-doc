# Свойства класса

[](https://www.angelcode.com/angelscript/sdk/docs/manual/doc_script_class_memberinit.html)

[](variable.md), которые относятся к членам класса, называются свойствами.

> Переменные-члены класса также называют другими
> терминами, например, полями, но в этой документации, такие переменные будут называться — свойствами.

```C#
class A {
    string b = "b";
    int c = 1;
}

void [[[main|main.md]]](){
    A a;
    
    // Производим [[[конкатенацию|string-operator.md#concat]]] и выводим значения свойств в консоль
    print(a.b + a.c); // b1
}
```