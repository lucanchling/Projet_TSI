clear variables;
clc;
close all;

I = rgb2hsv(imread('iso100.jpg'));

figure()
subplot 221
I(:,:,2) = 0;
I(:,:,3) = 0;
imshow(I,[])
subplot 222
I = rgb2hsv(imread('iso100.jpg'));
I(:,:,1) = 0;
I(:,:,3) = 0;
imshow(I,[])
subplot 223
I = rgb2hsv(imread('iso100.jpg'));
I(:,:,2) = 0;
I(:,:,1) = 0;
imshow(I,[])

I = rgb2hsv(imread('iso100.jpg'));
R = double(I(:,:,1));
G = double(I(:,:,2));
B = double(I(:,:,3));
Y = 0.299*R+0.587*G+0114*B;
subplot 224
imshow(Y,[])