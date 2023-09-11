function [] = default_newton()
%вычисления из ручных расчётов
a = 3;
b = -1;
c = 4;
f = @(x) a.*sin(x)+b.*x.^2+c;
left = 2; %границы
right = 3;
x0 = right;
%вычисление с помощью fsolve
xn1 = fsolve(f, x0);
fprintf('Корень уравнения: %f\n', xn1); %вывод результата
graphic(xn1,f,left,right) %вывод графика