file = [pwd, '\test_images\CirclesExample.png'];
% rgb = imread(file);
% imshow(rgb)
% gray_image = rgb2gray(rgb);
% imshow(gray_image)

%[img,gray] = imgFun(file)
img = imgFun(file)
imshow(img)
saveas(gcf,[pwd,'\images\CirclesExample.png'])

d = imdistline;
delete(d)

[centers,radii] = imfindcircles(rgb,[20 25],'ObjectPolarity','dark')
%[centers,radii] = imfindcircles(rgb,[20 25],'ObjectPolarity','dark','Sensitivity',0.98)
[centers,radii] = imfindcircles(rgb,[20 25],'ObjectPolarity','dark', 'Sensitivity',0.96,'Method','twostage')

numbers = length(centers) %find number of circles
imshow(rgb)

h = viscircles(centers,radii);

[centers,radii] = imfindcircles(rgb,[20 25],'ObjectPolarity','bright','Sensitivity',0.98)
h = viscircles(centers,radii,'Color','b');

filename = [pwd,'\images\CirclesExampleDectect.png']
saveas(gcf,filename)

