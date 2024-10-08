<show-structure for="chapter,procedure" depth="3"/>

# Функции

<a href="https://www.angelcode.com/angelscript/sdk/docs/manual/doc_script_func.html"/>

Функции — это блоки кода, выполняющие определенные операции.

## main

Начальная точка исполнения, которая вызывается приблизительно на _70%_ загрузки карты и до её вызова запрещено
создавать игровые объекты.

```C++
void main(){
  // Код начнёт исполняться здесь и можно создавать игровые объекты за исключением фреймов.
}
```

> В момент вызова `main` фреймы ещё не созданы, поэтому используйте таймер с нулевой задержкой.

## Вызов функции

Любую функцию можно вызвать из любой функции.

```C++
void main(){ // Эта функция будет вызвана интерпретатором
  A(); // Вызываем объявленную ниже функцию A
}
void A(){
  print("Эта функция выведет этот текст в консоль");
}
```

### Рекурсия

[Рекурсия](https://w.wiki/9q4Z) это вызов функции из самой себя.

```C++
int A = 0;
void main(){
  A++; // увеличиваем значение переменной A на единицу
  print("Выводим этот текст в консоль");
  if (A < 5) main(); // повторно вызываем функцию main если A меньше 5
}
```

## Возвращаемое значение

Функции могут, но не обязаны возвращать значения. Для возврата значения используется ключевое слово `return`.

```C++
int A(){ // Объявляем функцию A которая возвращает значение типа int
  return 5; // Возвращаем значение типа int равное 5
}
int B = A(); // Присваиваем глобальной переменной B результат вызова функции A, тобишь 5
```

### void

Чтобы обозначить, что функция ничего не возвращает, используется ключевое слово `void`:

```C++
void main(){} // Эта функция никому ничего не возвращает
```

### Возврат ссылки

Функции могут возвращаться ссылки используя оператор `&`.

```C++
int A; // Объявляем неинициализированную переменную A типа int
int& B(){ // Объявляем функцию, которая вернёт ссылку на переменную типа int
  return A;
}
void main(){
  B() = 5; // Вызываем функцию B и устанавливаем возвращаемой переменной A значение 5
}
```

Для обеспечения гарантий, что ссылка не умрёт раньше времени установлены следующие правила для возвращаемых значений:

<deflist>
<def>
<title><a href="variable.md#global" /></title> Разрешены, так как живут всё время исполнения кода. 
</def>
<def>
<title><a href="variable.md#local" /></title> Запрещены, ибо будут очищены сразу после возврата. 
</def>
<def>
<title>Члены класса</title> Разрешены. Родительская функция будет хранить ссылку на экземпляр класса до своей смерти. 
</def>
</deflist>

## Аргументы

Функции могут иметь [параметры](https://w.wiki/9pwD) - специальные переменные, которые являются частью сигнатуры
функции. Когда у функции есть параметры, вы можете предоставить ей конкретные значения этих параметров.

> Технически конкретные значения называются аргументами, но такое разделение, как ни парадоксально, вносит много
> путаницы.
> Поэтому здесь и далее термины [параметр](https://w.wiki/9vig) и [аргумент](https://w.wiki/8NLF) будут использованы как
> взаимозаменяемые для обозначения либо переменных в определении функции, либо конкретных
> значений, передаваемых при вызове функции.

```C++
void A(string B, string C) { // Объявление функции с именем A, которая принимает две строки B и C
    print(B+" "+C); // Делаем конкатенацию строк и выводим результат в консоль
}
void main(){
    A("Продам", "гараж"); // Вызываем функцию A и передаём ей две строки аргументами
}
```

> Если аргументов больше одного, то они вычисляются в обратном порядке, то бишь последний аргумент будет вычислен
> первым.

### const

Так же как и в [переменных](variable.md#const), ключевое слово `const` запрещает
изменение значения аргумента в процессе исполнения функции.

```C++
void A(const int B){
    B++; // Ошибка! Аргумент B объявлен как const
}
void main(){
    A(5);
}
```

### Начальные значения аргументов

Аргументам можно установить начальное значение которое будет подставлено компилятором если аргумент не будет передан.
Если одному из аргументов указано начальное значение, то всем последующим аргументам оно так же должно быть установлено.

```C++
string A = "Москве";

void B(string C, string D="гараж", string E=A){
    print(C+" "+D+" в "+E+"\n");
}

void main(){
    B("Продам"); // Выведет: Продам гараж в Москве
    B("Продам", "квартиру"); // Выведет: Продам квартиру в Москве
    B("Пропью", "деньги", "кабаке"); // Выведет: Пропью деньги в кабаке
}
```

> Начальное значение аргумента может включать переменные или вызов функций только если они доступны из глобальной
> области видимости.

### Аргументы по ссылке

По умолчанию аргументы в функцию передаются по значению, то бишь при входе в функцию значения всех переданных в функцию
аргументов копируются. Для расширения возможностей существует несколько типов передачи аргументов по ссылке.

#### in

Входящая ссылка _только_ для чтения. При работе со строками может сэкономить вам памяти, так как не будет происходить
копирование памяти.

```C++
void A(string& in B){
    print(B);
}
string C = "Привет!";
void main {
    A(C); // В функцию будет передана ссылка на переменную, копирование памяти не произойдёт.
    A("Допустимо передавать значение напрямую без помещения в переменную");
}
```

> Использование с [примитивами](data-types.md#primitive) допустимо, но бесполезно.

##### const {id="in_const"}

При попытке присвоить значение входящей ссылке компилятор сгенерирует ошибку. Посему для пущей оптимизации и явного
указания недопустимости записи рекомендуется явно указывать [const](https://xgm.guru/p/ij/angelscript-function#const):

```C++
void A(string& in B, const string& in C){
    B = "Ошибка! Запрещено присваивать значение входящим ссылкам!";
    C = "Ошибка! Аргумент C объявлен как const"
}
```

#### out

Ссылка для записи выходного значения.

```C++
int divide(int a, int b, int& out remainder) {
    remainder = a % b; // записываем остаток от деления в переменную для выхода
    return a / b; // возвращаем результат деления
}

void main() {
    int remainder;
    int result = divide(10, 3, remainder);
}
```

С помощью ключевого слова `void` можно сделать выходной параметр необязательным.

```C++
int divide(int a, int b, int& out remainder = void) {
    remainder = a % b; // записываем остаток от деления в переменную для выхода
    return a / b; // возвращаем результат деления
}

void main() {
    int result = divide(10, 3);
}
```

#### inout

Ссылка для входа-выхода. Просто указывает на фактическое значение. Для обеспечения гарантии того, что ссылка будет
существовать всё время существования функции разрешено передавать только ссылочные типы.

> Рекомендуется использовать короткую запись в виде `&`.

```C++
funcdef void A(); // Объявляем сигнатуру функции.
void B(){
    print("Функция вызвана по ссылке");
}
void C(A& D){
    D(); // Вызываем функцию, переданную по ссылке
};
void main(){
    C(@B); // Передаём функцию по ссылке
}
```