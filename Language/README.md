# Chemestry 

Макрос языка _Common Lisp_, позволяющий упростить работу с химическими реагентами. 


## Синтаксис

```common-lisp
(Химия 
    операция ( реагенты)
) 
```

Любая операция начинается со знака `Химия`.  

----------------------------------------------------------------------------------------------------------------------------------------

```common-lisp
(Химия хим_реакция (Mg 1 OH 2 ) + (H 2 SO4 1)) 
```

Язык воспринимает команду `хим_реакция` как выполнение химической реакции.
В данном случае для реагентов `(Mg 1 OH 2 ) + (H 2 SO4 1)` выведет 
`((MG 1 OH 2) + (H 2 SO4 1) -> (MG 2 SO4 2) + (H 1 OH 1))`.


----------------------------------------------------------------------------------------------------------------------------------------


```common-lisp
(Химия определить (Mg 1 OH 2)) 
```

Получив команду `определить` наш __Chemestry__ вернет тип  __химического вещества__ -  `CSHELOCH`.
Хотелось бы дороботать для (`(H 1 OH 1)`).

----------------------------------------------------------------------------------------------------------------------------------------

```common-lisp
(Химия что_на_входе_и_выходе ((K 1 CL 1) + (H 1 BR 1) -> (K 1 BR 1) + (H 1 CL 1)))
```

Команда `что_на_входе_и_выходе` обозначает операцию __определить__ для всей химической реакции.
В итоге получаем `(SOLI + KISLOTA -> SOLI + KISLOTA)`

## Подключение

Для использования языка __Chemestry__ необходимо файл языка переместить в папку своего проекта
Непосредственно __подключение__ происходит с помощью команды

```common-lisp
(require "путь_к_файлу")
```


## Заключение

Chemestry был создан для упрощенной работы с химическими реагентами и определения их типов.