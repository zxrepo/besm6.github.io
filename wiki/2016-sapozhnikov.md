
# Дела давно минувших дней

Последний год жизни БЭСМ-6 в ОИЯИ:
![МКБ-8601](/pictures/mkb-8601.jpg)

Весна 1990. Через несколько дней машина (заводской номер 007), прожившая в Лаборатории Вычислительной Техники и Автоматизации ОИЯИ с 1968 года, будет выключена насовсем.

На заднем плане - БЭСМ-6. Видны стойки (слева направо): БРУС,УУ,АУ,УВУ. Не видна (она справа) стойка управления магнитофонами ЕС, сделанная в Дубне около 1976 года.

В центре кадра - Игорь Александрович Емелин (1936-2011), руководитель группы инженеров БЭСМ-6, работающий в ОИЯИ с 1960 года и проживший с этой машиной всю ее жизнь. Сидит перед монитором PC XT, выполнявшей в то время функции связи между БЭСМ-6 и ее настольным потомком, а также функции его консоли.

На переднем плане: в центре - графплоттер фирмы Watanabe, подключенный on-line к БЭСМ-6 и использовавшийся при проектировании новой машины.

Слева - МКБ-8601, макетный образец настольной БЭСМ-6, известный также под именами МикроБ и Ретро-86. По форме - куб с ребром 60 см. К моменту вывода Б6 из эксплуатации был способен выполнять все ее программы, от теста АУ/УУ и до фортранного транслятора. Имел собственную ОС, способную интерпретировать экстракоды ОС Дубна и ОС Диспак. Система команд включала команды старой БЭСМ-6, команды спецпроцессора Эльбрус-Б и собственный оригинальный набор, всего 256 команд.

Разрядность слова – 64, +8 бит тег, разрядность адреса - 20.

Авторский коллектив: А.Л.Давыдов, И.А.Емелин, В.М.Кадыков, Ф.В.Левчановский, М.Ю.Попов, А.П.Сапожников, Т.Ф.Сапожникова, И.Н.Силин.

Эта старая фотография, сделанная лет 30 назад (тогда еще наша лаборатория называлась не ЛИТ, а ЛВТА), побудила меня припомнить историю одной уникальной работы, увы, по очевидным историческим причинам не получившей никакого практического результата, но дающей представление для нынешнего поколения молодых сотрудников о том, как жили и чем занимались их предки в древние, еще доисторические, времена.

Началось все году в 1984 с Феодосия Левчановского, который ныне уже давно работает в ЛНФ, а тогда был у нас в ЛВТА и занимался проектированием электронных схем. Звали его абсолютно все почему-то Ким, а почему – наверное, это уже совсем другая история. Так вот, Ким по своей производственной нужде часто бывал в машинном зале БЭСМ-6, где все мы постоянно паслись, и общался весьма активно с Валерием Кадыковым. Наблюдая вблизи БЭСМ, машину, как известно, третьего поколения, но сделанную на элементной базе второго, он как-то имел неосторожность высказаться, что такую машину можно бы сделать и на более современной база, т.е. в интегральном исполнении. А Кадыков тогда занимался практическим применением системы автоматизации проектирования печатных плат, которая тогда как раз жила и активно эксплуатировалась именно на БЭСМ и называлась, помнится, ЕСАПИ-2Б (буква "Б" в ее названии – именно от БЭСМ!). Кадыков-то, к удовольствию членов помянутого будущего авторского коллектива, и подловил Кима на слове!

Проект начали писать все вместе. А чтобы упростить Киму жизнь, решено было использовать принцип микропрограммного управления. Таким образом, первым шагом явилось написание кросс-системы МИКРОБ, работавшей на БЭСМ для подготовки микропрограмм новый машины.

Проект был абсолютно неформальным, он не фигурировал ни в каких планах или отчетах ЛВТА, базировался исключительно на энтузиазме участников. Крейт и необходимый для изготовления макетного экземпляра машины набор микросхем достали т.н. хозспособом. Затраты серого вещества участников, естественно, никто не учитывал.

Забавная подробность: на фотографии МКБ-8601 зоркий глаз наверное разглядит на лицевой стороне крейта слева большой тумблер с надписями 'БЫСТРО' и 'МЕДЛЕННО'. Большинство видевших макетный образец почему-то считали, что тумблер переключает быстродействие машины! На самом деле он переключал скорость работы вентилятора, встроенного в крейт!  Что же касается быстродействия, то оно было около 100000 команд/сек. У БЭСМ-6, если помните, было 900000. Так что, учитывая микропрограммный принцип управления, результат получился неплохой.

Первый вариант проекта машины был показан тогдашнему руководству ЛВТА в лице Н.Н.Говоруна. Он не только одобрил нашу самодеятельность, но и предложил ряд идей по преодолению исконных недостатков оригинальной БЭСМ-6, таких как малую разрядность порядков чисел и малый размер адресного пространства. В результате длина машинного слова МКБ увеличилась c 48 до 64. Появилась в проекте и модная тогда теговская архитектура. К сожалению, Николай Николаевич так и не увидел машину 'в железе', он умер в 1989 году.

Неформальным руководителем проекта стал доктор физ-мат. наук, профессор И.Н.Силин (1936-2006). Вот маленькая заметка о нем, написанная в свое время М.И.Гуревичем (КИАЭ), одним из создателей ОС БЭСМ-6:

"… он пришел в ОИЯИ в 1959 году после окончания физического факультета МГУ. Игорь Николаевич был участником и соавтором большей части работ по фазовому анализу, выполненных в институте. Успехи ОИЯИ в этой области во многом обусловлены созданным им алгоритмом минимизации нелинейных функционалов. Программы И.Н.Силина, реализующие этот алгоритм, уже более 40 лет активно используются учеными многих стран.

Определяющий вклад он внес в создание математического обеспечения ЭВМ БЭСМ-6, составившей целую эпоху в истории отечественной вычислительной техники. Операционная система "Дубна", созданная под его руководством, оставила впечатляющий след в истории системного программирования. Эта его деятельность была в 1974 году отмечена орденом Трудового Красного Знамени. Будучи выдающимся специалистом как в области математических методов решения физических задач, так и в области системного и прикладного программирования, обладая высокой научной принципиальностью, исключительной личной скромностью и бескорыстием, он пользовался заслуженным авторитетом и уважением среди сотрудников Института.

Игорь Николаевич был живой легендой Дубны. Лабораторию вычислительной техники и автоматизации, впоследствии Лабораторию информационных технологий, невозможно представить без Силина. Он воспринимался как символ и одновременно дух-покровитель программирования в ОИЯИ и многих других  научных организациях. Одна из самых лестных  характеристик  программиста - “он работал с Силиным”. Игорь Николаевич был из тех первых, кто создавал в ОИЯИ профессию системного программиста. Многие уже забыли, что когда-то этой профессии просто не было. В 60-ые, 70-ые годы советское системное программирование было вполне конкурентоспособно с западным. И Игорь Николаевич был в этом деле одним из самых талантливых разработчиков, создателем школы.

Создание профессиональной школы удается мало кому. Для этого недостаточно одной научной одаренности. Для этого нужно очень четко чувствовать людей и уметь разглядеть в них личности, а ведь Силин не производил впечатления человека, легкого в общении. Тем не менее, людей тянуло к нему, как магнитом. Одна из причин этого в том, что никто никогда не сомневался в его кристальной порядочности. Другая причина - это полное отсутствие в нем интеллектуального снобизма.

Козьма Прутков говорил, что специалист подобен флюсу. И это одна из самых больших бед современной науки. Игорь Николаевич представлял счастливое исключение из этого правила. Широта его интересов позволила  ему несколько раз кардинально менять область деятельности. Более того, он постоянно совмещал работу по нескольким направлениям. Игорь Николаевич - один из немногих людей, кого можно назвать универсальным специалистом по созданию и применению вычислительной техники. Под его научным руководством защищено более десятка диссертаций.

Уникальность школы Силина также в том, что она включала специалистов из доброго десятка городов, причем держалась она без  административных формальностей. Многие люди достаточно разных специальностей специально приезжали в Дубну поговорить с Силиным, и эти разговоры всегда были продуктивными и полезными.

Игорь Николаевич был научной совестью лаборатории. На любом Ученом Совете или семинаре он всегда высказывал объективную, часто жесткую, но тем не менее доброжелательную оценку научных работ и идей. Даже в наше  сложное время он как никто был далек от всякой дипломатии, закулисных интриг и околонаучных дрязг.

Cначала как оппонент, а потом как член ВАК, он не жалел своих сил на изучение и экспертизу диссертаций. Часто, будучи экспертом, найдя  слабости в работах, он помогал авторам их преодолеть. Его помощь и поддержка для многих людей была неоценима.

Интересы Игоря Николаевича не были замкнуты на одну только работу.  Много лет он был председателем городской секции плавания и сам показывал превосходные спортивные результаты. Он редко ходил пешком, его можно было видеть только на велосипеде или на лыжах. Даже в Дубне, где специалисты по сбору грибов растут гуще, чем грибы, Игорь Николаевич выделялся своим профессионализмом. Он отважно перепробовал все грибы, определенные справочником как съедобные и условно съедобные, чем проложил дорогу всей  Дубне к расширению меню. И тут проявилась широта его натуры: он не  скрывал своих заветных мест!"

![МКБ-8601](/pictures/Silin-198x.jpg)

От себя добавлю, что и на этом снимке И.Н.Силин изображен на фоне БЭСМ-6. Фото остальных участников проекта не привожу, они еще работают в ОИЯИ.

Двое самых молодых тогда, М.Ю.Попов и А.Л.Давыдов (61 г.р.), давно затерялись где-то между США и Канадой.

Чем же все это закончилось? Макетный экземпляр заинтересовал специалистов из Московского научно-производственного объединения Радиоприбор. Они предложили развернуть мелкосерийное производство. Увы, им не понравилась наша ориентация на двухслойные печатные платы. Они предложили свою, 8-слойную, и переделали наш проект под нее. Первое полученное ими изделие оказалось почему-то в 4 раза больше нашего по размеру, а самое главное – оно просто не заработало! Это был типичный русский случай: можем создать уникальную вещь, а повторить ее даже в малой серии – не можем! Вот так все и закончилось... Тем не менее, мы, участники этой истории, до сих пор считаем этот период лучшим временем в своей жизни.

Сапожников А.П.
2016 год.

[Оригинал статьи, PDF](http://lit.jinr.ru/Books/PDF/112_118.pdf)
