<show-structure for="chapter,procedure" depth="2"/>

# Методы

<a href="https://www.angelcode.com/angelscript/sdk/docs/manual/doc_datatypes_arrays.html#doc_datatypes_array_addon_mthd"/>

Методы это функции, которые привязаны к объектам.

## length

Возвращает размер массива.

```C#
uint length()
```

```C#
uint A = {0,1,2}.length(); // 3
```

## resize

Изменяет размер массива.

```C#
void resize(uint size)
```

`size`
: Новый размер массива.
: - Если значение меньше текущего размера, то массив будет обрезан.
: - Если значение больше текущего размера, то массив будет увеличен до указанного размера.
Добавленные элементы будут инициализированы [значениями по умолчанию](variable.md#initial-value).

```C#
array<int> A = {0,1,2,3,4,5,6,7,8,9}.resize(4); // [0, 1, 2, 3]
array<int> B = {0,1,2,3}.resize(10); // [0,1,2,3,0,0,0,0,0,0]
```

## reverse

Изменяет порядок элементов в массиве.

```C#
void reverse()
```

```C#
void [[[main|main.md]]](){
    array<int> A = {0,1,2,3,4};
    A.reverse(); // [4,3,2,1,0]
}
```

## insert*

Набор функций, для добавления значений в массив.

```C#
void insertAt(uint index, const T& in value)
void insertAt(uint index, const array<T>& values)
void insertLast(const T &in value)
```

`index`
: Позиция на которую будет вставлен новый элемент

`value`
: Значение, которое будет вставлено

`values`
: Массив значений которые будут вставлены

```C#
void [[[main|main.md]]](){
    array<int> A = {0,1,2,3};
    A.insertAt(1, 9); // [0,9,1,2,3]

    array<int> B = {0,1,2,3};
    B.insertAt(1, array<int> = {9,8,7}); // [0,9,8,7,1,2,3]
    
    array<int> C = {0,1,2,3};
    C.insertLat(9); // [0,1,2,3,9]
}
```

## remove*

Набор функций для удаления значений из массива.

```C#
void removeAt(uint index)
void removeRange(uint index, uint count)
void removeLast()
```

`index`
: Позиция элемента, который будет удалён.

`count`
: Количество элементов которые будут удалены.

```C#
void [[[main|main.md]]](){
    array<int>A = {0,1,2,3};
    A.removeAt(2); // [0,1,3]
    
    array<int>B = {0,1,2,3,4,5,6};
    B.removeRange(2,3); // [0,1,5,6]
    
    array<int>C = {0,1,2,3};
    C.removeLast(); // [0,1,2]
}
```

## sort*

Набор функций для сортировки элементов массива.

```C#
void sortAsc() // Сортировка по возрастанию
void sortAsc(uint startAt, uint count)
void sortDesc() // Сортировка по убыванию
void sortDesc(uint startAt, uint count)
void sort(const &in compareFunc, uint startAt = 0, uint count = uint(-1))
```

> Для сравнения используется `opCmp` метод.

`startAt`
: Позиция элемента, с которого начинается сортировка

`count`
: Количество элементов, участвующих в сортировке

`compareFunc`
: Функция для сортировки.

```C#
void [[[main|main.md]]](){
    array<int>A = {3,2,1,0};    
    A.sortAsc(); // [0,1,2,3]
    
    array<int>B = {5,4,3,2,1,0};    
    A.sortAsc(1,4); // [5,1,2,3,4,0]
}
```

### Компаратор

Функция, используемая для сравнения. Принимает два аргумента и возвращает `true` или `false`. Если функция
вернула `true`, то это значит, что первый аргумент будет расположен перед вторым.

```C#
bool compare(const int &in a, const int &in b){
    return a > b;
}

void [[[main|main.md]]](){
    array<int> A = {3,2,1,0};
    A.sort(function(a,b) { return a < b; }); // [0,1,2,3]
    A.sort(compare); // [3,2,1,0]
}
```

## find*

Набор функций для поиска индекса элемента в массиве. При отсутствии значения будет возвращено отрицательное значение.

```C#
int find(const T& in value)
int find(uint startAt, const T& in value)
int findByRef(const T& in value)
int findByRef(uint startAt, const T& in value)
```

`startAt`
: Начальный индекс, с которого начнётся поиск

`value`
: Значение, индекс которого ищется

> Для сравнения используются методы `opEquals` или `opCmp`.

```C#
int A = {0,1,2,3}.find(2); // 2
int B = {0,1,2,3}.find(3,2); // -1
```

> `ByRef` ищут конкретные экземпляры объектов, но как именно это работает мне было лень разбираться.
