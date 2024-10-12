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

```C#
Group A;

void [[[main|main.md]]](){
    Group B;
}
```

## Деструктор

При уничтожении класса `Group` будет уничтожен игровой объект `group`, таким образом предотвращая утечку памяти.

## Методы

### insert

Добавляет в группу одного или несколько <tooltip term="unit">юнитов</tooltip>.

<table>

<tr><td>Перегрузки</td></tr>

<tr><td>
<code-block lang="C++">
Group@ insert(unit target)
</code-block> Добавляет в группу <tooltip term="unit">юнита</tooltip> <code>target</code>.
</td></tr>

<tr><td>
<code-block lang="C++">
Group@ insert(string unitname, uint limit = 0)
</code-block> Все <tooltip term="unit">юниты</tooltip> с именем <code>unitname</code> будут добавлены в группу. Все <code>unitname</code> перечислены в <code>units.slk</code>.
</td></tr>

<tr><td>
<code-block lang="C++">
Group@ insert(float x, float y, float radius, uint limit = 0)
</code-block> Все <tooltip term="unit">юниты</tooltip>, находящиеся на расстоянии <code>radius</code> от точки <code>x</code>, <code>y</code> будут добавлены в группу. Расстояние считается от центра юнита.
</td></tr>

<tr><td>
<code-block lang="C++">
Group@ insert(rect rectangle, uint limit = 0)
</code-block> Добавляет в группу всех <tooltip term="unit">юнитов</tooltip>, находящихся в прямоугольнике <code>rectangle</code>.
</td></tr>

<tr><td>
<code-block lang="C++">
Group@ insert(player owner, bool selected = false)
</code-block> Если <code>selected</code> равно <code>false</code> добавляет в группу выбранные <tooltip term="unit">юниты</tooltip> игрока <code>owner</code>. Иначе
добавляет <tooltip term="unit">юниты</tooltip> игрока <code>owner</code>.
</td></tr>

</table>

`limit`
: Если значение больше ноля, то добавление закончится когда будет добавлено `limit` <tooltip term="unit">
юнитов</tooltip>.

```C#
Group A;

void [[[main|main.md]]](){
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

```C#
Group@ remove(unit u)
```

### length

Возвращает количество юнитов в группе.

```C#
uint length()
```

### first

Возвращает первого юнита в группе.

```C#
unit first()
```

### clear

Очищает группу.

```C#
Group@ clear()
```

### contains

Возвращает, находится ли юнит в группе.

```C#
bool contains(unit u)
```

### order

Отдаёт приказ всем юнитам в группе.

```C#
bool order(string order)
bool order(int order)
bool order(string order, float x, float y)
bool order(int order, float x, float y)
bool order(string order, widget target)
bool order(int order, widget target)
```

### each

Итератор для перебора всех юнитов группы.

```C#
funcdef void GroupCallback(unit, const Group@ &in);
Group@ each(GroupCallback@ callback)
```

## Операторы

`[]`
: Доступ по индексу

`+`, `+=`
: Сложение

`-`, `-=`
: Вычитание

`=`
: Присваивание
