# Анонимные функции

<a href="https://www.angelcode.com/angelscript/sdk/docs/manual/doc_script_anonfunc.html" />

Они же [лямбды](https://w.wiki/9ntk) - функции объявляемые локально.

```C++
// Объявляем сигнатуру функции сравнения
funcdef bool Comparator(int a, int b); 

// Объявляем функцию которая сравнивает два числа используя функцию сравнения
bool Compare(int a, int b, Comparator @comparator){ 
    return comparator(a,b);
}

void main() {
    // Сравниваем числа и ложим результат в переменные
    bool result1 = Compare(1, 2, function(a,b){ return a == b; });
    bool result2 = Compare(3, 4, function(a,b){ return a != b; });
}
```

> Анонимная функция будет использовать сигнатуру, описанную в [funcdef](function.md)
> поэтому возвращаемый тип и типы аргументов можно опустить.

## Неоднозначность

Если функция [перегружена](function_overload.md) и существует несколько вариантов
использования, то для избежания неоднозначности можно указать тип аргумента.

```C++
funcdef void A(int);
funcdef void B(float);
void Overloaded(A@) {}
void Overloaded(B@) {}

void main()  {
    Overloaded(function(int a) {});
}
```