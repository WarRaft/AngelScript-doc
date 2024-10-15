# Перегрузка

<a href="https://www.angelcode.com/angelscript/sdk/docs/manual/doc_script_func_overload.html"/>

Объявление нескольких функций в одном пространстве имён с одинаковым именем и различным набором аргументов
называется [перегрузкой функции](https://learn.microsoft.com/en-us/cpp/cpp/function-overloading?view=msvc-170).

```C#
void Log(string Msg){}
void Log(int Msg){}

void [[[main|main.md]]](){
    Log("1"); // Будет вызвана: void Log(string Msg)
    Log(1); // Будет вызвана: void Log(int Msg)
}
```

Перегрузки размечаются на этапе компиляции и компилятор пытается найти самую подходящую функцию для вызова основываясь
на [типах](data-types.md) параметров. Тип возвращаемого значения не влияет на выбор функции.

## Приведение типов

При передаче аргумента в функцию происходит неявное приведение типов:

```C#
void A(int64 B){
    print(B);
}
void [[[main|main.md]]](){
    A(1); // Передаём числовой литерал, который расценивается как int32
}
```

При выборе подходящей функции происходит подсчёт стоимости преобразования каждого аргумента. Если по итогу окажется две
функции с одинаковой стоимостью, то будет сгенерирована ошибка.

## const

Стоимость `const` учитывается при расчёте, но при идентичных типах приводит к неоднозначности.

```C#
void A(int B){}
void A(const int B){}
void [[[main|main.md]]](){
    A(1); //Ошибка! Две функции подходят под условие перегрузки
}
```

## Ссылки

Ссылки учитываются при расчёте, но при идентичных типах приводят к неоднозначности.

```C#
void A(int B){}
void A(int& B){}
void [[[main|main.md]]](){
A(1); //Ошибка! Две функции подходят под условие перегрузки
}
```

## Числа

Все числа совместимы. В некоторых случаях с потерей байт или изменением значения.

Преобразования происходят в следующем порядке.

| Преобразование                                                      | Пример             |
|---------------------------------------------------------------------|--------------------|
| [Перечисление](enum.md) в [целое число](integer.md) того же размера | `enum` ➡ `int32`   |
| [Перечисление](enum.md) в [целое число](integer.md) другого размера | `enum` ➡ `int64`   |
| Увеличение размерности числа                                        | `float` ➡ `double` |
| Уменьшение размерности числа                                        | `int64` ➡ `int32`  |
| _Знаковое_ целое в _беззнаковое_                                    | `int32` ➡ `uint32` |
| _Беззнаковое_ целое в _знаковое_                                    | `uint32` ➡ `int32` |
| _Целочисленное_ в _вещественное_                                    | `int32` ➡ `float`  |
| _Вещественное_ в _целочисленное_                                    | `double` ➡ `int64` |

Преобразования происходят последовательно, ниже приведено несколько примеров.

| Цель преобразования | Цепочка преобразования                           |
|---------------------|--------------------------------------------------|
| `enum` ➡ `int64`    | `enum` ➡ `int64`                                 |
| `int8` ➡ `uint64`   | `int8` ➡ `int16` ➡ `int32`➡ `int64` ➡ `uint64`   |
| `double` ➡ `uint16` | `double` ➡ `int64`➡ `int32` ➡ `int16` ➡ `uint16` |
| `int32` ➡ `uint64`  | `int32` ➡ `int64`➡ `uint64`                      |

## Поиск функции

После нахождения всех подходящих функций для каждой позиции аргумента будет построен список подходящих функций. Возьмём
для примера несколько функций:

```C#
void A(int8 B, int16 C, int32 D){}; // I
void A(int32 B, int16 C, int8 D){}; // II
void A(string B, int16 C, int8 D){}; // III
```

<tabs>
<tab title="Пример 1">

```C#
A(int16(1), int16(1), int32(1));
```

| `int16`                 | `int16` | `int32`                           | ➡ |
|-------------------------|---------|-----------------------------------|---|
| `I`: `int16` ➡ `int8`   | `I`     | `I`                               | 1 |
| `II`: `int16` ➡ `int32` | `II`    | `II`: `int32` ➡ `int16` ➡ `int8`  | 3 |
| ❌                       | `III`   | `III`: `int32` ➡ `int16` ➡ `int8` | ❌ |

Наименьшее количество преобразований имеет `I`, он и будет вызван.

</tab>
<tab title="Пример 2">

```C#
A(int16(1), uint16(1), int16(1));
```

| `int16`                 | `uint16`                  | `int16`                 | ➡ |
|-------------------------|---------------------------|-------------------------|---|
| `I`: `int16` ➡ `int8`   | `I`: `int16` ➡ `uint16`   | `I`: `int16` ➡ `int32`  | 3 |
| `II`: `int16` ➡ `int32` | `II`: `int16` ➡ `uint16`  | `II`: `int16` ➡ `int8`  | 3 |
| ❌                       | `III`: `int16` ➡ `uint16` | `III`: `int16` ➡ `int8` | ❌ |

Две функции с одинаковым количеством преобразований приведут к неоднозначности и будет сгенерирована ошибка.

</tab>
</tabs>