file = [pwd, '\test_images\rice.png'];
img = imgFun(file);

%imshow(img)

se = strel('disk',15)
background = imopen(img,se);
%imshow(background)

%I2 = img - background;
I2 = imtophat(img,strel('disk',15));

%imshow(I2)
I3 = imadjust(I2);
%imshow(I3)

bw = imbinarize(I3);
bw = bwareaopen(bw,50);

cc = bwconncomp(bw,4)
grain = false(size(bw));
grain(cc.PixelIdxList{50}) = true;

labeled = labelmatrix(cc);
RGB_label = label2rgb(labeled,'spring','c','shuffle');

graindata = regionprops(cc,'basic')
grain_areas = [graindata.Area];
grain_areas(50)
[min_area, idx] = min(grain_areas)
grainMin = false(size(bw));
grainMin(cc.PixelIdxList{idx}) = true;


nRow=3
nCol=3
i=1
figure('Renderer', 'painters', 'Position', [10 10 900 600])
subplot(nRow,nCol,i); imshow(img); title('Orignal');i=i+1;
subplot(nRow,nCol,i); imshow(background); title('background');i=i+1;
subplot(nRow,nCol,i); imshow(I2); title('Originam-background');i=i+1;
subplot(nRow,nCol,i); imshow(I3); title('I3');i=i+1;
subplot(nRow,nCol,i); imshow(bw); title('bw');i=i+1;
subplot(nRow,nCol,i); imshow(grain); title('grain');i=i+1;
subplot(nRow,nCol,i); imshow(RGB_label); title('RGB_label');i=i+1;
subplot(nRow,nCol,i); imshow(grainMin); title('grainMin');i=i+1;

histogram(grain_areas)
title('Histogram of Rice Grain Area')

filename = [pwd,'\images\riceDetect.png']
saveas(gcf,filename)