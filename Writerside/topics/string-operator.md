# Операторы

<a href="https://www.angelcode.com/angelscript/sdk/docs/manual/doc_script_stdlib_string.html#doc_datatypes_strings_addon_ops"/>

Определяют разрешённые операции над [строками](string.md).

## Присваивание {id="assign"}

Строки, как и примитивы, присваиваются по значению с помощью [оператора](operator.md)
присваивания.

{type="compact"}
`=`
: Присваивание

```C#
string A = "Будет создан массив байт который будет эквивалентен представлению этого текста";
string B = A; //Будет создана копия массива байт переменной A и присвоен переменной B
```

## Конкатенация {id="concat"}

В первом приближении [конкатенация](https://w.wiki/9eWw) это просто склеивание нескольких строк в одну с
помощью [операторов](operator.md) сложения.

{type="compact"}
`+`
: Сложение

`+=`
: Присваивающее сложение

```C#
string A = "Эти" "литералы" "будут" "объединены" "в" "одну" "строку" "при" "компиляции";
string B = A + "Конкатенация с помощью оператора сложения"
string C = B + 1 + 2.f + true; // Конкатенация примитивов допустима
void [[[main|main.md]]](){
    С += "Конкатенация с помощью оператора присваивающего сложения";
}
```

## Равенство {id="equal"}

Применяет [оператор](operator.md) равенства к каждому байту строки.

{type="compact"}
`==`
: Равно

{type="compact"}
`!=`
: Не равно

```C#
bool A = "A" == "B"; // false
bool B = "A" != "B"; // true
```

> Первым действием сравниваются длины строк. Строки разной длины не равны.

## Сравнение {id="compare"}

Применяет [оператор](operator.md) сравнения к каждому байту строки.

{type="compact"}
`<`
: Меньше

`>`
: Больше

`<=`
: Меньше или равно

`>=`
: Больше или равно

Если байты на одной и той же позиции в обеих строках равны, сравнение продолжается сравнением следующих байт. Если в
какой-то момент байты не равны, строка с большим значением байта считается большей.

Если строки разной длины одинаковы до момента различия длин, то большей считается более длинная строка.

```C#
bool A = "Z" > "A"; // true: байтовое представление Z = 90, A = 65
bool B = "Z" > "AAAAA"; // true: несмотря на большую длину, сравнение будет окончено на первом же байте Z > A
bool C = "Z" > "ZZ"; // false: байты на первой позиции одинаковы, на второй же позиции у первой строки нет байт
bool D = "ZZ" >= "ZZ"; // true: строки побайтово равны
bool E = "🍒" > "💋"; // false: [F0, 9F, 8D, 92] > [F0, 9F, 92, 8B] => F0==F0; 9F==9F; 8D < 92  
```

## Доступ по индексу {id="index"}

Возвращает байт на указной позиции с помощью [оператора](operator.md) доступа по индексу.

{type="compact"}
`[]`
: Доступ по индексу

```C#
int8 A = "🍒"[3]; // 146
```