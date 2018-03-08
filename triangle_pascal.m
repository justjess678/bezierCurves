function pt = triangle_pascal(n) 

% Les premières lignes ne changent pas
pt(1, 1) = 1;
pt(2, 1 : 2) = [1 1]; 

% s'il y a moins de 3 lignes on ne passe pas dans la boucle
if n < 3
    return
end 

for r = 3 : n
    % le premier element et le dernier sont tjrs = 1
    pt(r, 1) = 1;
    pt(r, r) = 1;

    for c = 2 : r-1
        pt(r, c) = pt(r-1, c-1) + pt(r-1, c);
    end   
end