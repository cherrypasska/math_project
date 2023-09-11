function Px = Method_Pashkevicha(cnt, vector_x, vector_y, arraym)
Px = num2str(vector_y(1));
for i = 2:cnt
    prs2 = "";
    for j = 1:(i - 1)
        prs2 = prs2 + "*" + "(x - " + num2str(vector_x(j)) + ")";
    end
    if arraym(i) > 0
        Px = Px + " + " + num2str(arraym(i)) + prs2;
    else
        Px = Px + " - " + num2str(abs(arraym(i))) + prs2;
    end
end
end
