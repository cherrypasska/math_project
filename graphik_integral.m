function [] = graphik_integral(a,b,func)
x1 = linspace(0,100,5000);
y = func(x1);
figure;
area(x1, y);
hold on;
line([a,a],[-100000,100000],'LineStyle', '--', 'Color', 'black');
line([b,b],[-100000,100000],'LineStyle', '--', 'Color', 'black');
line([0, 0], [-100000,100000], 'LineStyle', '-', 'Color', 'black');
line([-100000,100000], [0, 0], 'LineStyle', '-', 'Color', 'black');
grid on;
hold on; 
hold on;
grid on;
axis([a b 0 max(func(a),func(b))]);
title('График функции');
xlabel('x');
ylabel('y');
drawnow;
end