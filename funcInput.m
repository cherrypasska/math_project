function [userFInput] = funcInput()
flag = false;
while flag == false
    userFunInput = input("Введите уравнение(x): ","s");
    if length(strfind(userFunInput,'e')) >= 1
        userFunInput = strrep(userFunInput,'e^', 'exp(');
        userFunInput = strcat(userFunInput,')');
    end
    if ~contains(userFunInput,"=") ~= 1
            userFunInput = strrep(userFunInput,'=','-');
    end
    userFunInput = strrep(userFunInput,'*','.*');
    userFunInput = strrep(userFunInput,'/','./');
    userFunInput = strrep(userFunInput,'^','.^');
    try
        f = eval(['@(x) ', userFunInput]);
        f(0);
        flag = true;
        userFInput = f;
        if (~contains(userFunInput,"x") == 1)
            flag = false;
            fprintf("Ошибка ввода. Уравнение введено некорректно - необходим x, попробуйте снова.\n")
        end
    catch
        clc;
        fprintf("Ошибка ввода. Уравнение введено некорректно, попробуйте снова.\n")
        flag = false;
    end
end