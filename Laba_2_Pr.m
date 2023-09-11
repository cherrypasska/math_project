function [] = Laba_2_Pr()
clc;
clear;
disp("Введите колличество корней: ");
cnt = ninput(); %ввод количества корней
for i = 1:cnt %ввод и проверка ввода х
    vector_x(i) = isgood("Введите вектор х(" + i + ")");
end
for j = 1:cnt %ввод и проверка ввода у
    vector_y(j) = isgood("Введите вектор у(" + j + ")");
end
disp("Введите колличество неизвестных: ");
count = ninput(); %ввод и проверка ввода количества неизвестных
for i = 1:count %ввод и проверка ввода координаты х у неизвестных координат у
    vector_x0(i) = isgood("Введите x(" + i + ") от которого хотите найти y: ");
end
arraym = []; %создаём пустой массив для хранения разделённых разностей
for i = 1:cnt
    summ_of_el = 0; %объявляем за 0 разделённую разность
    for j = 1:(i)
        Pr = 1;
        for  k = 1:(i)
            if (k ~= j)
                Pr = Pr .* (vector_x(j) - vector_x(k)); %подсчёт знаменателя
            end
        end
        summ_of_el = summ_of_el + (vector_y(j) ./ Pr); %подсчёт разделённой разности
    end
    arraym(i) = summ_of_el; %добавление в массив разделённой разности
end
for k = 1:count
    P_main(k) = vector_y(1);
    for i = 2:cnt
        Pr_0 = 1;
        for j = 1:(i-1)
            Pr_0 = Pr_0 .* (vector_x0(k) - vector_x(j)); %подсчёт значения
        end                                              %в точке у
        P_main(k) = P_main(k) + (arraym(i) .* Pr_0);
    end
end
clc;
disp('vector x: ');
disp(vector_x); %вывод вектора х
disp('vector_y: ');
disp(vector_y); %вывод вектора у
Px = Method_Pashkevicha(cnt, vector_x, vector_y, arraym); %вывод формулы полинома ньютона
Graphik_Prourzina(vector_x0, Px, count, cnt, vector_x, vector_y); %вывод графика
disp("Полином P(x) = " + Px);
for i = 1:count
    disp("P(" + vector_x0(i) + ") = " + P_main(i));
end