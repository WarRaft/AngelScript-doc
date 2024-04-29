# Методы

Методы это функции, которые привязаны к объектам.

[https://www.angelcode.com/angelscript/sdk/docs/manual/doc_script_stdlib_string.html#doc_datatypes_strings_addon_mthd](https://www.angelcode.com/angelscript/sdk/docs/manual/doc_script_stdlib_string.html#doc_datatypes_strings_addon_mthd)

## length

Возвращает размер массива байт.

```C++
uint length()
```

```C++
uint A = "🍒".length(); // 4
```

## resize

Изменяет размер массива содержащего строку.

```C++
void resize(uint size)
```

{type="narrow"}
`size`
: Новый размер строки.
: - Если значение меньше текущего размера, то массив, содержащий байты строки будет обрезан.
: - Если значение больше текущего размера, то массив, содержащий байты строки будет увеличен до указанного размера.
Добавленные байты будут иметь значение ноль.

```C++
string A = "0123456789".resize(4); // "0123"
string B = "0123".resize(10); // "0123\0\0\0\0\0\0"
```

## isEmpty

Возвращает `true` если строка пуста, то бишь массив имеет размер ноль.

```C++
bool isEmpty()
```

Записи ниже эквивалентны:

```C++
bool A = "".isEmpty();
bool B = "".length() == 0;
```

## substr

Возвращает новую строку, которая инициализирована значениями исходной строки.

```C++
string substr(uint start = 0, int count = -1)
```

{type="narrow"}
`start`
: Позиция первого байта который попадёт в новую строку.

`count`
: Максимальное количество байт которые попадут в новую строку.
: - Если значение меньше ноля, то в новую строку
попадут все оставшиеся байты.
: - Если значение превышает размер строки то будет скопировано столько байт
сколько возможно.

```C#
string A = "0123456789".substr(0,-1); // "0123456789"
string B = "0123456789".substr(3,4); // "3456"
string C = "0123456789".substr(9,100); // "9" 
```

## insert

Вставляет в строку другую строку.

```C++
void insert(uint pos, const string &in other)
```

{type="narrow"}
`pos`
: Позиция первого байта куда будет произведена вставка

`other`
: Строка, которая будет вставлена

> Этот метод не изменяет значение текущей строки, а создаёт новую.

```C#
string A = "0123456789".insert(5,"_"); // "01234_56789"
```

## find*

Набор методов, которые возвращают позицию первого или последнего совпадения.

```C++
int findFirst(const string &in str, uint start = 0)
int findLast(const string &in str, int start = -1)
int findFirstOf(const string &in chars, int start = 0)
int findFirstNotOf(const string &in chars, int start = 0)
int findLastOf(const string &in chars, int start = -1)
int findLastNotOf(const string &in chars, int start = -1)
```

{type="narrow"}
`str`
: Поиск завершится если будет найдено **полное** совпадение с переданной строкой

`chars`
: Поиск завершится если будет найдено совпадение с **любым** байтом переданной строки.

`start`
: Позиция с которой начнётся поиск.

```C++
int A = "01234567890".findFirst("0"); // 0
int B = "01234567890".findLast("0"); // 10
```

## split

Разбивает строку в массив строк используя разделитель.

```C++
array<string>@ split(const string &in delimiter)
```

{type="narrow"}
`delimiter`
: Символы используемые в качестве разделителя внутри строки.

```C++
array<string> A@ = "0-1-2-3".split("-"); // ["0","1","2","3"]
array<string> B@ = "0-1-2-3".split("?"); // ["0-1-2-3"]
array<string> С@ = "0-1-2-3".split(""); // ["0","-","1","-","2","-","3"]
array<string> D@ = "".split("?"); // [""]
```