function [] = integrirovanie()
clc;
clear;
integral_0 = 0; %объявление интеграла 
integral_1 = 1;
disp("Введите подынтегральное выражение");
func = funcInput(); %Ввод и проверка на ввод функции
[a,b] = IntervalIntegral(); %Ввод и проврека на ввод интервала
E = EInput();%ввод и проверка на ввод точности
n = 2; %заача n
while (abs(integral_1-integral_0) > E)
    h = (b - a) / n; %подсчёт h
    integral_0 = integral_1; %запоминание прошедшего значение
    x = zeros(0,n+1); %массивы для хранения значений функции через каждый h
    y = zeros(0,n+1);
    for i = 0:n %заполнение этих массивов
        x(i+1) = a + i * h;
        y(i+1) = func(x(i+1));
    end
    integral_1 = y(1) + y(n + 1);
    
    for j = 2 : n
        if mod(j,2) == 0 %подсчёт интеграла
            integral_1 = integral_1 + 4 * y(j);
        else
            integral_1 = integral_1 + 2 * y(j);
        end
    end
    n = n + 2; %увеличение n
    integral_1 = integral_1 * h / 3; %конечный подсчёт интеграла
end
disp("Интеграл S в границах [" + a + ";" + b + "] = " + integral_1); %вывод значения интеграла
disp("Функция: ");
disp(func);
graphik_integral(a,b,func); %вывод графика
end