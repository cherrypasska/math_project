function [] = Graphik_Prourzina(vector_x0, Px, count, cnt, vector_x, vector_y)
Px = strrep(Px,'*','.*');
f = eval(sprintf("@(x) %s", Px));
x1 = linspace(0,100,5000);
y = f(x1);
figure; 
plot(x1, y);
hold on; 
for j = 1:count
    plot(vector_x0(j), f(vector_x0(j)), 'ro', 'MarkerSize', 6, 'MarkerFaceColor', 'r');
end
hold on;
for i = 1:cnt
    plot(vector_x(i), vector_y(i), 'ro', 'MarkerSize', 6, 'MarkerFaceColor', 'b');
end
line([0, 0], [-100000,100000], 'LineStyle', '-', 'Color', 'black');
line([-100000,100000], [0, 0], 'LineStyle', '-', 'Color', 'black');

axis([-10 10 -10 10]);
grid on;
title('График функции');
xlabel('x');
ylabel('y');
drawnow;
end