# Образы дисков и лент для эмулятора БЭСМ-6
В этом каталоге находятся бинарные образы дисков и лент
в формате эмулятора SIMH.

| Файл | Том |
| --- | --- |
| sbor2048.bin  | 2048 |
| sbor2053.bin  | 2053 |
| svs2048.bin   | 2148 |
| svs2053.bin   | 2153 |
| svs2113.bin   | 2113 |
| alt2048.bin   | 2248 |
| tape1.bin     | 4001 |
| tape23.bin    | 4023 |

Каждые 8 байтов файла представляют собой 64-битное слово (левые байты вперёд).
В младших 50 битах располагается машинное слово БЭСМ-6. Биты 1-48 (справа
налево, начиная с 1) соответствуют данным, биты 49 и 50 - свёртка.

Каждая зона занимает 8*1032 байт. Первые 8 слов - служебные, затем
1024 слова данных.

Файл tape23.bin сформирован на базе файлов tape2.bin и tape3.bin, содержавших неполностью прочтенные зоны.
Кроме выпадений, единственное отличие между ними - зона 2000, слово 5, байты 160 204 против 076 130.

