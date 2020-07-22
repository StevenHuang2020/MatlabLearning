file = [pwd,'\test_images\CirclesExample.png']
rgb = imread(file);
imshow(rgb)

d = imdistline;
delete(d)

gray_image = rgb2gray(rgb);
imshow(gray_image)

[centers,radii] = imfindcircles(rgb,[20 25],'ObjectPolarity','dark')
%[centers,radii] = imfindcircles(rgb,[20 25],'ObjectPolarity','dark','Sensitivity',0.98)
[centers,radii] = imfindcircles(rgb,[20 25],'ObjectPolarity','dark', 'Sensitivity',0.96,'Method','twostage')

numbers = length(centers) %find number of circles

imshow(rgb)

drawnow
h = viscircles(centers,radii);

[centers,radii] = imfindcircles(rgb,[20 25],'ObjectPolarity','bright','Sensitivity',0.98)
h = viscircles(centers,radii,'Color','b');

filename = [pwd,'\images\CirclesExampleDectect.png']
saveas(gcf,filename)

%imwrite(rgb,filename)
