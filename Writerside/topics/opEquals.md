# opEquals

При сравнении будет найден первый определённый `opEquals` для сравниваемых типов и будет возвращён результат его
выполнения.

## Значение {id="value"}

[](operator.md), работающие со значениями свойств:

`==`
: [Оператор](operator.md) равенства.

`!=`
: [Оператор](operator.md) неравенства.

> [Оператор](operator.md) `!=` вызывает `==`, просто возвращает обратный результат.

Если не определён [](opCmp.md), то будет вызван `opEquals`:

```C#
class A {
    int i;

    A(int i){
        [[[this|this.md]]].i = i;
    }

    bool opEquals(const A [[[&inout|fun-arg-handle.md#inout]]] a) {
        return i == a.i;
    }

    bool opEquals(const int [[[&in|fun-arg-handle.md#in]]] i) {
        return [[[this|this.md]]].i == i;
    }
}

void [[[main|main.md]]](){
    A a(10);
    A b(11);

    print(a == b ? "1" : "0"); // 0
    print(a == 10 ? "1" : "0"); // 1
    print(10 == b ? "1" : "0"); // 0
}
```

## Тип {id="type"}

[](operator.md), работающие с типами объектов:

`is`
: [Оператор](operator.md) совместимости.

`!is`
: [Оператор](operator.md) не совместимости.

> [Оператор](operator.md) `!is` вызывает `is`, просто возвращает обратный результат.

> В
> [документации](https://www.angelcode.com/angelscript/sdk/docs/manual/doc_script_class_ops.html#doc_script_class_cmp_ops)
> написано что эти операторы можно перегружать. На практике у меня это не получилось.
> {style="warning"}