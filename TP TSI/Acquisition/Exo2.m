clear variables;
close all;
clc;

I = imread('iso100.jpg');
I = I(24:37,1306:1427);
figure()
subplot 222
J = imresize(I,0.5);imshow(J,[])
title('classique')
subplot 221
imshow(I,[])
title('Signal de base')
subplot 223
J = imresize(I,0.5,'bilinear');imshow(J,[])
title('Linéaire')
subplot 224
J = imresize(I,0.5,'bicubic');imshow(J,[])
title('Cubique')