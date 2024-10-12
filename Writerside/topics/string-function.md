# Функции

<a href="https://www.angelcode.com/angelscript/sdk/docs/manual/doc_script_stdlib_string.html#doc_datatypes_strings_addon_funcs" />

Встроенные функции для работы со строками.

## join

Объединяет все элементы массива строк в строку используя разделитель.

```C#
string join(const array<string> &in arr, const string &in delimiter)
```

`arr`
: Входящая ссылка на массив строк.

`delimiter`
: Строка, которая будет помещена между элементами массива при объединении.

```C#
string A = join(array<int> = {"1","2","3","4"}, "-"); // "1-2-3-4"
string B = join(array<int> = {"1","2","3","4"}, ""); // "1234"
```

## parse*

Набор функций для превращения строкового представления числа в число.

```C#
int64 parseInt(const string &in str, uint base = 10, uint &out byteCount = 0)
uint64 parseUInt(const string &in str, uint base = 10, uint &out byteCount = 0)
double parseFloat(const string &in str, uint &out byteCount = 0)
```

`arr`
: Входящая ссылка на строку.

`base`
: Основание [целого числа](integer.md). Допустимо только два значения:
: - `10`
: - `16`

`byteCount`
: [Выходное значение](https://xgm.guru/p/ij/angelscript-function#out) в которое устанавливается количество
байт, которые были учтены.

```C#
int64 A = parseInt("123"); // 123
uint64 B = parseUInt("0xBAD",16); // 2989
double C = parseFloat("-1"); // -1.0d
```

## format*

Набор функций, для превращения числа в строку используя опции форматирования.

```C#
string formatInt(int64 val, const string &in options = "", uint width = 0)
string formatUInt(uint64 val, const string &in options = "", uint width = 0)
string formatFloat(double val, const string &in options = "", uint width = 0, uint precision = 0)
```

`val`
: Число, которое необходимо отформатировать.

`options`
: Набор опций форматирования.

`width`
: Минимальная длинна получившейся строки. Недостающие символы будут заполнены пробелами.

`precision`
: Точность для [вещественных чисел](real.md).

```C#
// l - выравнивание по левому краю
string A = formatInt(3, "", 5); // "    3"
string B = formatInt(3, "l", 5); // "3    "

// 0 - вставляет нули перед число до достижения указанной длины
string C = formatInt(13, "0", 5); // "00013"
string D = formatInt(13, "0", 1); // "13"

// + - всегда указывать знак, если возможно
string E = formatInt(3, "+"); // "+3"

// пробел - добавляет перед положительным числом
string E = formatInt(3, " "); // " 3"
string F = formatInt(-3, " "); // "-3"

// h - использует шестнадцатеричную запись в нижнем регистре, не применимо для formatFloat
// H - использует шестнадцатеричную запись в верхнем регистре, не применимо для formatFloat
string G = formatInt(2989, "h"); // "0xbad"
string H = formatInt(2989, "H"); // "0xBAD"

// e - экспоненциальная запись в нижнем регистре, только для formatFloat
// E - экспоненциальная запись в верхнем регистре, только для formatFloat
string I = formatFloat(1.2345 * 10^4, "e"); // "1.2345e+4"
string J = formatFloat(1.2345 * 10^4, "E"); // "1.2345E+4"
```