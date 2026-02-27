image = imread('D:\241541601027\one.jpg'); 
if size(image, 3) == 3, image = rgb2gray(image); end  
if isempty(image), error('Error: Unable to load the image. Check the file path.');
end 
image = double(image);  
figure('Position', [100, 100, 1200, 600]); subplot(1, 2, 1), plot(abs(fft(image(1,:)))), title('1-D FFT along rows'), ...    
xlabel('Frequency'), ylabel('Magnitude'), grid on;  
subplot(1, 2, 2), plot(abs(fft(image(:,1)))), title('1-D FFT along columns'), ...
xlabel('Frequency'), ylabel('Magnitude'), grid on;    
figure('Position', [100, 100, 800, 800]); 
imagesc(log(abs(fftshift(fft2(image))) + 1));  
colormap('gray'), title('2-D FFT Magnitude Spectrum'), colorbar, axis image; 