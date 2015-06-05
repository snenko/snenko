﻿-- --------------------------------------------------------
-- Сервер:                       127.0.0.1
-- Версія сервера:               5.5.41-log - MySQL Community Server (GPL)
-- ОС сервера:                   Win32
-- HeidiSQL Версія:              9.1.0.4867
-- --------------------------------------------------------

DROP TABLE IF EXISTS `blog`;
CREATE TABLE IF NOT EXISTS `blog` (
  `blogid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `blogupdate` datetime DEFAULT NULL,
  `blogstatus` varchar(1) DEFAULT NULL,
  `mask` varchar(500) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`blogid`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
DELETE FROM `blog`;
INSERT INTO `blog` (`blogid`, `title`, `body`, `blogupdate`, `blogstatus`, `mask`, `userid`) VALUES
	(8, 'ЕСТЬ ЛЮДИ И ЕСТЬ МЕСТА  ч.1', '<span style="color: rgb(0, 0, 0); font-family: \'Lucida Grande\', Arial, tahoma, verdana, sans-serif; font-size: 12px; line-height: 19.2000007629395px; background-color: rgb(255, 255, 255);"><b>ЕСТЬ ЛЮДИ И ЕСТЬ МЕСТА </b></span><div><b style="color: rgb(0, 0, 0); font-family: \'Lucida Grande\', Arial, tahoma, verdana, sans-serif; line-height: 19.2000007629395px;">Часть 1</b><div><b><br style="color: rgb(0, 0, 0); font-family: \'Lucida Grande\', Arial, tahoma, verdana, sans-serif; font-size: 12px; line-height: 19.2000007629395px; background-color: rgb(255, 255, 255);" /></b><span style="color: rgb(0, 0, 0); font-family: \'Lucida Grande\', Arial, tahoma, verdana, sans-serif; font-size: 12px; line-height: 19.2000007629395px; background-color: rgb(255, 255, 255);">(2003г.)</span></div><div><span style="color: rgb(0, 0, 0); font-family: \'Lucida Grande\', Arial, tahoma, verdana, sans-serif; font-size: 12px; line-height: 19.2000007629395px; background-color: rgb(255, 255, 255);"><br /></span></div><div><span style="color: rgb(0, 0, 0); font-family: \'Lucida Grande\', Arial, tahoma, verdana, sans-serif; font-size: 12px; line-height: 19.2000007629395px; background-color: rgb(255, 255, 255);"><br /></span></div><div><span style="color: rgb(0, 0, 0); font-family: \'Lucida Grande\', Arial, tahoma, verdana, sans-serif; font-size: 12px; line-height: 19.2000007629395px; background-color: rgb(255, 255, 255);">Кто-то может не понять того, о чем я сейчас расскажу. Я уже могу не помнить деталей, но суть, саму суть, надеюсь, смогу передать. С тех пор прошло немало лет, но, как и все в этом мире, история эта началась в один день...<br /><br />Я, как всегда, в тот день проснулась в вагоне метро. Честно говоря, в последнее время ничего, кроме метро, и не помнила. Я просыпалась всегда в одном и том же вагоне, на одной и той же станции… всегда в 18.32… Просыпалась, хотя совершенно не помнила, ложилась ли я здесь спать. Я, как будто, включалась и все. Я не помнила, ела ли я что-то, но чувства голода не испытывала. Перед глазами всегда были толпы людей. Люди меня иногда раздражали. Иногда просто надоедали. Я выходила из вагона на ближайшей станции… Садилась на лавочку и пыталась собраться с мыслями. Так было каждый день… Я наблюдала за пассажирами. Вслушивалась в разговоры, но не понимала ни какой сейчас год, ни какой месяц…Я не могла ответить, ни на какой хронологический вопрос, кроме разве, что того, что мне 19 лет. Почему то в этом я была уверенна на 100%. Не помнила где живу сейчас, хотя о том, где проживала раньше, вполне, могла рассказать. Я всего боялась. Страх жил внутри меня. Причины ему небыло. Но я боялась всего. Заговорить с людьми, своей амнезии, но больше всего боялась выйти из метро… От одной мысли об этом у меня замирало сердце. Прошибало в холодный пот, и подкашивались ноги… <br />Если честно, я думала, что серьезно больна. Возможно у меня какая-то фобия или шизофрения - рассуждала я. Никогда не была сильна в такой науке как психология, но ведь ясно, же как божий день, что со мной что - то очень не в порядке. Люди тоже не обращали на меня внимания. Но это было гораздо лучше, чем если бы они тыкали в меня пальцами и кричали - « Психопатка!»<br />Собаки, редкие гости подземки, шарахались от меня. Говорят, собаки чуют, когда человек болен. Вот и мой случай доказывал это. А еще я отлично понимала, что всё это началось после моей попытки самоубийства. Это тоже произошло в метро. Я тогда тоже была в ужасном состоянии. Я стояла на краю платформы и думала о том, что смерть лучший вариант, но я боялась и поэтому не прыгнула сразу. Я стояла и смотрела вниз, пока не услышала звук приближающегося поезда. Звук нарастал, и я вдруг поняла, что этот способ не лучший. И что мне, пожалуй, нужно еще пожить на этом свете. И в момент, когда все это пришло мне в голову, кто-то толкнул меня в спину. Не сильно. И, я думаю, не специально. Я не удержала равновесия и упала. Дальше сплошная полоса беспамятства, вплоть до того как несколько дней назад (сколько я точно не помню), я снова оказалась в метро. Хотя память начинала возвращаться… Хотя бы потому, что я помнила то, что произошло вчера… Настораживало отсутствие чувства голода, но мама говорила, что при нервном перенапряжении человек довольно долго может обходиться без еды.<br />Мама…<br />Вечность назад я приехала от подруги домой и увидела пожарные машины… толпы соседей и машину скорой помощи. Дома как такового уже почти не осталось. Взрыв газа… насколько я поняла… да я мало что поняла тогда…Я смотрела как выносят тела…одно за другим… Мама, папа, Корри…мой младший брат…Как же я терпеть его не могла! Доставучая такая мелюзга и вредная! А вот теперь я смотрела на то, как лежит его маленькое тело… в саже, копоти…. И я бы, не раздумывая, отдала бы свою жизнь взамен его…Я не верила во взрыв газа. Соседи шептались о том, что час назад около дома остановился фургон, а через секунду дом уже пылал от взрыва…Я знала, что у отца были какие-то проблемы. Но меня никогда не волновало это. Я думала о подругах, походах в магазин, о парнях… Мой папа был мэром нашего городка, и я жила вполне отличной жизнью. Разговоры родителей на кухне о звонках и угрозах я слышала, но пропускала «мимо ушей». Джон Харпер был чертовски спокойным человеком. Он не давал мне почувствовать ни тени тревоги. Мой отец никогда небыл трусом. И только потом я поняла, что именно в моменты, когда ситуация с угрозами накалялась - он отправлял меня к Шерон…Я была у нее и в тот день. Мама же, обычно, забирала Корри к бабушке…В наше отсутствие отец все улаживал. И вскоре жизнь входила в обычное русло.<br />Но все люди ошибаются. И он просчитался. Где-то недосмотрел, чего-то не предусмотрел. И моя семья погибла, в один день. Я осталась одна. Из родных была только бабушка, но она жила в соседнем городе и я сразу как-то о ней не подумала. Да о чем я могла подумать? Моя жизнь рухнула. Я хлопнулась с ванильных небес в реальный мир. В весь ужас того, что произошло .Меня забрала семья Шерон. Три дня я лежала в кровати и не могла ни есть, ни спать… Три дня слились в сплошной бред и ступор. Шерон позвонила в какой-то реабилитационный центр. Меня определили в больницу - похожую на санаторий. Там мне стало еще хуже. Я насмотрелась чужого горя и окончательно зациклилась на своём. От таблеток я стала спокойной. Все что во мне накопилось - просто затаилось внутри, и когда подруга забрала меня к себе я сбежала от нее. Написав на прощание, что мне не нужна подруга, готовая запереть меня в психушку. Тогда я и спустилась в метро…<br />И вот результат: неудачная попытка суицида подарила мне амнезию и уродливый отпечаток на шее, толи шрам то ли ожег. Мерзкая красная полоса, я увидела его в отражении на окнах вагона. В который раз я оценила преимущество толпы, где никому до тебя нет дела. Никто не обращает внимания на еще одну ненормальную. Хватит с меня и собак.<br /><br />Но в тот день ,когда началась эта история все было иначе...</span></div></div>', '2015-05-23 00:09:48', '1', NULL, 1),
	(9, 'ЕСТЬ ЛЮДИ И ЕСТЬ МЕСТА ч.2', '<b>ЕСТЬ ЛЮДИ И ЕСТЬ МЕСТА ч.2</b><div><br /></div><div>На платформе кто-то окликнул меня. Я испугалась ,а в тайне обрадовалась…Может меня ищут? Полиция или Шерон!! Может бабушка. Я ведь так и не поехала к ней. Я застыла в нерешительности. Но мужской голос ясно повторил моё имя.</div><div>- Трэйси Харпер?!</div><div>Я обернулась. «Уж лучше пусть меня найдут и упекут в больницу ,чем мучаться от того, что я не знаю что со мной»- подумала я тогда. Я посмотрела на, позвавшего меня, парня. Ему на вид было около 25ти и он был мне не знаком.</div><div>- Откуда вы знаете мое имя?- я подошла ближе.</div><div>- Я много чего знаю и хочу вам помочь,- он слегка улыбнулся, - Но для начала, может быть выйдем отсюда?</div><div>- Хорошо,- согласилась я. Страх выйти из метро внезапно отступил. Терять мне было нечего и я ничем не рисковала.</div><div>Пока мы поднимались на эскалаторе ,я успела рассмотреть своего спутника. Он был довольно высоким. Выше меня почти на голову. Среднего телосложения,смуглый, кареглазый, темноволосый. Линии лица его были мягкими, он сразу показался мне добрым. Не хорошим, не положительным, а именно добрым. У него был уверенный взгляд, голос, походка, но я почувствовала какую-то параллель между его внешностью и тем кто он есть на самом деле. Это звучит странно, мол увидела и сразу поняла характер человека. Я не могу этого объяснить. Я просто была уверенна- ему можно доверять. Мама говорила. что я чую характер человека за милю, а сейчас мои чувства обострились раз в десять. Причины тому небыло. Так случилось.</div><div>Мы вышли из подземки, немного прошлись по улице и свернули в парк. Там мы расположились на скамейке. Я не могла нарадоваться солнечному свету. Вокруг сияло лето. Цвета были на столько яркими, что хотелось прищурить глаза… Вокруг небыло ни души, где –то неподалеку гудел город, но я не замечала всего этого. Я наслаждалась ощущением тепла и свободного пространства, а так-же отсутствием суетливой толпы вокруг.</div><div>- Так откуда вы меня знаете?- спросила я.</div><div>- Я журналист,- ответил парень,- Общаюсь с разными людьми. Я знал вашего отца.</div><div>- Вы о нем писали?</div><div>- Да .И о вас тоже.- он снова слегка улыбнулся.</div><div>- Ага…- мне показалось , что я все поняла.- Вот значит как? Что –то типа « Неудачная попытка суицида!» или « Дочь мэра -Анна Каренина». Что-то такое ?! Да?!!</div><div>- Нет. Я не печатаю некрологов,- он запнулся на секунду,- и тому подобных вещей. Я пишу о разных вещах . Не слишком близких к материальному.</div><div>- Не важно. Вы сказали , что хотите мне помочь? Как?</div><div>- Я могу дать вам время спокойно реабилитироваться.</div><div>- Я уже была в клинике,- он начал меня откровенно раздражать.</div><div>- Помогло?</div><div>- Нет . Стало хуже.</div><div>Он кивнул, будто соглашаясь со мной.</div><div>- Я журналист. Я редко бываю дома. Мне нужен помощник. Круглосуточно. Домочадцев у меня немного - тётя и дедушка, оба люди престарелые. Но не волнуйтесь. Они вполне здоровы для своих лет и не требуют специального ухода. Еще есть собака. Которую нужно выгуливать. На вас будет помощь по дому и иногда присмотр за садом. Ничего сложного.</div><div>- Вам нужна домработница?</div><div>-Да. Жилье, питание, зарплата- это за мной.</div><div>- Хорошо,- согласилась я тогда. Безысходность была гораздо страшнее.</div><div>-Но как вы нашли меня и почему именно меня?</div>', '2015-05-23 00:10:41', '1', NULL, 1),
	(10, 'ЕСТЬ ЛЮДИ И ЕСТЬ МЕСТА ч.3', '<b>ЕСТЬ ЛЮДИ И ЕСТЬ МЕСТА ч.3</b><div><br /></div><div>- Нашел потому , что искал именно вас. А именно вас потому , что знал- вам некуда идти.</div><div>- У меня есть бабушка,- возразила я.</div><div>- Она умерла через четыре месяца после гибели вашей семьи.</div><div>- Я не знала, - мне стало вдруг так стыдно. Пока носилась со своими эмоциями, лежала в клинике. Злилась на Шерон, бродила черт знает где- умер последний мой близкий человек. А я даже не знала об этом.- Спасибо что сказали,- я хотела пожать ему руку , но он вдруг покраснел и убрал от меня руку.</div><div>- Простите, у меня аллергия на посторонних людей. Только на родителей такого нет.</div><div>- Простите, - что дальше делать я не знала.</div><div>- Ничего. Иногда это проходит,- он смотрел в землю,- но длится недолго. Около трёх дней.</div><div>- Всего?</div><div>- Да. Это врожденное. – Вдруг он рассмеялся,- вот глупо –то! Я же до сих пор не представился! Доусон Форест- журналист и первый заместитель главного редактора журнала «Мистик».</div><div>- Приятно познакомиться,- улыбнулась я,- Обо мне вы и так все знаете. Так что представляться смысла нет. И ,да, я согласна на ваше предложение.</div><div>- Тогда предлагаю поехать и посмотреть то место, которое станет вашим домом на ближайшее время. Я не на машине, так что добираться нужно будет общественным транспортом.</div><div>- Хорошо,- ответила я. Выбора у меня все равно небыло. Снова в метро я однозначно не хотела.</div><div>Должа признаться в том, что у Доусона фореста была масса врожденных талантов. Он писал самые увлекательные статьи о невероятном из всех которые я читала. И нравились они мне не потому , что нравился Форест, а потому , что были интересными. Доусон работал в центре города. А его дом находился практически на самой окраине города. И далеко не в самом благополучном районе. Вокруг были небольшие домики обычных работяг. Домики с облупившейся краской на стенах, покосившимися заборчиками и старыми деревьями во дворах.</div><div>Доусон следил за своим домом практически сам. Умел превосходно готовить. Не имел вредных привычек, а еще заботился о двух стариках. Идеал? «Так не бывает»- подумала я. Но не стоит забегать вперед. Я обещала рассказать все по порядку. Проходя в тот, самый первый день, мимо его соседей, я заметила как они шепчутся у нас за спинами.</div><div>- У тебя нелады с соседями,- спросила я,- Не пойми меня неправильно, но мне здесь работать, а у них довольно странная реакция на наше появление.</div><div>- Они старухи , которым нечего больше делать, как обсуждать других,- ответил он,-В этом доме давно никто не жил, а когда здание пустует годами- о нем начинают ходить слухи. Со временем это пройдет. Привыкнут. Я ведь недавно здесь поселился. Через время все встанет на свои места. Сама увидишь.</div><div>Я лишь кивнула в ответ, но когда увидела дом, то решила , что и я бы смогла придумать о нем парочку страшных историй.</div>', '2015-05-23 00:10:06', '1', NULL, 1),
	(11, 'ЕСТЬ ЛЮДИ И ЕСТЬ МЕСТА ч.4', 'ЕСТЬ ЛЮДИ И ЕСТЬ МЕСТА ч.4<div><br /></div><div>Хотя это при условии , что он был бы в запущенном состоянии. Сейчас же это был милый особнячек, с верандой и мансардой, с высокими &quot;французскими&quot; окнами на первом этаже . В отличии от соседних домов он был выложен из кирпича и аккуратно отштукатурен. Каменное крыльцо отреставрировано, да и все остальное было «подлажено» и «подкрашено».А еще цветы… Вокруг росло такое разнообразие цветов, что , казалось, весь дворик был раскрашен во все цвета радуги. Розы плелись по балкам веранды, одновременно создавая тень и испуская невероятно прекрасный аромат. Я влюбилась в этот дом с первого взгляда. Скажу точнее- у меня захватило дух от восхищения…</div><div>- За домом есть настоящий сад,- сказал Доусон, заметив мой восхищенный взгляд.- Вот там настоящая красота.</div><div>- У соседей цветы- трава, по сравнению с твоими…- ответила я , и это была правда.</div><div>- Здесь много позитивной энергии,- и опять эта улыбка.</div><div>В доме было приятно прохладно. Первым существом встретившим нас был Хэк- собака Доусона, огромный лохматый ньюфаундленд с белым пятном шерсти на груди. Я боялась , что пёс набросится на меня или начнет рычать, как остальные собаки, но этого не произошло. Он завилял хвостом и начал лизать мои ладони.</div><div>- Это Хэк, вполне добрая псина. Думаю он тебе понравится. А сейчас пойдем на кухню , я познакомлю тебя с остальными.</div><div>Мы прошли в уютную кухню, с деревянной мебелью в стиле начала двадцатого века. Там нас встретила приятная старушка, лет шестидесяти , в синей блузке и длинной, того же цвета юбке. Белый передник делал ее похожей на экономку из британских фильмов.</div><div>- Джереми!- окликнула она кого-то, вытирая руки о передник,- Доусон вернулся! А это Трейси?- обратилась она уже к парню.</div><div>- Да, Лиз, это Трейси. Трейси,- он перевел взгляд на меня,- это моя тетя Лиз.</div><div>- Так приятно тебя увидеть. – Лиз вдруг совершенно неожиданно обняла меня. От нее пахло ванилью и выпечкой.- И давайте уже садитесь за стол! Пирог уже остыл совсем!,- женщина взяла меня под руку и провела к столу,- Я готовлю отличный яблочный пирог, - сказала она.- И не стесняюсь этим похвастаться. Садись дорогая. Я заварю нам чай.</div><div>Доусон присел за стол рядом со мной.</div><div>- У Лиз самые вкусные пироги в мире,- подмигнул он мне.</div><div>-Нет, ну где же этот старикан!,- Лиз поставила на стол чашки с ароматным чаем и вышла из кухни. Я посмотрела ей вслед. Да хромала она изрядно, ей наверно очень трудно было заниматься домашними делами, подумала я.</div><div>Вернулась женщина в компании высокого седого мужчины. На вид он был постарше Лиз лет на 10.Передвигался он тоже с трудом, опираясь на большую деревянную трость. Старик мельком взглянул на меня и перевел взгляд на Доусона.</div><div>- Она такая молодая…- сказал он то ли себе то ли в пустоту, а после снова перевел взгляд на меня и доброжелательно улыбнулся,- Трейси Харпер?</div><div>- Да, -улыбнулась я в ответ,- Похоже такая традиция была в этом доме- улыбаться.</div>', '2015-05-23 00:10:23', '1', NULL, 1);

DROP TABLE IF EXISTS `carousel`;
CREATE TABLE IF NOT EXISTS `carousel` (
  `carousel_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `description` text,
  `picture` varchar(255) DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL,
  `sort_order` int(3) DEFAULT NULL,
  PRIMARY KEY (`carousel_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
DELETE FROM `carousel`;
INSERT INTO `carousel` (`carousel_id`, `title`, `productid`, `description`, `picture`, `url`, `sort_order`) VALUES
	(2, 'Кольє "Бриз" підкреслює твою красу', 6, '', 'image_5536570809fd1.jpg', '', 0),
	(3, 'Ти гарненька та цікава', 8, '', 'image_5536574fb9182.jpg', '', 0);

DROP TABLE IF EXISTS `gallery`;
CREATE TABLE IF NOT EXISTS `gallery` (
  `galleryid` int(11) NOT NULL AUTO_INCREMENT,
  `galleryname` varchar(255) NOT NULL,
  `description` text,
  `picture` varchar(255) DEFAULT NULL,
  `meta` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`galleryid`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
DELETE FROM `gallery`;
INSERT INTO `gallery` (`galleryid`, `galleryname`, `description`, `picture`, `meta`) VALUES
	(6, 'Кольє', 'Крупные украшения могут выглядеть как вызывающе, так и просто дополнять одежду - все зависит от того, как вы их носите.', 'image_55343775ac032.jpg', 'Кольє'),
	(7, 'Сережки', 'Украшение, носимое в ушах, в которых для этого прокалываются специальные отверстия.\r\n\r\nРусское слово «серьга» заимствовано из древнерусского, где оно восходит к тюркскому «syrγa» — «кольцо». Серьги буквально — «ушные подвески в виде кольца.', 'image_553438ca9a7a2.jpg', 'Сережки'),
	(8, 'Клатч', 'Маленькая элегантная сумочка-конверт. У клатча может быть маленькая ручка, не ремешок, но обычно его носят под мышкой или обхватив ладонью. Изготавливается из высококачественных материалов (например, крокодиловой или змеиной кожи), украшается золотом, жемчугом, стразами и перьями.', 'image_553438e6e1ed0.jpg', 'Клатч, сумочка'),
	(27, 'Браслеты', 'женщина прекрасно приспособит данное изделие под один или несколько нарядов. Учитывая, что браслет – это универсальная вещь, подбирая его, не придется думать о том, какого размера следует подбирать данный предмет.', 'image_555f597248c1f.jpg', '');

DROP TABLE IF EXISTS `page`;
CREATE TABLE IF NOT EXISTS `page` (
  `page_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `body` text NOT NULL,
  `meta` varchar(255) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`page_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
DELETE FROM `page`;
INSERT INTO `page` (`page_id`, `name`, `title`, `description`, `body`, `meta`, `status`) VALUES
	(1, 'contacts', 'contacts', 'зберігаються контактні данні', '<ul class="list-group">\r\n <li class="list-group-item text-center">\r\n<h3>\r\n{{phone-number}}: <b> {{phone}}</b>\r\n</h3>\r\n</li>\r\n\r\n<li class="list-group-item text-center">\r\n<h3>\r\n<a href="{{vk-url}}"  target="_blank">{{vk}}</a>\r\n</h3>\r\n</li>\r\n\r\n<li class="list-group-item text-center">\r\n<h3>\r\n<a href="{{fb-url}}" target="_blank">{{fb}}</a>\r\n</h3>\r\n</li>\r\n\r\n</ul>', '', NULL);

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `productid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  `pictures` text,
  `url` text,
  `meta` varchar(255) DEFAULT NULL,
  `gallerys` text,
  `price` varchar(255) DEFAULT NULL,
  `status_id` int(5) DEFAULT NULL,
  `hide_price` int(1) DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  PRIMARY KEY (`productid`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
-- Dumping data for table u391597384_summ.product: 6 rows
DELETE FROM `product`;
INSERT INTO `product` (`productid`, `name`, `description`, `pictures`, `url`, `meta`, `gallerys`, `price`, `status_id`, `hide_price`, `active`) VALUES
	(5, 'Сережки "Взгляд сокола."', 'Бусины натуральный камень - соколиный глаз.\r\nЦена 35 грн.', 'image_553439881f026.jpg', NULL, 'Бусины, натуральный камень', NULL, NULL, NULL, NULL, 1),
	(6, 'Колье "Омут"', 'Колье "Омут" Лабрадоры, сваровски, речной жемчуг, японский бисер ТОХО и Делика', 'image_556462113f13f.jpg,image_55646211777a4.jpg,image_55646211af639.jpg,image_55646211dd0bc.jpg,image_553439de87ada.jpg,image_553439de8f372.jpg,image_553439de96c71.jpg,image_553439de9d573.jpg', NULL, 'Лабрадоры, сваровски, речной жемчуг, японский бисер ТОХО', NULL, '70', 1, NULL, 1),
	(7, 'Колье "Бриз".', 'Летнее колье для отпуска, пляжа и хорошего настроения.Чешский бисер, японский бисер, говлит, пауа( гелиотис) аммониты, жемчуг речной натуральный. Изнанка натуральная кожа.', 'image_55343a3bd4b26.jpg,image_55343a3bdd745.jpg', NULL, 'натуральная кожа, жемчуг речной натуральный, аммониты, чешский бисер, японский бисер, говлит', NULL, '100', 2, 1, 1),
	(8, 'Колье "Апрельское утро"', 'Колье "Апрельское утро". Агаты, авантюрин, чешский и японский бисер. Сделано на заказ.', 'image_55343b05f30b8.jpg,image_55343b0607179.jpg,image_55343b060ddba.jpg', NULL, '', NULL, NULL, 2, NULL, 1),
	(9, 'Колье-трансформер', 'Колье-трансформер .Сделано на заказ.', 'image_55343b47298ed.jpg,image_55343b4730725.jpg,image_55343b473683e.jpg,image_55343b473cf61.jpg', NULL, '', NULL, NULL, NULL, NULL, NULL),
	(12, 'сережки "интересные"', 'Взгляд сокола.\r\nБусины натуральный камень - соколиный глаз.', 'image_556460ac64d1d.jpg,image_556460ae207bf.jpg,image_556460af43e68.jpg,image_556460b06618a.jpg,image_556460b1d10cc.jpg', NULL, 'Бусины, натуральный камень', NULL, NULL, NULL, NULL, NULL);

DROP TABLE IF EXISTS `product_status`;
CREATE TABLE IF NOT EXISTS `product_status` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`status_id`),
  UNIQUE KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
DELETE FROM `product_status`;
INSERT INTO `product_status` (`status_id`, `status`) VALUES
	(1, 'in stock'),
	(2, 'for example');

DROP TABLE IF EXISTS `sub_product_gallery`;
CREATE TABLE IF NOT EXISTS `sub_product_gallery` (
  `productid` int(11) NOT NULL,
  `galleryid` int(11) NOT NULL,
  PRIMARY KEY (`productid`,`galleryid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DELETE FROM `sub_product_gallery`;
INSERT INTO `sub_product_gallery` (`productid`, `galleryid`) VALUES
	(5, 7),
	(6, 6),
	(7, 6),
	(8, 6),
	(9, 6),
	(12, 7);

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `recordid` int(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) NOT NULL,
  `password` text NOT NULL,
  `role` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`recordid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

DELETE FROM `user`;
INSERT INTO `user` (`recordid`, `username`, `password`, `role`) VALUES
	(1, 'snenko', '*1C583FE4270FDE8D6C31E1837060426D24C2DACF', 'admin');