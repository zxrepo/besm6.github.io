
# Архитектура ЭВМ СВС

ЭВМ СВС была разработана в 1980 году как более быстрая версия ЦП БЭСМ-6 на интегральных схемах.
Официально она называлась Эльбрус-1К2. Она была примерно в два с половиной раза быстрее, чем БЭСМ-6.
Элементной базой была 100 серия ЭСЛ, тактовая частота 20 МГц.
ЭВМ СВС имела до 10 процессоров и до 4х процессоров ввода-вывода (унаследованных от Эльбрус-1).

## Регистры привилегированного режима

В режиме супервизора команда РЕГ позволяет обращаться к управляющим регистрам процессора.

Запись:

Адрес     | Регистр
--------- | -------
000-007   | Запись содержимого сумматора в буферные регистры записи (БРЗ).
0010-0017 | Неспользованные коды.
0020-0027 | Запись содержимого сумматора в регистры приписки пользователя (РАФП).
0030-0033 | Запись содержимого сумматора в регистры защиты пользователя (РЗП).
0034      | Запись содержимого сумматора в регистр конфигурации модулей оперативной памяти (КОП).
0035      | Гашение хранящих разрядов регистра сигналов контроля от оперативной памяти (СКООП).
0036      | Неспользованный код.
0037      | Гашение хранящих разрядов регистра внутренних прерываний (РПР).
0040-0043 | Неспользованные коды.
0044      | Запись содержимого сумматора в регистр тега (ТЕГ).
0045      | Неспользованный код.
0046      | Запись содержимого сумматора в главный регистр маски (ГРМ).
0047      | Гашение хранящих разрядов главного регистра внешних прерываний (ГРВП).
0050      | Запись содержимого сумматора в регистр прерывания центральных процессоров и процессоров ввода-вывода (ПП и ПМП).
0051      | Запись содержимого сумматора в регистр ответов на прерывание процессора СВС-1 другим центральным процессором системы (ОПП) и в регистры гашения ПВВ и ОП.
0052      | Гашение хранящих разрядов регистра прерываний от ЦП и ПВВ (ПОП, ПОМП).
0053      | Гашение хранящих разрядов регистра ответов на прерывание от ЦП (ОПОП).
0054      | Запись содержимого сумматора в регистр конфигурации ЦП в системе и регистр конфигурации ПВВ (КП, КМП).
0055      | Гашение хранящих разрядов регистра сигналов контроля от ЦП и ПВВ (СКОП, СКОМП).
0056      | Запись содержимого сумматора в регистр часов (ЧС).
0057      | Запись содержимого сумматора в таймер (ТМ).
0060-0067 | Запись содержимого сумматора в регистры приписки супервизора (РАФС).
0070-0073 | Запись содержимого сумматора в регистры защиты супервизора (РЗС).
0074-0077 | Запись содержимого сумматора в регистры защиты пользователя по записи (РЗПЗ).
0100-0107 | Установка признаков ПКЛ, ПКП и БРО.
0140      | Гашение таймера и сигнала контроля процессора (СКП).

Чтение:

Адрес     | Регистр
--------- | -------
0200-0207 | Считывание содержимого буферных регистро записи (БРЗ) на сумматор.
0210-0233 | Неспользованные коды.
0234      | Считывание на сумматор содержимого регистра конфигурации модулей оперативной памяти.
0235      | Считывание на сумматор содержимого регистра сигналов контроля от оперативной памяти.
0236      | Считывание на сумматор сигналов запрета запроса в МОП от коммутаторов памяти.
0237      | Считывание на сумматор содержимого регистра внутренних прерываний (РПР).
0240      | Неспользованный код.
0241      | Считывание на сумматор кода строки 1-6 дорожек перфоленты.
0242      | Считывание на сумматор кода синхроимпульса перфоленты.
0243      | Неспользованный код.
0244      | Считывание на сумматор содержимого регистра тега.
0245      | Считывание на сумматор регистра ТЕГБРЧ.
0246      | Считывание на сумматор содержимого главного регистра маски (ГРМ).
0247      | Считывание на сумматор содержимого главного регистра внешних прерываний (ГРВП).
0250      | Считывание на сумматор содержимого регистра номера процессора.
0251      | Неспользованный код.
0252      | Считывание на сумматор содержимого регистра прерываний от ЦП и ПВВ (ПОП, ПОМП).
0253      | Считывание на сумматор содержимого регистра ответов на прерывание от ЦП (ОПОП).
0254      | Считывание на сумматор содержимого регистра конфигурации ЦП и ПВВ в системе (КП и КМП).
0255      | Считывание на сумматор содержимого регистра сигналов контроля от ЦП и ПВВ (СКОП, СКОМП).
0256      | Считывание на сумматор содержимого регистра часов.
0257      | Считывание на сумматор содержимого таймера.
0260-0277 | Неспользованные коды.

## 20-27 - РП, регистры приписки

Регистры приписки определяют для каждой виртуальной страницы номер физической страницы. При трансляции виртуального адреса в физический биты 15:11 задают номер виртуальной страницы. По этому номеру из регистров приписки извлекается номер физической страницы.

Всего имеется 8 регистров приписки по 48 бит. Каждый регистр приписки состоит из четырёх 12-битных полей.

| 48 ... 37 | 36 ... 25 | 24 ... 13 | 12 ... 1 |
| --------- | --------- | --------- | -------- |
| ФИЗ\[i+3] | ФИЗ\[i+2] | ФИЗ\[i+1] |  ФИЗ\[i] |

Поле ФИЗ\[i]: номер физической страницы для виртуальной страницы с индексом i.

## 30-33 - РЗ, регистр защиты

Регистр защиты содержит по одному биту для каждой виртуальной страницы, всего 32 бита. Если бит установлен в единицу, обращение по чтению или записи к этой странице вызывает внутреннее прерывание "Число в чужом листе".

При записи в РЗ биты 28:21 сумматора помещаются в биты РЗ\[8:1] для адреса 30, биты РЗ\[16:9] для адреса 31, биты РЗ\[24:10] для адреса 32, биты РЗ\[32:25] для адреса 33.

| 32 | 31 | ...| 3  | 2  | 1  |
| ---| -- | -- | -- | -- | -- |
| Z31| Z30| ...| Z2 | Z1 | Z0 |

Биты Z31-Z0: запрет обращения к соответствующей виртуальной странице.

## 37 - ГРП, главный регистр прерываний

ГРП показывает состояние внутренних прерываний процессора.

| 48 ... 24 | 23 | 22 | 21 | 20 | 19 18 | 17 | 16 | 15 | 14 | 13 | 12 | 11 10 | 9 ... 5 | 4  | 3 ... 1 |
| --------- | -- | -- | -- | -- | ----- | -- | -- | -- | -- | -- | -- | ----- | ------- | -- | ------- |
|     0     | DZ | OVF| CK | DP |   0   | WPW| WPR| ICK| IP | IL | BP |   0   |  P\[i]  | MCK|  B\[i]  |

Бит DZ: деление на ноль.

Бит OVF: арифметическое переполнение. Также устанавливается в случае деления на ноль.

Бит CK: контроль числа БРЗ (ошибка чётности). Также устанавливается в случае контроля числа МОЗУ, арифметического переполнения и деления на ноль. Поле B\[i] содержит номер блока памяти, вызвавшего прерывание.

Бит DP: нарушение защиты памяти "Число в чужом листе". Поле P\[i] содержит номер страницы, вызвавшей прерывание.

Бит WPW: точка останова по записи.

Бит WPR: точка останова по считыванию.

Бит ICK: попытка выполнить число как команду, "Контроль команды".

Бит IP: передача управления в отсутствующую страницу, "Команда в чужом листе".

Бит IL: попытка выполнить привилегированную команду в режиме пользователя, "Запрещенная команда".

Бит BP: совпадение адреса текущей команды с регистром M34, "Останов по КРА".

Бит P\[i]: номер страницы, вызвавшей нарушение защиты памяти (бит DP).

Бит MCK: контроль числа МОЗУ (ошибка чётности). Также устанавливается в случае арифметического переполнения и деления на ноль. Поле B\[i] содержит номер блока памяти, вызвавшего прерывание.

Бит B\[i]: номер блока памяти, вызвавшего прерывание контроля числа (биты CK или MCK).


## 47 - РВП, регистр внешних прерываний

РВП показывает состояние прерываний, поступивших в процессор от внешних устройств.

| 48 ... 10 | 9  | 8  | 7  | 6  | 5  | 4  | 3  | 2  | 1  |
| --------- | -- | -- | -- | -- | -- | ---| -- | -- | -- |
|     0     | PRG| REQ| RSP| VF | MF | TMR| PVV| MUL| BUT|

Бит PRG: ???

Бит REQ: прерывание от процессоров. Этот бит устанавливается в 1, когда в регистре ПОП (по маске РКП) присутствуют активные биты.

Бит RSP: ответ от процессоров (регистр ОПОП).

Бит VF: авария процессора или ПВВ.

Бит MF: ошибка оперативной памяти.

Бит TMR: прерывание от таймера (регистр 57).

Бит PVV: прерывание от процессора ввода-вывода (ПВВ).

Бит MUL: ???

Бит BUT: нажата кнопка "Запрос" на пульте.


## 50 - ПП, регистр прерываний процессорам

ПП формирует сигналы запроса для процессоров СВС, а также младшую половину байта для модуля передачи данных.

| 48 47 | 46 | 45 | 44 | 43 | 42 | 41 | 40 | 39 | 38 ... 35 | 34 | 33 | 32 ... 1 |
| ----- | -- | -- | -- | -- | -- | -- | -- | -- | --------- | -- | -- | -------- |
|   0   | ?? | ?? | ?? | ?? | R1 | R2 | R3 | R4 |    TDL    | RS | TS |     0    |

Биты R1-R4: запросы для процессоров СВС.

Биты TDL: младшие четыре бита данных для отправки в модуль передачи данных (МПД).

Бит RS: строб подтверждения приема от МПД. Когда этот бит равен 1, МПД обновляет значения полей RDH и RDL в регистрах ПОП и ОПОП.

Бит TS: строб передачи в МПД. Когда этот бит равен 1, четыре бита TDL пересылаются в МПД.


## 51 - ОПП, регистр ответов процессорам

ОПП формирует сигналы ответа для процессоров СВС, а также старшую половину байта для модуля передачи данных.

| 48 47 | 46 | 45 | 44 | 43 | 42 | 41 | 40 | 39 | 38 ... 35 | 34 | 33 | 32 ... 1 |
| ----- | -- | -- | -- | -- | -- | -- | -- | -- | --------- | -- | -- | -------- |
|   0   | ?? | ?? | ?? | ?? | L1 | L2 | L3 | L4 |    TDH    | ?? | TS |     0    |

Биты L1-L4: ответы для процессоров СВС.

Биты TDH: старшие четыре бита данных для отправки в модуль передачи данных (МПД).

Бит TS: строб передачи в МПД. Когда этот бит равен 1, четыре бита TDH пересылаются в МПД.


## 52 - ПОП, регистр прерываний от процессоров

ПОП показывает сигналы запроса от процессоров СВС и от модуля передачи данных.

| 48 47 | 46 | 45 | 44 | 43 | 42 | 41 | 40 | 39 | 38 ... 35 | 34 | 33 | 32 ... 1 |
| ----- | -- | -- | -- | -- | -- | -- | -- | -- | --------- | -- | -- | -------- |
|   0   | ?? | ?? | ?? | ?? | Q1 | Q2 | Q3 | Q4 |    RDH    | RI | TI |     0    |

Биты Q1-Q4: запросы от процессоров СВС.

Биты RDH: старшие четыре бита данных, принятых от модуля передачи данных (МПД).

Бит RI: в приёмный буфер МПД поступили данные для процессора.

Бит TI: передающий буфер МПД пуст и готов принять данные от процессора.


## 53 - ОПОП, регистр ответных прерываний от процессоров

ОПОП отображает сигналы ответов от процессоров СВС и от модуля передачи данных.

| 48 47 | 46 | 45 | 44 | 43 | 42 | 41 | 40 | 39 | 38 ... 35 | 34 | 33 | 32 ... 1 |
| ----- | -- | -- | -- | -- | -- | -- | -- | -- | --------- | -- | -- | -------- |
|   0   | ?? | ?? | ?? | ?? | T1 | T2 | T3 | T4 |    RDL    | 0  | 0  |     0    |

Биты T1-T4: ответы от процессоров СВС.

Биты RDL: младшие четыре бита данных, принятых от модуля передачи данных (МПД).


## 54 - РКП, регистр конфигурации процессоров

РКП задаёт маску процессоров СВС, процессоров ввода-вывода и модуля передачи данных.

| 48 47 | 46 | 45 | 44 | 43 | 42 | 41 | 40 | 39 | 38 | 37 | 36 | 35 | 34 | 33 | 32 ... 1 |
| ----- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -- | -------- |
|   0   | V1 | V2 | V3 | V4 | P1 | P2 | P3 | P4 | ?? | ?? | ?? | ?? | MR | MT |     0    |

Биты V1-V4: наличие процесоров ввода-вывода (ПВВ).

Биты P1-P4: наличие процессоров СВС.

Бит MR: разрешение приёма от модуля передачи данных (МПД).

Бит MT: разрешение прерывания по передаче от МПД.


## TODO
