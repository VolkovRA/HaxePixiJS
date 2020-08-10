# Haxe определения для PixiJS

Описание
------------------------------

Это общий репозиторий для всех определений PixiJS и некоторых, отдельных её библиотек.
Определения для каждой конкретной либы содержатся в отдельной папке.
При использовании экстернов вы должны подключить соответствующий, скомпилированный js файл.

Определения
------------------------------
||Название|Бинарник|Репо|
|:-|:-|:-:|:-|
|1|Ядро PixiJS|[pixi.min.js](https://github.com/VolkovRA/HaxePixiJS/tree/master/bin/lib/pixi.min.js "pixi.min.js")|https://github.com/pixijs/pixi.js|
|2|Фильтры|[pixi-filters.js](https://github.com/VolkovRA/HaxePixiJS/tree/master/bin/lib/pixi-filters.js "pixi-filters.js")|https://github.com/pixijs/pixi-filters|
|3|Звук|[pixi-sound.js](https://github.com/VolkovRA/HaxePixiJS/tree/master/bin/lib/pixi-sound.js "pixi-sound.js")|https://github.com/pixijs/pixi-sound|

- *п.с. Пополняется и обновляется по мере необходимости.*
- *п.с.2 В core и filters надо провести тотальную ревизию, так как core взят из стороннего репо и содержит ошибки.*

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