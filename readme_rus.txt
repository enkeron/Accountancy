-------------------------------------------
Установка и Запуск
-------------------------------------------

Для установки программы на ПК необходимо скопировать папку buh_obl !Целиком без изменений! 

Чтобы запустить программу - откройте файл start.exe который находиться в главной папке программы, тоесть в папке buh_obl 

-------------------------------------------
Порядок заполнения таблиц
-------------------------------------------

!----------------------------------------------------------------------------------------------------------------------

\\\\\\Окно "Залишки по підприємству" //////

В главном меню программы нажать кнопку "Залишки по підприємству". В окне что открылось, необходимо записать остатки по 
счeтам, при этом заносить следующие данные(Дата остатков, номер счета, тип счета(если в этом поле галочка не стоит, 
счет нужно считать "Дебетовым", если галочка присутсвует - "Кредитовым"), денежную сумму).

****Добавление записи****
!Каждая новая запись в каждой таблице начаниется с добавления пустой записи в таблицу. 
Кнопка "Додати" - добавляет пустую запись в конец таблицы. Чтобы заполнить ее, переместите курсор в первую ячейку после 
введеных данных.

****Удаление записи из таблицы****
Если запись неправильно введена в таблицу, или не актуальна, нужно сделать след. действия. 
1.Поставить курсор в нужную ячейку, которую необходимо удалить. 
2.Сверху формы есть кнопка "Видалити", нажать ее и согласиться с предупреждением.

!----------------------------------------------------------------------------------------------------------------------




!----------------------------------------------------------------------------------------------------------------------

\\\\\\Окно "Журнал реєстрації господарських операцій" //////

В главном меню программы нажать кнопку "Журнал операцій". Окно что открылось после нажатия, служит для добавления 
операций в "Журнал реєстрації господарських операцій".
Кнопки в этом окне:
*Вгору - перемещается к самой первой записи в таблице
*Назад - перемещается на одну запись назад
*Вперед - перемещается на одну запись вперед
*Вниз - перемещается к самой последней записи в таблице
*Знайти - 
*Add - добавление новой записи !Каждая новая запись в каждой таблице начаниется с добавления пустой записи в таблицу. 
*Edit - редактирование текущей записи, которая отображена на форме в данный момент
**Когда активен режим редактирования, активны след. кнопки.
**Save - сохранить все изменение(Необходимо нажать Yes)
**Revent - не сохранять изменения
*Видалити - удалить текущую запись, которая отображена в окне.

****Кнопка "Проглянути відомість"****

Вызывает окно, в котором в удобном режиме отображается "Журнал реєстрації господарських операцій".
Для отображение данных, нужно:
1. Выбрать период за который программа должна отобразить операции по предприятию.
2. Нажать кнопку "Оновити".

!----------------------------------------------------------------------------------------------------------------------




!----------------------------------------------------------------------------------------------------------------------

\\\\\\Окно "План Рахунків" //////

В главном меню программы нажать кнопку "План Рахунків". В окне что открылось отображаются планы счетов, которые 
храняться в таблице.

****Добавление записи****
!Каждая новая запись в каждой таблице начаниется с добавления пустой записи в таблицу. 
Кнопка "Додати" - добавляет пустую запись в конец таблицы. Чтобы заполнить ее, переместите курсор в первую ячейку после 
введеных данных.

****Удаление записи из таблицы****
Если запись неправильно введена в таблицу, или не актуальна, нужно сделать след. действия. 
1.Поставить курсор в нужную ячейку, которую необходимо удалить. 
2.Сверху формы есть кнопка "Видалити", нажать ее и согласиться с предупреждением.

!----------------------------------------------------------------------------------------------------------------------




-------------------------------------------
Создание оборотной ведомости
-------------------------------------------

!----------------------------------------------------------------------------------------------------------------------

Оборотная ведомость отображается на главной форме программы. То окно, на котором расположено главное меню.
Для создание ведомости необходимо:
1. Существовали данные в !Остатках для этого периода(если выбран период 01.03.2013-20.03.2013, в остатках должны быть 
данные по счетам на 28.02.2013(последний день предыдущего месяца))! и !Оборотах на тот период за который необходимо 
отобразить оборотную ведомость!.
2. Выбрать период на главной форме, за который нужно отобразить ведомость.

Если все данные существуют, то на главной форме отобразится оборотная ведомость за выбранный период.

!!!! Если данные правильно введены, и получен верый результат то необходимо занести расчитанные остатки в
ведомость остатков. Остатки на главной форме отображаются в столбце "Залишок на кінець періоду", колонку Дебет и Крдит
вместе с номером счета перенести в таблицу Остатков. На главной форме нажать кнопку "Залишки по підприємству" в
таблицу, яка з'явиться занести дані з головної форми. При это, дату необходимо указать !!последний день, конца периода
который выбрали!!. Это 2-ая дата возле кнопки "Оновити" на главной форме. Остатки всегда записываються на последний
день текущего месяца.



!----------------------------------------------------------------------------------------------------------------------




!----------------------------------------------------------------------------------------------------------------------

\\\\\\Окно "Детальна інформація по рахунку" //////

Это окно запускаеться !!только тогда, когда оборотная ведомость уже существует, тоесть когда на главной форме заполнена 
таблица.
В этом окне пользователь может выбрать интересующий его код счета, и нажать кнопку "Оновити". Форма отобразит все 
входные данные по этому счету, оборотные данные которые касаются этого счета, и результирующие данные.

!----------------------------------------------------------------------------------------------------------------------



-------------------------------------------
Очистка таблиц с данными
-------------------------------------------

!----------------------------------------------------------------------------------------------------------------------

Для того чтобы очистить таблицы от данных, необходимо:
1.На главной форме нажать кнопку "Вилучення данних"
2.В появивщейся форме, выбрать таблицу с которой нужно удалить все данные
3.Нажать кнопку "Вилучення" и согласится с предупреждением.

!----------------------------------------------------------------------------------------------------------------------



-------------------------------------------
Выход из программы
-------------------------------------------

!----------------------------------------------------------------------------------------------------------------------

Выходить из программы нужно !только через кнопку в главном меню "Вихід"!.

!----------------------------------------------------------------------------------------------------------------------