# opCmp

[](operator.md) сравнения.

`<`
: Меньше.

`<=`
: Меньше или равно.

`>`
: Больше.

`>=`
: Больше или равно.

Метод сравнения должен возвращать `int`:
- `0` если текущее значение равно переданному
- `1` если текущее значение больше переданного
- `-1` если текущее значение меньше переданного

```C#
class A {
    int i;

    A(int i){
        [[[this|this.md]]].i = i;
    }

    int opCmp(const A [[[&inout|fun-arg-handle.md#inout]]] a) {
        return opCmp(a.i);
    }

    int opCmp(const int [[[&in|fun-arg-handle.md#in]]] i) {
        if ([[[this|this.md]]].i == i) return 0;
        return [[[this|this.md]]].i > i ? 1 : -1;
    }
}

void [[[main|main.md]]](){
    A a(10);
    A b(11);

    print(a >= b ? "1" : "0"); // 0
    print(a > 10 ? "1" : "0"); // 0
    print(13 >= a ? "1" : "0"); // 1
    print(10 <= b ? "1" : "0"); // 1
}
```