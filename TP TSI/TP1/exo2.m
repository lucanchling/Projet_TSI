clear variables;
close all;
clc;

I = im2double(imread('flower.png'));

% Filtre de Sobel
X_sob = [-1 0 1;-2 0 2;-1 0 1];
Y_sob = X_sob';

% Calcul desq gradients bi-directionels
[Gh Gv] = imgradientxy(I);

% Calcul de la norme du gradient en chaque pixel
G = sqrt(Gv.^2+ Gh.^2);

figure(1)
imshow(G,[])
title('Norme du Gradient')
figure(2)
imshow(Gv,[])
title('Gradient Vertical')
figure(3)
imshow(Gh,[])
title('Gradient Horizontal')

%% Ajout d'un bruit gaussien
clear variables;
close all;
clc;

I = im2double(imread('flower.png'));

B = randn(size(I));

% AJout d'un bruit Gaussien
Ibruit = I+B;
imshow(Ibruit,[])

% Calcul desq gradients bi-directionels
[Gh Gv] = imgradientxy(Ibruit);

% Calcul de la norme du gradient en chaque pixel
G = sqrt(Gv.^2+ Gh.^2);

figure(1)
imshow(G,[])
title('Norme du Gradient')
figure(2)
imshow(Gv,[])
title('Gradient Vertical')
figure(3)
imshow(Gh,[])
title('Gradient Horizontal')