function [] = menu()
clear; clc;
while 1
disp('Главное меню:');
disp('Выберите пункт меню:');
disp('1. Если Вы хотите решить нелинейное уравнение методом Ньютона, нажмите 1');
disp('2. Если Вы хотите интерполировать функцию по формулам Ньютона, нажмите 2');
disp('3. Если Вы хотите почисленно интегрировать функцию по методу Симпсона, нажмите 3');
disp('4. Для выхода нажмите 4');
disp('5. Для получаения информации о Авторе нажмите 5');
user_menu = input('Выберите пункт меню: ');
switch user_menu
    case 1
        disp('1. Если Вы хотите запустить программу, нажмите 1');
        disp('2. Если Вы хотите увидеть демонстрационный вариант, нажмите 2')
        menu_1 = input('Выберите пункт меню: ');
        switch menu_1
            case 1
                method();
            case 2
                default_newton();
        end
    case 2
        disp('1. Если Вы хотите запустить программу, нажмите 1');
        disp('2. Если Вы хотите увидеть демонстрационный вариант, нажмите 2')
        menu_2 = input('Выберите пункт меню: ');
        switch menu_2
            case 1
                Laba_2_Pr();
            case 2
                testik_polinom();
        end
    case 3
        disp('1.Если Вы хотите запустить программу, нажмите 1');
        disp('2.Если Вы хотите увидеть демонстрационный вариант, нажмите 2');
        menu_3 = input('Выберите пункт меню: ');
        switch menu_3
            case 1
                integrirovanie();
            case 2
                testik_integral();
        end
    case 4
        break;
    case 5
        inform();
    otherwise
        disp('Ошибка!!!');
        disp('Повторите ввод!!!');
end
end
clc; clear; close;
disp('Работа программы завершена')