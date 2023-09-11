function E = EInput()
E = isgood('Введите точность eps = ');
while E <= 0
    disp('Точность должна быть > 0')
    E = isgood('Введите точность eps = ');
end