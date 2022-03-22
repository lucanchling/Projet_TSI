clear variables;
close all;
clc;


SNR = zeros(1,6);
figure()
i=1;

for photo = ["iso100.jpg","iso200.jpg","iso400.jpg","iso800.jpg","iso1600.jpg","iso3200.jpg"]
    subplot(3,2,i)
    I = rgb2gray(imread(photo));
    imshow(I,[]);
    title(sprintf(photo))
    % Calcul du SNR :
    mu = mean2(I(1056:1150,1333:1539));sigma = std2(I(1056:1150,1333:1539));
    SNR(i) = 20*log10(mu/sigma); 
    i=i+1;
end

figure()
plot([100,200,400,800,1600,3200],SNR)
title("SNR en fonction de l'iso")

figure()
% Partie filtrage
i=1;
for photo = ["iso100.jpg","iso200.jpg","iso400.jpg","iso800.jpg","iso1600.jpg","iso3200.jpg"]
    
    I = imread(photo);
    R = double(I(:,:,1));
    G = double(I(:,:,2));
    B = double(I(:,:,3));
    j=1;
    for part = [R,G,B]
        [h,w] = size(part);

        [U V] = meshgrid(-w/2+1/2:w/2-1/2,-h/2+1/2:h/2-1/2);

        D = sqrt(U.^2 + V.^2);

        % Partie Filtrage

        % Déclaration des constantes
        p=2;
        nc=100;
        B=120;

        % Filtr coupe-bande
        H = 1./(1+((B*D)./(D.^2-nc^2)).^(2*p));

        % Calcul de la TF de l'image
        Itf = fftshift(fft2(part));

        % Filtrage de l'image en fréquentielle
        Itf_fltrd = ifftshift(Itf.*H);

        % Calcul de la TF inverse
        I_fltrd = ifft2(Itf_fltrd);
        
        I_fltr(:,:,j) = uint8(I_fltrd);
        
    end
    
    % Affichage
    subplot(3,2,i)
    imshow(I_fltr,[])
    i=i+1;
end
