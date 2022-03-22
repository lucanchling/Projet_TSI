clear variables;
close all;
clc;



I = im2double(imread('flower.png'));

% AJout d'un bruit Gaussien
B = 0.1*randn(size(I));
I_g = I+B;


% Ajout d'un bruit "salt & pepper"
I_sp = imnoise(I,'salt & pepper',0.5);

% Partie affichage
figure()
subplot 121
imshow(I_g,[])
title('Image Gaussisée')
subplot 122
imshow(I_sp,[])
title('Image salt&pepperisée')

% Filtrage moyenneur de taille n
n = 3;
h = fspecial('average',n);

I_g_moy = imfilter(I_g,h);
I_sp_moy = imfilter(I_sp,h);

figure();
subplot 121
imshow(I_g_moy,[])
title('Image bruitée par un Bruit Gaussien filtrée par moyenneur')
subplot 122
imshow(I_sp_moy,[])
title('Image bruitée par un Bruit "salt & pepper" filtrée par moyenneur')

% Filtrage de Butterworth
[h,w] = size(I);

[U V] = meshgrid(-w/2+1/2:w/2-1/2,-h/2+1/2:h/2-1/2);

D = sqrt(U.^2 + V.^2);

% Déclaration des paramètres
p = 5;
nc = 100;

H = 1./(1+(D./nc).^(2*p));

% Calcul de la TF de l'image
Itf1 = fftshift(fft2(I_g));
Itf2 = fftshift(fft2(I_sp));
% Filtrage de l'image en fréquentielle
Itf_fltrd1 = ifftshift(Itf1.*H);
Itf_fltrd2 = ifftshift(Itf2.*H);
% Calcul de la TF inverse
I_fltrd1 = ifft2(Itf_fltrd1);
I_fltrd2 = ifft2(Itf_fltrd2);

figure();
subplot 121
imshow(I_fltrd1,[])
title('Image bruitée par un Bruit Gaussien filtrée par Butterworth')
subplot 122
imshow(I_fltrd2,[])
title('Image bruitée par un Bruit "salt & pepper" filtrée par Butterworth')


% Filtrage médian de taille n
I_g_med = medfilt2(I_g);
I_sp_med = medfilt2(I_sp,[6 6]);

figure();
subplot 121
imshow(I_g_med,[])
title('Image bruitée par un Bruit Gaussien filtrée par filtre médian')
subplot 122
imshow(I_sp_med,[])
title('Image bruitée par un Bruit "salt & pepper" filtrée par filtre médian')

save('workspace.mat')
%% Calcul des différentes MSE
load 'workspace.mat'

noise_type = 's&p';
filter_type = 'med';

switch filter_type
    case 'moy'
        switch noise_type
            case 'gaussien'
                Iout = I_g_moy;
                I = I_g;
            case 's&p'
                Iout = I_sp_moy;
                I = I_sp;
        end
    case 'butter'
        switch noise_type
            case 'gaussien'
                Iout = I_fltrd1;
                I = I_g;
            case 's&p'
                Iout = I_fltrd2;
                I = I_sp;
        end
    case 'med'
        switch noise_type
            case 'gaussien'
                Iout = I_g_med;
                I = I_g;
            case 's&p'
                Iout = I_sp_med;
                I = I_sp;
        end
end

MSE = 0;
for i = 1:h
    for j = 1:w
        MSE = MSE + (Iout(i,j)+I(i,j)).^2;
    end
end
MSE = MSE / (h*w);


