file = [pwd,'\test_images\lena.png']

I = imread(file)
whos I
%imshow(I)

[H,W,Chn] = size(I);

%I1 = I[:, :, 0];
%imshow(I1)
figure
imhist(I)
saveas(gcf,[pwd,'\images\lenaHist.png'])

I2 = histeq(I);
figure
imshow(I2)

figure
imhist(I2)

imwrite(I2,[pwd,'\images\lenaHistEq.png'])
imwrite(I,[pwd,'\images\lena.png'])

imfinfo(file)

imfinfo([pwd,'\images\lenaHistEq.png'])

%addpath(pwd, '-end')
%Img = imgFun(file)


