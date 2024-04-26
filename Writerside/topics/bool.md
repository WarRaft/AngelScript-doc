<show-structure for="chapter,procedure" depth="2"/>

# bool

Простейший тип, который принимает всего два значения:

{type="narrow"}
`true`
: Истина. Указывает на верность условия или утверждения.

`false`
: Ложь. Указывает на неверность условия или утверждения.

## Операторы {id="bool-operator"}

### Присваивание {id="bool-assign"}

Сохранение значения второго операнда в объект, указанный первым операндом.

```c++
bool A = true;
```

### Отрицание {id="bool-negation"}

Логическое [отрицание](https://w.wiki/88Li) - унарная операция результатом которой является значение, противоположное
исходному.

```c++
bool A = !true; // false
bool B = not false; // true
```

### Равенство {id="bool-equality"}

Оператор равенства `==` возвращает значение `true`, если его операнды равны. В противном случае возвращается `false`.

```c++
bool A = true == false; // false
```

### Неравенство {id="bool-inequality"}

Оператор неравенства `!=` возвращает значение `true`, если его операнды не равны. В противном случае
возвращается `false`.

```c++
bool A = true != false; // true
```

### И {id="bool-and"}

Логическое [И](https://w.wiki/9tF2) - операция, которая возвращает `true` если оба операнда равны `true`. В противном
случае возвращается `false`.

```c++
bool A = true && true; // true
bool B = true and false; // false
```

### ИЛИ {id="bool-or"}

Логическое [ИЛИ](https://w.wiki/9tFE) - операция, которая возвращает `true` если один из операндов равен `true`. В
противном случае возвращается `false`.

```c++
bool A = true || true; // true
bool B = true or false; // true
```

### Исключающее ИЛИ {id="bool-xor"}

Логическое [исключающее ИЛИ](https://w.wiki/5GTh) - операция, которая возвращает `true` если один из операндов
равен `true`, а второй `false`. В противном случае возвращается `false`.

```c++
bool A = true ^^ true; // false
bool B = true xor false; // true
```

[https://www.angelcode.com/angelscript/sdk/docs/manual/doc_datatypes_primitives.html#bool](https://www.angelcode.com/angelscript/sdk/docs/manual/doc_datatypes_primitives.html#bool)