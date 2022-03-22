clear variables;
close all;
clc;

I = im2double(imread('flower.png'));
% figure()
% imshow(I,[])

k = 3;
mi = rand(k,1); % Moyennes pour le K...
mi_1 = zeros(k,1);  % Moyenne pour le K... pour comparer avant/apr�s 
[h,w] = size(I);

labels = zeros(h,w);


% Premi�re association des labels
for i = 1:h
    for j = 1:w
        dist = abs(mi-I(i,j));
        lab = find(dist == min(dist));
        labels(i,j) = lab;
    end
end

% Boucle pour stabiliser les moyennes
while (mi_1 ~= mi)
    mi_1 = mi;
    sum = zeros(1,k);   % Valeur sommes pour chaque label
    cpt = zeros(1,k);   % Compteur du nb de pixel par label
    % Double boucle parce que jai toujours pas compris how to use matrix's
    % calcul
    for i = 1:h
        for j = 1:w
            % Calcul des nouvelles moyennes :
            for n = 1:k                
                if labels(i,j) == n
                    sum(n) = sum(n) + I(i,j);   % Ajout valeur du pixel
                    cpt(n) = cpt(n) + 1;        % Incr�mentation du cpt
                end
            end
        end
    end
    mi = sum./cpt;    % Calcul des nouvelles moyennes
    
    % Reconstruction de l'image:
    I_new = I;  % Nouvelle matrice pour r�sultat apr�s K-means
    for i = 1:h
        for j = 1:w
            for n = 1:k
                if labels(i,j) == n
                    I_new(i,j) = mi(n);
                end
            end
        end
    end
    I = I_new;
    
    % Pour actualiser les labels
    for i = 1:h
        for j = 1:w
            dist = abs(mi-I(i,j));
            lab = find(dist == min(dist));
            labels(i,j) = lab;
        end
    end
end

% Affichage de l'image apr�s convergence
figure()
imshow(I_new,[])
