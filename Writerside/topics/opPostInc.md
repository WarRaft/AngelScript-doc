# opPostInc

`++`
: Префиксный унарный [оператор](operator.md) инкремента.

```C#
class A {
    int i;
    float f;
    
    A(int i, float f){
        [[[this|this.md]]].i = i;
        [[[this|this.md]]].f = f;
    }
    
    void opPostInc(){
        i++;
        f++;
    }
}

void [[[main|main.md]]](){
    A a(3, 5.f);
    
    a++;
    
    print(a.i + "\n"); // 4
    print(a.f + "\n"); // 6
}
```