# CLI

Command Line Interface

## Структура запроса

Запрос начинается с пути к исполняемому файлу в двойных кавычках. Далее следуют команды разделённые пробелом. Кавычки
после команды расцениваются как аргументы.
```Bash
"D:\UjAPI\UjAPILauncher.exe" -ujapi "dev minimised" -window -multiwindow -as -nomapsizelimit
```
> Путь к исполняемому файлу указан для примера. На вашем ПК он может отличаться.

## Список команд с аргументами

<deflist>

<def>
<title><code>-justdoupdate</code></title>
Просто на просто выполнит форсированное скачивание последней версии и выполнит авто-обновление UjAPI, остальные команды будут проигнорированы.
</def>

<def>
<title><code>-fullscreen</code></title>
Запустит приложение в полноэкранном режиме. Опция по умолчанию.
</def>

<def>
<title><code>-window</code></title>
Запустит приложение в оконном режиме.
</def>

<def>
<title><code>-multiwindow</code></title>
Включает режим Multi-Window и загружает необходимый модуль.
</def>

<def>
<title><code>-nomapsizelimit</code></title>
Подгружает модуль <code>UnlockMapSize.dll</code> и убирает лимит веса карт в сетевом режиме игры.
</def>

<def>
<title><code>-d3d</code></title>
Использовать Direct3D для отрисовки. Опция по умолчанию.
</def>

<def>
<title><code>-opengl</code></title>
Использовать OpenGL для отрисовки.
</def>

<def>
<title><code>-swtnl</code></title>
Переносит процесс рендеринга с видеокарты на процессор.
</def>

<def>
<title><code>-classic</code></title>
Запуск Reign of Chaos.
</def>

<def>
<title><code>-ujapi</code></title>
Даёт возможность переопределения некоторых базовых настроек UjAPI.

{style="narrow"}
`dev`
: Включает режим разработчика, которая содержит в себе консоль и логгер ошибок файлов, JASS, фреймов и прочих
ошибок.

`noload`
: Отключает подгрузку UjAPI.mpq и нативок UjAPI.

`minimised`
: Запускает приложение в свёрнутом состоянии.

`tray`
: Запускает приложение и сразу помещает его в трей.

</def>

<def>
<title><code>-jass</code></title>
Даёт возможность переопределения некоторых базовых настроек виртуальной машины JASS.

{style="narrow"}
`dev`
: Включает режим разработчика, которая будет выводить текущую выполняемую/завершённую JASS функцию в консоль.

`console`
: Параллельно запускает консоль отладки.

`logactions`
: Включает режим разработчика, даже если `dev` не была послана. Логирует абсолютно все действия
виртуальной машины JASS.

</def>

<def>
<title><code>-lua</code></title>

Включает lua и даёт возможность переопределения некоторых базовых настроек
`war3_lua.dll`.

{style="narrow"}
`dev`
: Включает режим разработчика, которая позволяет получить доступ к функционалу отладки Lua.

`console`
: Включает консоль для вывода лога/ошибок Lua.

`nowarnings`
: Подавляет вывод предупреждений с низким приоритетом.

</def>

<def>
<title><code>-as</code></title>
Включает AngelScript.

{style="narrow"}
`dev`
: Включает режим разработчика, которая позволяет получить доступ к функционалу отладки AngelScript.

`console`
: Включает консоль для вывода лога/ошибок AngelScript.

`nowarnings`
: Подавляет вывод предупреждений с низким приоритетом.

</def>

<def>
<title><code>-launch</code></title>
Даёт возможность переопределения/указания пути для запуска игры или редактора.

{style="narrow"}
`-`
: Выбор по умолчанию.

`Warcraft 3`
: Запуск игры. Опция по умолчанию.

`Editor`
: Запуск редактора.

</def>

<def>
<title><code>-gamepath</code></title>
Переопределяет и использует путь игры заданный в UjAPI Launcher.

Пример
:
```Bash
-gamepath "D:\Games\Warcraft III TFT\war3.exe"
```

</def>

<def>
<title><code>-editorpath</code></title>
Переопределяет и использует путь редактора заданный в UjAPI Launcher.

Пример
:
```Bash
-editorpath "D:\Programs\WC3 Tools\JNPG-R1.4-Prometheus-Edition\NewGen WE.exe"
```

</def>

<def>
<title><code>-loadfile</code></title>
Один в один повторяет штатный метод запуска карт

Пример
:
```Bash
-loadfile "Maps/Shit/Dnota.w3x"
```

> Путь к карте **всегда** относителен пути исполняемого файла игры, однако для редактора нужно указывать **полный**
> путь.

</def>

<def>
<title><code>-datadir</code></title>
Переопределяет путь к рабочей директории. По словам челов с хайва позволяет оттуда MPQ подгружать.

Пример
:
```Bash
-datadir "D:\War3WorkDir"
```

</def>


</deflist>


