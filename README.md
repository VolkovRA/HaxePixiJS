# Haxe определения для PixiJS

Описание
------------------------------

Это общий репозиторий для всех определений [PixiJS](https://www.pixijs.com/) и некоторых,
отдельных её библиотек. Определения перенесены вручную и содержат полную документацию по API
из официальной справки.

Дизайн апи немного отличается от оригинала в пользу более привычного и понятного для Haxe стиля.  
Пример:

|Базовое определение|Haxe определение|
|:-|:-|
|`PIXI.DisplayObject`|`pixi.display.DisplayObject`|
|`PIXI.utils`|`pixi.Utils`|
|`PIXI.filters.BlurFilter`|`pixi.filters.BlurFilter`|

Все енумы, константы и перечисления для удобства вынесен в отдельную папку `pixi.enums`. Вы по прежнему
можете найти перечисления в их стандартном месте, например: `Pixi.GC_MODES`.

Все события и определение `EventEmitter`'а вынесены в папку `pixi.events`. (Аля Flash стиль)

Классы и определения, назначение которых мне было не очень понятно, вынесены в папку `pixi.utils`.

Каждое определение содержит подпись из какой библиотеки оно используется. Так, для звука и
большинства графических фильтров классы помечены в описании как: *Library:* **sound** или *Library:* **filters** соответственно. Не забудьте, что при использовании экстернов вы должны подключить скомпилированный js файл из соответствующей библиотеки.
(Фильтры, звук, ядро)

Определения
------------------------------
||Название|Метка|Бинарник|Репо|
|:-|:-|:-:|:-:|:-|
|1|Ядро PixiJS|**core**|[pixi.min.js](https://github.com/VolkovRA/HaxePixiJS/tree/master/bin/lib/pixi.min.js "pixi.min.js")|https://github.com/pixijs/pixi.js|
|2|Фильтры|**filters**|[pixi-filters.js](https://github.com/VolkovRA/HaxePixiJS/tree/master/bin/lib/pixi-filters.js "pixi-filters.js")|https://github.com/pixijs/pixi-filters|
|3|Звук|**sound**|[pixi-sound.js](https://github.com/VolkovRA/HaxePixiJS/tree/master/bin/lib/pixi-sound.js "pixi-sound.js")|https://github.com/pixijs/pixi-sound|

Добавление библиотеки
------------------------------

1. Установите haxelib себе на локальную машину, чтобы вы могли использовать библиотеки Haxe.
2. Установите pixi себе на локальную машину, глобально, используя cmd:
```
haxelib git pixi https://github.com/VolkovRA/HaxePixiJS master
```
Синтаксис команды:
```
haxelib git [project-name] [git-clone-path] [branch]
haxelib git minject https://github.com/massiveinteractive/minject.git         # Use HTTP git path.
haxelib git minject git@github.com:massiveinteractive/minject.git             # Use SSH git path.
haxelib git minject git@github.com:massiveinteractive/minject.git v2          # Checkout branch or tag `v2`.
```
3. Добавьте библиотеку pixi в ваш Haxe проект.

Дополнительная информация:
 * [Документация Haxelib](https://lib.haxe.org/documentation/using-haxelib/ "Using Haxelib")
 * [Документация компилятора Haxe](https://haxe.org/manual/compiler-usage-hxml.html "Configure compile.hxml")
 * [PixiJS — The HTML5 Creation Engine](https://www.pixijs.com/ "PixiJS — The HTML5 Creation Engine")