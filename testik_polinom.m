function [] = testik_polinom()
count = 4; %объявляем из ручных расчётов
cnt = 9;
vector_x = [1.2, 1.5, 1.7, 2, 2.3, 2.6, 3, 3.3, 3.6];
vector_y = [7.277, 7.545, 7.811, 8.089, 7.9194, 6.962, 3.872, -0.2466, -6.287];
arraym = [7.277, 0.897, 0.893, -2.1];
vector_x0 = [1.25, 1.9, 2.5, 3.55];
Px_1 = interp1(vector_x, vector_y, vector_x0);
disp('vector x: ');
disp(vector_x);
disp('vector_y: ');
disp(vector_y);
for i = 1:count
    disp("Полином P(" + vector_x0(i) + ") = " + Px_1(i)) %вывод ответов
end
Px = Method_Pashkevicha(count, vector_x, vector_y, arraym); %вывод полинома
disp("Полином Ньютона: " + Px)
Graphik_Prourzina(vector_x0, Px, count, cnt, vector_x, vector_y) %вывод графика
end