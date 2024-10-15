# Ссылки на класс

[](https://www.angelcode.com/angelscript/sdk/docs/manual/doc_script_handle.html)

Для объявления ссылки используется оператор `@`. [Изначальным значением](var.md#initial-value) ссылок
является [](null.md).

```C#
class A {
    string s = "1";
}

A@ a; // [[[null|null.md]]]

void [[[main|main.md]]](){
    // print(a.s); // Ошибка! Null pointer access. Ссылка указывает на [[[null|null.md]]]
    // a = A(); // Ошибка! Ссылка указывает на [[[null|null.md]]], которому нельзя присвоить значение
    @a = @A();
    print(a.s); // 1
}
```

> Обратите внимания, что ссылка указывает на фактический объект и для указания того, что вы работаете необходимо
> использовать оператор `@`.
