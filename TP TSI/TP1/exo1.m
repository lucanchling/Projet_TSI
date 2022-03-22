clear variables:
close all;
clc;

I = im2double(imread('journal.png'));

[h,w] = size(I);

[U V] = meshgrid(-w/2+1/2:w/2-1/2,-h/2+1/2:h/2-1/2);

D = sqrt(U.^2 + V.^2);

% Partie Filtrage

% Déclaration des constantes
p=2;
nc=100;
B=120;

% Filtr coupe-bande
H = 1./(1+((B*D)./(D.^2-nc^2)).^(2*p));

% Affichage
figure(1);
Icb = imshow(H,[]);
colorbar

% Calcul de la TF de l'image
Itf = fftshift(fft2(I));
figure(2);
imshow(10*log(1+abs(Itf)),[])
% Filtrage de l'image en fréquentielle
Itf_fltrd = ifftshift(Itf.*H);

% Calcul de la TF inverse
I_fltrd = ifft2(Itf_fltrd);

figure(3);
imshow(I_fltrd,[])