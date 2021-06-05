clear
close all
figure;

imaqhwinfo
cam = webcam;
preview(cam);
[X,Y]=ginput(1);

img_rgb=snapshot(cam);

figure;
imshow (img_rgb);

% clear
% close all
% 
% cam=webcam(2);
% figure;
% preview(cam);
% img_rgb=snapshot(cam);
