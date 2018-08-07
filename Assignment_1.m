function [ output_args ] = Untitled( input_args )

img_1=imread('C:\Users\MRM\Documents\MATLAB\ComputerVision/dog.jpg');
g1=fspecial('gaussian',[50 50],6);   %segma=6
% figure,surf(g1);
smooth_img_1=imfilter(img_1,g1,'same');
% imshow(smooth_img_1);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

img_2=imread('C:\Users\MRM\Documents\MATLAB\ComputerVision\cat.jpg');
img_3=imfilter(img_2,g1,'same');
sharpen_img_2=img_2-img_3;
% imshow(sharpen_img_2);

c=smooth_img_1+sharpen_img_2;

imagesCellArray{1,5}=deal(c);
for i=1:5
    imagesCellArray{1,i}=c;
    c = imresize(c,0.5);
end
margins = [10 10];
imshowTruesize(imagesCellArray,margins);


end


% h1=conv2(fspecial('gaussian',[50 50],0.25),[1 0 -1],'same');
% figure,surf(h1);
% sharpen_img_2=imfilter(img_2,h1);
% sharpen_img_2=uint8(sharpen_img_2);

% sharpen_img_2(:,:,1)=conv2(double(img_2(:,:,1)),h1,'same');
% sharpen_img_2(:,:,2)=conv2(double(img_2(:,:,2)),h1,'same');
% sharpen_img_2(:,:,3)=conv2(double(img_2(:,:,3)),h1,'same');

% t1=imfilter(img_2(:,:,1),h1);
% % figure,imshow(t1);
% t2=imfilter(img_2(:,:,2),h1);
% % figure,imshow(t2);
% t3=imfilter(img_2(:,:,3),h1);
% % figure,imshow(t3);
% t=cat(3,t1,t2,t3);
% t=uint8(t);
