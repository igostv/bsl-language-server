Процедура Тест1()

    Запрос = Новый Запрос;
    Запрос.Текст = "Выбрать Т.Ссылка Из Справочник.Справочник1 СПр Левое соединение (Выбрать СС.Ссылка Из Справочник.Справочник2 КАК СС Где СС.Ссылка = &Параметр) КАК Т По СПр.Поле1 = Т.Ссылка"; //<-- ошибка

КонецПроцедуры

Процедура Тест2()

    Запрос = Новый Запрос;
    Запрос.Текст = "Выбрать Т.Ссылка Из Справочник.Справочник1
    |СПр Левое соединение
    |(Выбрать СС.Ссылка Из Справочник.Справочник2 КАК СС Где СС.Ссылка = &Параметр) КАК Т //<-- ошибка
    |По СПр.Поле1 = Т.Ссылка";

КонецПроцедуры

Процедура Тест3()

    Запрос = Новый Запрос;
    Запрос.Текст = "Выбрать Т.Ссылка Из Справочник.Справочник1
    |СПр Правое соединение
    |(Выбрать СС.Ссылка Из Справочник.Справочник2 КАК СС Где СС.Ссылка = &Параметр) КАК Т //<-- ошибка
    |По СПр.Поле1 = Т.Ссылка";

КонецПроцедуры

Процедура Тест4()

    Запрос = Новый Запрос;
    Запрос.Текст = "Выбрать Т.Ссылка
    | Из (Выбрать СС.Ссылка Из Справочник.Справочник1 КАК СС Где СС.Ссылка = &Параметр) как СПр Левое соединение //<-- ошибка

    |(Выбрать СС.Ссылка Из Справочник.Справочник2 КАК СС Где СС.Ссылка = &Параметр) КАК Т //<-- ошибка
    // комментарий
    |По СПр.Поле1 = Т.Ссылка";

КонецПроцедуры

Процедура Тест5()

    Запрос = Новый Запрос;
    Запрос.Текст = "Выбрать Т.Ссылка





    |Из(Выбрать СС.Ссылка Из Справочник.Справочник2 КАК СС Где СС.Ссылка = &Параметр) КАК Т //<-- ошибка
    // комментарий
    // комментарий
    |Правое соединение Справочник.Справочник1 СПр
    // комментарий


    // комментарий


    // комментарий
    |По СПр.Поле1 = Т.Ссылка";

КонецПроцедуры

Процедура Тест6()

    Запрос = Новый Запрос;
    Запрос.Текст = "Выбрать * Из (Выбрать Т.Ссылка
    |Из(Выбрать СС.Ссылка Из Справочник.Справочник2 КАК СС //<-- ошибка
    |Где СС.Ссылка = &Параметр) КАК Т
    |Правое соединение Справочник.Справочник1 СПр
    |По СПр.Поле1 = Т.Ссылка) КАК ПодЗапрос";

КонецПроцедуры

Процедура Тест7()

    Запрос = Новый Запрос;
    Запрос.Текст = "Выбрать Т.Ссылка
    | Из (Выбрать СС.Ссылка Из Справочник.Справочник1 КАК СС Где СС.Ссылка = &Параметр) как СПр,
    |(Выбрать СС.Ссылка Из Справочник.Справочник2 КАК СС Где СС.Ссылка = &Параметр) КАК Т";

КонецПроцедуры
