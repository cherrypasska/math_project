function[] = method()
syms x;
f = funcInput(); %Ввод и проверка ввода функции
[a,b] = IntervalInput(f); %Ввод и проверка ввода границ
E = EInput(); %Ввод и проверка ввода точности
itermax = 100; %Задаём количество итераций и максимальное их число 
%для того чтобы наш цикл не ушел в бесконечность
iter = 0;
%локализация приближенного корня
if (f(a) < 0) && (f(b) > 0)
    xn = b;
else
    xn = a;
end
h = 0.0001;
% вычислите производную методом конечной разности
%определение второго хn для задания цикла
xn1 = xn - (f(xn)/((f(xn+h)-f(xn))/h));
while abs(xn1-xn) > E && iter <= itermax %определение х, в котором
    xn = xn1;                            %наша функция будет равна 0
    xn1 = xn - (f(xn)/((f(xn+h)-f(xn))/h));
    iter = iter + 1;
end %проверка на вхождение в границы и количество итераций
if xn1 < a || xn1 > b || iter > itermax
    disp('Неверно указаны границы или корень находится за пределами указанного промежутка');
else
    fprintf('Корень уравнения: %f\n', xn1); %вывод х, в котором 
                                            %наша функция равна 0
    graphic(xn1,f,a,b); %вывод графика
end
end