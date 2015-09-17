# yandexinter

Придется поднять rails сервачок, чтобы протестировать. Или можно поднять свой сервак и отдавать json взятый из файла generated_light.json(6 карточек), который лежит в корне рядом с соответствующим html файлом test_ligh.html. (нужно будет ещё исправить в этом файле путь до json, изначально он настроен на rails) Очень странно отрабатывают циклы алгоритма, не могу понять в чем дело. 

Задание №1

Сортировщик карточек путешественника

Вам дана стопка посадочных карточек на различные виды транспорта, которые доставят вас из точки A в точку B. Карточки перепутаны, и вы не знаете, где начинается и где заканчивается ваше путешествие. Каждая карточка содержит информацию о том, откуда и куда вы едете на данном отрезке маршрута, а также о типе транспорта (номер рейса, номер места и прочее).

Предоставьте JavaScript API, который отсортирует такой список карточек и вернет словесное описание, как проделать ваше путешествие. API должен принимать на вход несортированный список карточек в формате придуманном вами и возвращать, например, такое описание:

Take train 78A from Madrid to Barcelona. Seat 45B.
Take the airport bus from Barcelona to Gerona Airport. No seat assignment.
From Gerona Airport, take flight SK455 to Stockholm. Gate 45B. Seat 3A. Baggage drop at ticket counter 344.
From Stockholm, take flight SK22 to New York JFK. Gate 22. Seat 7B. Baggage will be automatically transferred from your last leg.

Требования:

Алгоритм должен работать с любым количеством карточек, если все карточки образуют одну неразрывную цепочку.
Время прибытия и отправления неизвестно и не важно. Подразумевается, что средство передвижения для следующего отрезка дожидается вас.
Структура кода должна быть расширяема для использования любых типов транспорта и информации, которая может быть связана с каждым типом транспорта.
API будет вызываться из других частей JavaScript-кода без необходимости дополнительных запросов между браузером и сервером.
Не используйте библиотеки и фреймворки, напишите все с нуля.
Задокументируйте в коде формат входных и выходных данных.

Что нас интересует:

Какой формат входных данных вы придумаете.
Как вы структурируете свой код, чтобы он был расширяем, легок к пониманию и изменениям другими программистами.
Какой алгоритм сортировки вы придумаете.
