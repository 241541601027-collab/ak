image = imread('one.jpg');  
if size(image, 3) == 3, image = rgb2gray(image); 
end 
if isempty(image), error('Error loading image!'); 
end    
figure('Position', [100, 100, 1200, 600]); 
for i = 1:8  
bit_plane = bitand(bitshift(image, -(i-1)), 1) * 255;  
subplot(2, 4, i), imshow(bit_plane), title(['Bit Plane ', num2str(i)]), axis off;  
end  
sgtitle('Bit Plane Decomposition');  