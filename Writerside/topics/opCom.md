# opCom

`~`
: Префиксный унарный [оператор](operator.md) побитового отрицания.

```C#
class A {
    int i;
    uint u;
    
    A(int i, float u){
        [[[this|this.md]]].i = i;
        [[[this|this.md]]].u = u;
    }
    
    void opCom(){
        i = ~i;
        u = ~u;
    }
}

void [[[main|main.md]]](){
    A a(-3, 3);
    
    ~a;
    
    print(a.i + "\n"); // 2
    print(a.u + "\n"); // 4294967292
}
```
