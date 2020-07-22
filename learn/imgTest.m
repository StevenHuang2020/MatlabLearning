I = imread([pwd,'\test_images\lena.png'])
whos I
%imshow(I)

[H,W,Chn] = size(I);

%I1 = I[:, :, 0];
%imshow(I1)
figure
imhist(I)

I2 = histeq(I);
figure
imshow(I2)

figure
imhist(I2)

imwrite(I2,[pwd,'\images\lenaHistEq.png'])

file = [pwd,'\test_images\lena.png']
imfinfo(file)

imfinfo([pwd,'\images\lenaHistEq.png'])

%addpath(pwd, '-end')
Img = imgFun(file)


