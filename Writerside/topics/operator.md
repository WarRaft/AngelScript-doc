# Операторы

<a href="https://www.angelcode.com/angelscript/sdk/docs/manual/doc_operator_precedence.html"/>

<var name="ltr" value="слева направо"/>
<var name="rtl" value="справа налево"/>

<table>
<tr><td>Оператор</td><td><a href="operator-overload.md">Перегрузка</a></td><td>Описание</td><td>Пример</td></tr>

<tr><td colspan="4">Приоритет: <format style="bold">1</format>, ассоциативность: <format style="bold">нет</format></td></tr>
<tr><td>::</td><td></td><td>Область видимости</td><td>a::b</td></tr>

<tr><td colspan="4">Приоритет: <format style="bold">2</format>, ассоциативность %ltr%: <format style="bold">%ltr%</format></td></tr>
<tr><td>.</td><td></td><td>Доступ к члену</td><td>a.b</td></tr>
<tr><td>[]</td><td>opIndex</td><td>Доступ к индексу</td><td>a[b]</td></tr>
<tr><td>()</td><td>opCall</td><td>Вызов функции</td><td>a(b)</td></tr>
<tr><td>++</td><td><a href="opPostInc.md"/></td><td>Пост-инкремент</td><td>a++</td></tr>
<tr><td>--</td><td><a href="opPostDec.md"/></td><td>Пост-декремент</td><td>a--</td></tr>

<tr><td colspan="4">Приоритет: <format style="bold">3</format>, ассоциативность: <format style="bold">%rtl%</format></td></tr>
<tr><td>++</td><td><a href="opPreInc.md"/></td><td>Пре-инкремент</td><td>++a</td></tr>
<tr><td>--</td><td><a href="opPreDec.md"/></td><td>Пре-декремент</td><td>--a</td></tr>
<tr><td>~</td><td><a href="opCom.md"/></td><td>Побитовое отрицание</td><td>~a</td></tr>
<tr><td>-</td><td><a href="opNeg.md" /></td><td>Математическая смена знака</td><td>-a</td></tr>
<tr><td>!</td><td rowspan="6"></td><td>Логическое НЕ</td><td>!a</td></tr>
<tr><td>not</td><td>Логическое НЕ</td><td>not a</td></tr>
<tr><td>+</td><td>Математическое взятие модуля</td><td>+a</td></tr>
<tr><td>@</td><td>Ссылка</td><td>@a</td></tr>
<tr><td>()</td><td>Приведение типа</td><td>a(b)</td></tr>
<tr><td>cast</td><td>Приведение типа</td><td>cast&lt;a&gt;(b)</td></tr>

<tr><td colspan="4">Приоритет: <format style="bold">4</format>, ассоциативность: <format style="bold">%ltr%</format></td></tr>
<tr><td>**</td><td>opPow</td><td>Возведение в степень</td><td>a**b</td></tr>

<tr><td colspan="4">Приоритет: <format style="bold">5</format>, ассоциативность: <format style="bold">%ltr%</format></td></tr>
<tr><td>*</td><td>opMul</td><td>Умножение</td><td>a*b</td></tr>
<tr><td>/</td><td>opDiv</td><td>Деление</td><td>a/b</td></tr>
<tr><td>%</td><td>opMod</td><td>Остаток от деления</td><td>a%b</td></tr>

<tr><td colspan="4">Приоритет: <format style="bold">6</format>, ассоциативность: <format style="bold">%ltr%</format></td></tr>
<tr><td>+</td><td>opAdd</td><td>Сложение</td><td>a+b</td></tr>
<tr><td>-</td><td>opSub</td><td>Вычитание</td><td>a-b</td></tr>

<tr><td colspan="4">Приоритет: <format style="bold">7</format>, ассоциативность: <format style="bold">%ltr%</format></td></tr>
<tr><td>&lt;&lt;</td><td>opShl</td><td>Битовый сдвиг влево</td><td>a&lt;&lt;b</td></tr>
<tr><td>&gt;&gt;</td><td>opShr</td><td>Битовый сдвиг вправо с сохранением знакового бита</td><td>a&gt;&gt;b</td></tr>
<tr><td>&gt;&gt;&gt;</td><td>opUShr</td><td>Битовый сдвиг вправо с заполнением нулями</td><td>a&gt;&gt;&gt;b</td></tr>

<tr><td colspan="4">Приоритет: <format style="bold">8</format>, ассоциативность: <format style="bold">%ltr%</format></td></tr>
<tr><td>&lt;</td><td rowspan="4"><a href="opCmp.md"/></td><td>Меньше</td><td>a&lt;b</td></tr>
<tr><td>&gt;</td><td>Больше</td><td>a&gt;b</td></tr>
<tr><td>&lt;=</td><td>Меньше или равно</td><td>a&lt;=b</td></tr>
<tr><td>&gt;=</td><td>Больше или равно</td><td>a&gt;=b</td></tr>

<tr><td colspan="4">Приоритет: <format style="bold">9</format>, ассоциативность: <format style="bold">%ltr%</format></td></tr>
<tr><td>==</td><td rowspan="4"><a href="opEquals.md"/></td><td>Равно</td><td>a==b</td></tr>
<tr><td>!=</td><td>Не равно</td><td>a!=b</td></tr>
<tr><td>is</td><td>Принадлежит</td><td>a is b</td></tr>
<tr><td>!is</td><td>Не принадлежит</td><td>a !is b</td></tr>
<tr><td>^^</td><td rowspan="2"></td><td>Логическое исключающее ИЛИ</td><td>a^^b</td></tr>
<tr><td>xor</td><td>Логическое исключающее ИЛИ</td><td>a xor b</td></tr>


<tr><td colspan="4">Приоритет: <format style="bold">10</format>, ассоциативность: <format style="bold">%ltr%</format></td></tr>
<tr><td>&amp;</td><td>opAnd</td><td>Битовое И</td><td>a&amp;b</td></tr>

<tr><td colspan="4">Приоритет: <format style="bold">11</format>, ассоциативность: <format style="bold">%ltr%</format></td></tr>
<tr><td>^</td><td>opXor</td><td>Битовое исключающее ИЛИ</td><td>a^b</td></tr>

<tr><td colspan="4">Приоритет: <format style="bold">12</format>, ассоциативность: <format style="bold">%ltr%</format></td></tr>
<tr><td>|</td><td>opOr</td><td>Битовое ИЛИ</td><td>a|b</td></tr>

<tr><td colspan="4">Приоритет: <format style="bold">13</format>, ассоциативность: <format style="bold">%ltr%</format></td></tr>
<tr><td>&amp;&amp;</td><td rowspan="2"></td><td>Логическое И</td><td>a&amp;&amp;b</td></tr>
<tr><td>and</td><td>Логическое И</td><td>a and b</td></tr>

<tr><td colspan="4">Приоритет: <format style="bold">14</format>, ассоциативность: <format style="bold">%ltr%</format></td></tr>
<tr><td>||</td><td rowspan="2"></td><td>Логическое ИЛИ</td><td>a||b</td></tr>
<tr><td>or</td><td>Логическое ИЛИ</td><td>a or b</td></tr>

<tr><td colspan="4">Приоритет: <format style="bold">15</format>, ассоциативность: <format style="bold">%rtl%</format></td></tr>
<tr><td>? :</td><td></td><td>Тернарный оператор</td><td>a?b:c</td></tr>
<tr><td>=</td><td>opAssign</td><td>Присваивание</td><td>a=b</td></tr>
<tr><td>**=</td><td>opPowAssign</td><td>Присваивающее возведение в степень</td><td>a**=b</td></tr>
<tr><td>*=</td><td>opMulAssign</td><td>Присваивающее умножение</td><td>a*=b</td></tr>
<tr><td>/=</td><td>opDivAssign</td><td>Присваивающее деление</td><td>a/=b</td></tr>
<tr><td>%=</td><td>opModAssign</td><td>Присваивающий остаток от деления</td><td>a%=b</td></tr>
<tr><td>+=</td><td>opAddAssign</td><td>Присваивающее сложение</td><td>a+=b</td></tr>
<tr><td>-=</td><td>opSubAssign</td><td>Присваивающее вычитание</td><td>a-=b</td></tr>
<tr><td>&lt;&lt;=</td><td>opShlAssign</td><td>Присваивающий битовый сдвиг влево </td><td>a&lt;&lt;=b</td></tr>
<tr><td>&gt;&gt;=</td><td>opShrAssign</td><td>Присваивающий битовый сдвиг вправо с сохранением знакового бита</td><td>a&gt;&gt;=b</td></tr>
<tr><td>&gt;&gt;&gt;=</td><td>opUShrAssign</td><td>Присваивающий битовый сдвиг вправо с заполнением нулями</td><td>a&gt;&gt;&gt;=b</td></tr>
<tr><td>&amp;=</td><td>opAndAssign</td><td>Присваивающее битовое И</td><td>a&amp;=b</td></tr>
<tr><td>^=</td><td>opXorAssign</td><td>Присваивающее битовое исключающее ИЛИ</td><td>a^=b</td></tr>
<tr><td>|=</td><td>opOrAssign</td><td>Присваивающее битовое ИЛИ</td><td>a|=b</td></tr>

<tr><td colspan="4">Приоритет: <format style="bold">16</format>, ассоциативность: <format style="bold">%ltr%</format></td></tr>
<tr><td>,</td><td></td><td>Перечисление</td><td>a,b</td></tr>
</table>

## Ассоциативность

Определяет направление разбора выражения.

## Приоритет

Определяет приоритет выполнения операций.

Чем меньше значение в таблице тем приоритет считается выше,
то бишь операция выполнится раньше других. Для операций с одинаковым приоритетом операции будут выполняться в порядке,
заданном ассоциативностью.

## Перегрузка

<a href="https://www.angelcode.com/angelscript/sdk/docs/manual/doc_script_class_ops.html"/>

Метод класса, который используется для перегрузки оператора.