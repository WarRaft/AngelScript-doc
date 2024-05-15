<show-structure for="chapter,procedure" depth="3"/>

# Group.as

<a href="https://github.com/WarRaft/AngelScript-doc/blob/main/Framework/Group.as"/>

Тип `group` встроен в игру и под капотом представляет собой [связанный список](https://w.wiki/7$D5) элементов
типа `unit`.

Особенность его реализации такова, что он состоит только из уникальных элементов, то бишь в него невозможно дважды
добавить одного и того же <tooltip term="unit">юнита</tooltip>.

> Из-за требования к уникальности содержимого добавление, удаление и поиск элемента выполняются за `O(n)`.

## Конструктор

Определён только конструктор по умолчанию.

```C++
Group A;

void main(){
    Group B;
}
```

## Деструктор

При уничтожении класса `Group` будет уничтожен игровой объект `group`, таким образом предотвращая утечку памяти.

## Методы

### insert

Добавляет в группу одного или несколько <tooltip term="unit">юнитов</tooltip>.

<br/>

```C++
Group@ insert(unit target)
```
Добавляет в группу <tooltip term="unit">юнита</tooltip> `target`.

<br/>

```C++
Group@ insert(string unitname, uint limit = 0)
```

Все <tooltip term="unit">юниты</tooltip> с именем `unitname` будут добавлены в группу.

> Узнать `unitname` можно в `units.slk`. 

<br/>

```C++
Group@ insert(float x, float y, float radius, uint limit = 0)
```

Все <tooltip term="unit">юниты</tooltip>, находящиеся на расстоянии `radius` от точки `x`, `y` будут добавлены в группу.

> Расстояние считается от центра юнита.

<br/>

```C++
Group@ insert(rect rectangle, uint limit = 0)
```

Добавляет в группу всех <tooltip term="unit">юнитов</tooltip>, находящихся в прямоугольнике `rectangle`.

<br/>

```C++
Group@ insert(player owner, bool selected = false)
```

Если `selected` равно `false` добавляет в группу выбранные <tooltip term="unit">юниты</tooltip> игрока `owner`. Иначе
добавляет <tooltip term="unit">юниты</tooltip> игрока `owner`.

<br/>


`limit`
: Если значение больше ноля, то добавление закончится когда будет добавлено `limit` <tooltip term="unit">
юнитов</tooltip>.

```C++
Group A;

void main(){
    A
        .insert(CreateUnit(Player(0), 'hpea', 0.f, 0.f, 0.f)) // Создаём крестьянина в центре карты и добавляем в группу
        .insert("footman", 5) // Добавляем в группу пять футманов
        .insert(10.0f, 20.0f, 100.f) // Добавляем в группу всех юнитов на расстоянии 100 от точки 10,20
        .insert(bj_mapInitialPlayableArea, 3) // Добавляем три юнита на карте
        .insert(Player(1)); // Добавляем всех юнитов синего игрока 
}
```

### remove

Удаляет юнита из группы.

```C++
Group@ remove(unit u)
```

### length

Возвращает количество юнитов в группе.

```C++
uint length()
```

### first

Возвращает первого юнита в группе.

```C++
unit first()
```

### clear

Очищает группу.

```C++
Group@ clear()
```

### contains

Возвращает, находится ли юнит в группе.

```C++
bool contains(unit u)
```

### order

Отдаёт приказ всем юнитам в группе.

```C++
bool order(string order)
bool order(int order)
bool order(string order, float x, float y)
bool order(int order, float x, float y)
bool order(string order, widget target)
bool order(int order, widget target)
```

### each

Итератор для перебора всех юнитов группы.

```C++
funcdef void GroupCallback(unit, const Group@ &in);
Group@ each(GroupCallback@ callback)
```

## Операторы

`[]`
: Доступ по индексу

`+`, `+=`
: Сложение

`+`, `+=`
: Вычитание

`=`
: Присваивание
