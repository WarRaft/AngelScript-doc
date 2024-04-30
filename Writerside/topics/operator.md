# Операторы

<table>
<tr><td>Приоритет</td><td>Ассоциативность</td><td>Оператор</td><td>Описание</td><td>Пример</td></tr>
<tr><td>1</td><td>Нет</td><td>::</td><td>Область видимости</td><td>a::b</td></tr>
<tr><td rowspan="5">2</td><td rowspan="5">Левая</td><td>.</td><td>Доступ к члену</td><td>a.b</td></tr>
<tr><td>[]</td><td>Доступ к индексу</td><td>a[b]</td></tr>
<tr><td>()</td><td>Вызов функции</td><td>a(b)</td></tr>
<tr><td>++</td><td>Пост-инкремент</td><td>a++</td></tr>
<tr><td>--</td><td>Пост-декремент</td><td>a--</td></tr>
<tr><td rowspan="10">3</td><td>Правая</td><td>++</td><td>Пре-инкремент</td><td>++a</td></tr>
<tr><td>Правая</td><td>--</td><td>Пре-декремент</td><td>--a</td></tr>
<tr><td>Правая</td><td>~</td><td>Побитовое отрицание</td><td>~a</td></tr>
<tr><td>Правая</td><td>!</td><td>Логическое НЕ</td><td>!a</td></tr>
<tr><td>Правая</td><td>not</td><td>Логическое НЕ</td><td>not a</td></tr>
<tr><td>Правая</td><td>-</td><td>Математическая смена знака</td><td>-a</td></tr>
<tr><td>Правая</td><td>+</td><td>Математическое взятие модуля</td><td>+a</td></tr>
<tr><td>Правая</td><td>@</td><td>Ссылка</td><td>@a</td></tr>
<tr><td>Правая</td><td>()</td><td>Приведение типа</td><td>a(b)</td></tr>
<tr><td>Правая</td><td>cast</td><td>Приведение типа</td><td>cast&lt;a&gt;(b)</td></tr>
<tr><td>4</td><td>Левая</td><td>**</td><td>Возведение в степень</td><td>a**b</td></tr>
<tr><td rowspan="3">5</td><td>Левая</td><td>*</td><td>Умножение</td><td>a*b</td></tr>
<tr><td>Левая</td><td>/</td><td>Деление</td><td>a/b</td></tr>
<tr><td>Левая</td><td>%</td><td><a href="https://learn.microsoft.com/ru-ru/cpp/cpp/multiplicative-operators-and-the-modulus-operator">Модуль (оставшаяся часть от деления)</a></td><td>a%b</td></tr>
<tr><td rowspan="2">6</td><td>Левая</td><td>+</td><td>Сложение</td><td>a+b</td></tr>
<tr><td>Левая</td><td>-</td><td>Вычитание</td><td>a-b</td></tr>
<tr><td rowspan="3">7</td><td>Левая</td><td>&lt;&lt;</td><td>Битовый сдвиг влево</td><td>a&lt;&lt;b</td></tr>
<tr><td>Левая</td><td>&gt;&gt;</td><td>Битовый сдвиг вправо</td><td>a&gt;&gt;b</td></tr>
<tr><td>Левая</td><td>&gt;&gt;&gt;</td><td>Битовый сдвиг вправо с сохранением знакового бита</td><td>a&gt;&gt;&gt;b</td></tr>
<tr><td rowspan="4">8</td><td>Левая</td><td>&lt;</td><td>Меньше</td><td>a&lt;b</td></tr>
<tr><td>Левая</td><td>&gt;</td><td>Больше</td><td>a&gt;b</td></tr>
<tr><td>Левая</td><td>&lt;=</td><td>Меньше или равно</td><td>a&lt;=b</td></tr>
<tr><td>Левая</td><td>&gt;=</td><td>Больше или равно</td><td>a&gt;=b</td></tr>
<tr><td rowspan="6">9</td><td>Левая</td><td>==</td><td>Равно</td><td>a==b</td></tr>
<tr><td>Левая</td><td>!=</td><td>Не равно</td><td>a!=b</td></tr>
<tr><td>Левая</td><td>^^</td><td>Логическое исключающее ИЛИ</td><td>a^^b</td></tr>
<tr><td>Левая</td><td>xor</td><td>Логическое исключающее ИЛИ</td><td>a xor b</td></tr>
<tr><td>Левая</td><td>is</td><td>Принадлежит</td><td>a is b</td></tr>
<tr><td>Левая</td><td>!is</td><td>Не принадлежит</td><td>a !is b</td></tr>
<tr><td>10</td><td>Левая</td><td>&amp;</td><td>Битовое И</td><td>a&amp;b</td></tr>
<tr><td>11</td><td>Левая</td><td>^</td><td>Битовое исключающее ИЛИ</td><td>a^b</td></tr>
<tr><td>12</td><td>Левая</td><td>|</td><td>Битовое ИЛИ</td><td>a|b</td></tr>
<tr><td rowspan="2">13</td><td>Левая</td><td>&amp;&amp;</td><td>Логическое И</td><td>a&amp;&amp;b</td></tr>
<tr><td>Левая</td><td>and</td><td>Логическое И</td><td>a and b</td></tr>
<tr><td rowspan="2">14</td><td>Левая</td><td>||</td><td>Логическое ИЛИ</td><td>a||b</td></tr>
<tr><td>Левая</td><td>or</td><td>Логическое ИЛИ</td><td>a or b</td></tr>
<tr><td rowspan="14">15</td><td>Правая</td><td>? :</td><td>Тернарный оператор</td><td>a?b:c</td></tr>
<tr><td>Правая</td><td>=</td><td>Присваивание</td><td>a=b</td></tr>
<tr><td>Правая</td><td>**=</td><td>Присваивающее возведение в степень</td><td>a**=b</td></tr>
<tr><td>Правая</td><td>*=</td><td>Присваивающее умножение</td><td>a*=b</td></tr>
<tr><td>Правая</td><td>/=</td><td>Присваивающее деление</td><td>a/=b</td></tr>
<tr><td>Правая</td><td>%=</td><td>Присваивающее деление с остатком</td><td>a%=b</td></tr>
<tr><td>Правая</td><td>+=</td><td>Присваивающее сложение</td><td>a+=b</td></tr>
<tr><td>Правая</td><td>-=</td><td>Присваивающее вычитание</td><td>a-=b</td></tr>
<tr><td>Правая</td><td>&lt;&lt;=</td><td>Присваивающий битовый сдвиг влево</td><td>a&lt;&lt;=b</td></tr>
<tr><td>Правая</td><td>&gt;&gt;=</td><td>Присваивающий битовый сдвиг вправо</td><td>a&gt;&gt;=b</td></tr>
<tr><td>Правая</td><td>&gt;&gt;&gt;=</td><td>Присваивающий битовый сдвиг вправо с сохранением знакового бита</td><td>a&gt;&gt;&gt;=b</td></tr>
<tr><td>Правая</td><td>&amp;=</td><td>Присваивающее битовое И</td><td>a&amp;=b</td></tr>
<tr><td>Правая</td><td>^=</td><td>Присваивающее битовое исключающее ИЛИ</td><td>a^=b</td></tr>
<tr><td>Правая</td><td>|=</td><td>Присваивающее битовое ИЛИ</td><td>a|=b</td></tr>
<tr><td>16</td><td>Левая</td><td>,</td><td>Перечисление</td><td>a,b</td></tr>
</table>

## Ассоциативность

Определяет направление разбора выражения.

Левая
: Слева направо

Правая
: Справа налево

Для примера возьмём правостороннее присваивание с левосторонним сложением:

```
a = b = c + d + e
```

Чтоб не вдаваться в подробности, представим что компилятор под капотом заведёт переменную `x` для промежуточных
вычислений и тогда порядок будет таким:

```
x = c + d
x = x + e
b = x
a = b
```

Для любителей байт-кода выражение будет выглядеть так:

```C++
ASSIGN(a, ASSIGN(b, ADD(ADD(c, d), e)))
```

## Приоритет

Операции выполняются не слева на право, а следуя приоритету. Чем меньше значение в таблице тем приоритет считается выше,
то бишь операция выполнится раньше других. Для операций с одинаковым приоритетом операции будут выполняться в порядке,
заданном ассоциативностью.

Возьмём операции с разным приоритетом, например присваивание, умножение и сложение:

```
a = b + c * d
```

Вспомнив про переменную `x` из прошлого абзаца, запишем порядок выполнения:

```
x = c * d
x = b + x
a = x
```

Так же не забудем про любителей байт-кода:

```C++
ASSIGN(a, ADD(b, MUL(c, d)))
```

https://www.angelcode.com/angelscript/sdk/docs/manual/doc_operator_precedence.html