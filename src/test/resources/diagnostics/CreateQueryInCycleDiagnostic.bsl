
Процедура Процедураыв()
	ЗапросВПроцедуре = Новый Запрос();
	Для инт = 1  По 30 Цикл
        ЗапросВПроцедуре.Выполнить(); // Тут
    КонецЦикла;
КонецПроцедуры

Запрос =  Новый Запрос();
Запросtop = Запрос;
Запросtop  = 1;

Для инт = 1  По 30 Цикл
	//{{КОНСТРУКТОР_ЗАПРОСА_С_ОБРАБОТКОЙ_РЕЗУЛЬТАТА
	// Данный фрагмент построен конструктором.
	// При повторном использовании конструктора, внесенные вручную изменения будут утеряны!!!
    Запросtop.Выполнить();

	Запрос = Новый Запрос;
	Запрос2.info = Запрос;

    Запрос.Текст =
		"ВЫБРАТЬ
		|	ПоступлениеТоваровУслуг.Ссылка
		|ИЗ
		|	Документ.ПоступлениеТоваровУслуг КАК ПоступлениеТоваровУслуг";

    РезультатЗапроса = Запрос2.info.Выполнить();// Тут

	ВыборкаДетальныеЗаписи = РезультатЗапроса.Выбрать();

	Пока ВыборкаДетальныеЗаписи.Следующий() Цикл
		// Вставить обработку выборки ВыборкаДетальныеЗаписи
	КонецЦикла;

	//}}КОНСТРУКТОР_ЗАПРОСА_С_ОБРАБОТКОЙ_РЕЗУЛЬТАТА



КонецЦикла;

Запрос.Выполнить();

Для инт = 1  По 30 Цикл
    Запрос.Выполнить();// Тут
КонецЦикла;

Пока парам = 1 Цикл
    Запрос.Выполнить();// Тут
    парам = 2;
КонецЦикла

ЗапросВПроцедуре.Выполнить();

ПЗ = Новый ПостроительЗапроса();
ПЗ.ИсточникДанных = Новый ОписаниеИсточникаДанных(ВсеОбработчики);
ПЗ.Измерения.Добавить("Версия");
ПЗ_Новый = ПЗ;
Пока парам = 1 Цикл
    ПЗ.Выполнить();// Тут
    ПЗ_Новый.Выполнить();// Тут
    парам = 2;
КонецЦикла

Запрос = Новый("Запрос");
Пока парам = 1 Цикл
    Запрос.Выполнить();// Тут
    парам = 2;
КонецЦикла

Для сч = 0 по 1 Цикл

  Запрос = Новый Запрос("");
  Запрос.Выполнить().Выбрать();

КонецЦикла;