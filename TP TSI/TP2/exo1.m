%% Transformation d'histograme & Segmentation

clear variables;
close all;
clc;

I = im2double(imread('pieces.png'));
k=3;
[I_new,mi,labels,h,w] =  K_means('pieces.png',k,'png');

% Histogramme classique shit
figure()
imhist(I)
title('Histogramme Classique') 
% HIstogramme normalis�
figure()
hold on;
[count,loc] = imhist(I);
bar(count./(h*w))
% Histogramme cumul�
count_cum = cumsum(count./(h*w));
plot(loc.*(h),count_cum)
legend('Histogramme Normalis�','Histogramme Cumul�')
title('Histogramme Normalis� avec le cumul�')

% Histogramme �galis�
figure()
hold on;
[count,loc] = imhist(histeq(I));
bar(count./(h*w))
count_cum = cumsum(count./(h*w));
plot(loc.*(h),count_cum)
title('Histogramme �galis�')
legend('Normalis�','Cumul�')
%% Morphologie math�matique : granulom�trie
clear variables;
close all;
clc;

I = im2double(imread('pieces.png'));

% Pour obtenir une image �galis�e & binaris�e
k=2;
[I_new,mi,labels,h,w] =  K_means(histeq(I),k,'image');

SE = [0 0 1 0 0;0 1 1 1 0;1 1 1 1 1;0 1 1 1 0;0 0 1 0 0];

I = I_new;
J_ouv = imdilate(imerode(I,SE),SE);
J_ferm = imerode(imdilate(I,SE),SE);
figure()
subplot 221
imshow(J_ouv,[])
title('Apr�s ouverture')
subplot 222
imshow(J_ferm,[])
title('Apr�s Fermeture')
subplot 223
imshow(imdilate(I,SE),[]);
title('Apr�s Dilatation')
subplot 224
imshow(imerode(I,SE),[])
title('Apr�s Erosion')

figure()
imshow(imclearborder(I)/max(max(imclearborder(I))),[])
%%
clc;
close all;
I = im2double(imread('granulo.png'));
% Element structurant
n=130;
granul = zeros(1,n);
for i = 1:n
    SE_cercle = strel('disk',i);
    J_erod = imerode(I,SE_cercle);
%     figure()
%     imshow(J_erod,[])
    granul(i) = bweuler(J_erod);
end

figure()
plot((1:n),granul);






