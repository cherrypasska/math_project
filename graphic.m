function [] = graphic(xn1, f,a,b)
x = linspace(-20,20,10000); 
y = f(x); 
figure();
plot(x, y); 
line([a,a],[-100000,100000],'LineStyle', '--', 'Color', 'black');
line([b,b],[-100000,100000],'LineStyle', '--', 'Color', 'black');
line([0, 0], [-100000,100000], 'LineStyle', '-', 'Color', 'black');
line([-100000,100000], [0, 0], 'LineStyle', '-', 'Color', 'black');
grid on;
hold on;
axis([-10 10 -10 10]);
plot(xn1, f(xn1), 'ro', 'MarkerSize', 5, 'MarkerFaceColor', 'r');
xlabel('x');
ylabel('y');