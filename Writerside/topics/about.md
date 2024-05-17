# Описание

> Данный ресурс работает **только** с патчами `1.24e`, `1.26а`, `1.27a`, `1.27b`, `1.28f` и
> требует [](ujapi.md).
>
{style="note"}

## В чём особенность AngelScript?

<deflist>
<def title="Строгая статическая типизация">
Позволяет не утонуть в море кода и не вызывать случайные методы случайных объектов.
</def>
<def title="Возможность создавать свои объекты">
Окунитесь в мир современного объектно ориентированного программирования с инкапсуляцией, наследованием и куртизанками. 
</def>
<def title="Импорт">
Простой как палка импорт с одной стороны позволит вам не запутаться в именовании, с другой позволит переиспользовать код и во всех ваших проектах.
</def>
<def title="Скорость">
Скорость, максимально приближенная к скорости исполнения движка игры. При высокой нагрузке отсутствие сборщика мусора даёт равномерную нагрузку и избавляет от просадок производительности в момент сборки. 
</def>
</deflist>

## Пример кода

```C++
#include "Scripts\\blizzard.as" // это подключит blizzard.as (транспилированный blizzard.j) в проект.

void SomeFunction(){
   print("SomeFunction\n");
}

void main(){
   TimerStart(CreateTimer(), 1.f, false, @SomeFunction); // @ используется для создания делегата, в данном случае ссылки на функцию.
   TimerStart( CreateTimer(), 1.f, false, function(){
      print("OnSomeTimerAction\n");
   }); // Данный вид написания тоже валиден, в данном случае мы используем лямбду (анонимную функцию).

   // Пример лямбды с триггером.
   trigger tTest = CreateTrigger();
   player p = Player(0);
   TriggerRegisterPlayerEvent(tTest, p, EVENT_PLAYER_ARROW_LEFT_DOWN); // ConvertPlayerEvent(261)
   TriggerAddCondition(tTest, Filter(function(){
      print("OnSomeStupidCond\n");
      return true;
   }));
   TriggerAddAction(tTest, function(){
      print("OnSomeStupidAct\n");
   });
}

void config(){
   // Логика этой функции в точности копирует поведение функции config в Jass, потому тут показывать нечего.
}
```