
file = [pwd, '\test_images\lena.png'];
img = imgFun(file);
[H,W,chn] = size(img)

%save = [pwd,'\images\lenaAll.png']
%plotAll(img,save)

gray = rgb2gray(img)
grayflip1 = flipImg(gray,1)

%imshow(gray)
flip1 = flipImg(img,1)
%imshow(flip1)
flip2 = flipImg(img,0)

nRow=2
nCol=2
i=1
%subplot(nRow,nCol,i); imshow(img); title('Orignal');i=i+1;
subplot(nRow,nCol,i); imshow(grayflip1); title('grayflip1');i=i+1;
subplot(nRow,nCol,i); imshow(gray); title('gray');i=i+1;
subplot(nRow,nCol,i); imshow(flip1); title('flip1');i=i+1;
subplot(nRow,nCol,i); imshow(flip2); title('flip2');i=i+1;

save = [pwd,'\images\lenaFlip.png']
saveas(gcf,save)