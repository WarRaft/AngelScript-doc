# Перегрузка конструкторов

Как и в случае с [функциями](fun-overload.md), допустима перегрузка конструкторов:

```C#
class A {
    int i;
    string s;
    
    A(int i){
        [[[this|this.md]]].i = i;
        s = "a";
    }

    A(string s){
        i = 2;
        [[[this|this.md]]].s = s;
    }
}

void [[[main|main.md]]](){
    A a(1);
    print(a.i + a.s); // 1a
    
    A b("b"); // 2b
    print(b.i + b.s);
}
```


