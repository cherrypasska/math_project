function [x] = isgood(str)
while 1
    buffer = input(str,'s');
    x = str2double( buffer );
    if isnan(x)
        disp('Ошибка!!!')
        disp('Введеное данное содержит символы или пробел!')
    elseif length(strfind( buffer,',' ))>=1
        disp('Ошибка!!!')
        disp('Введеное данное содержит запятую!')
    else
        break
    end
end

