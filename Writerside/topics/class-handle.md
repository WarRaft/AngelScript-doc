# Ссылки на класс

[](https://www.angelcode.com/angelscript/sdk/docs/manual/doc_script_handle.html)

Ссылка объявляется путем добавления символа `@` к типу данных. Изначальным значением ссылок является [](null.md).

```C#
class A {
    string s = "a";
}

A@ a; // [[[null|null.md]]]  

void [[[main|main.md]]](){
    // print(a.s); // Ошибка! Null pointer access
    a = A();
    print(a.s); // a
}
```