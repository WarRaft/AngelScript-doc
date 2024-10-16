# opPreDec

`++`
: Префиксный унарный [оператор](operator.md) декремента.

```C#
class A {
    int i;
    float f;
    
    A(int i, float f){
        [[[this|this.md]]].i = i;
        [[[this|this.md]]].f = f;
    }
    
    void opPreDec(){
        --i;
        --f;
    }
}

void [[[main|main.md]]](){
    A a(3, 5.f);
    
    --a;
    
    print(a.i + "\n"); // 2
    print(a.f + "\n"); // 4
}
```