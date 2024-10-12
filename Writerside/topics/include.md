# include

Вставляет код из внешнего файла. Путь относителен для того файла, в котором используется `include`.

```C#
#include "Scripts\\blizzard.as"
```

> Для того, чтоб выйти в родительскую директорию используется специальное имя `..`.


Разрешено использовать только в корне файла или в [пространстве имён](namespace.md).

<deflist>
<def>
<title><code>A.as</code></title>
<code-block lang="c++">
int A = 1;
</code-block>
</def>
</deflist>


<deflist>
<def>
<title><code>main.as</code></title>
<code-block lang="c++">
<![CDATA[
#include "A.as"

namespace N {
    #include "A.as"
}

void [[[main|main.md]]](){
    print(A); 
    print(N::A);
}
]]>
</code-block>
</def>
</deflist>