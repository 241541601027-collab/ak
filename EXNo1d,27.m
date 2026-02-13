%read and resize image
image = imread('D:\241541601027\one.jpg');
%resize image
new_width =1200;
new_height =400;
resized_image = imresize(image,[new_height,new_width]);
%display images
figure('Position',[100,100,1200,600]);
subplot(1,2,1);
imshow(image);
title('original image');
axis off;
subplot(1,2,2);
imshow(resized_image);
title('resized image');
axis off;