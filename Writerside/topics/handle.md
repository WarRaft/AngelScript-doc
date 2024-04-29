# handle

Ссылки на внутриигровые объекты. Являются [uint32](integer.md) и в первом приближении можно относиться к ним как к
примитивам.

> Полный список типов находится в [common.j](https://github.com/UnryzeC/UjAPI/blob/main/uJAPIFiles/common.j).  

```C++
void main(){
   trigger tTest = CreateTrigger();
   player p = Player(0);
   TriggerRegisterPlayerEvent(tTest, p, EVENT_PLAYER_ARROW_LEFT_DOWN);

   timer tmr = CreateTimer(); // Создаём таймер 

   TimerStart(tmr, 1.f, false, function(){
      print("Выводим сообщение в консоль по истечении таймера");
   });
}
```