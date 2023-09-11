function in = ninput()
while 1
b = input('', "s");
in = str2double(b);
if isnan(in)
    disp('Ошибка! Введеное данное содержит символы или пробел!')
elseif length(strfind(b,',' ))>=1 || length(strfind(b,'.' ))>=1
    disp('Ошибка! Введеное данное должно быть целым!')
elseif in <= 0
    disp('Ошибка! Введеное данное должно быть больше 0!')
else
    break
end
end

