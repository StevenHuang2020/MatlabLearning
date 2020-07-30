clear
%[row,col] = getRowAndColumn(12);

file = [pwd,'\test_images\lena.png']

I = imread(file)

%disp([num2str(size(I(:,:,1)*weights(n)))])
%disp(['cc=',num2str(size(I(:,:,1)*0.8))])

grayMean=grayImg(I,1)
%imshow(grayMean)
grayOpt=grayImg(I,0)
%imshow(grayOpt)
%imshow(I)

nRow=1
nCol=2
i=1
subplot(nRow,nCol,i); imshow(grayMean); title('grayMean');i=i+1;
subplot(nRow,nCol,i); imshow(grayOpt); title('grayOpt');i=i+1;
save = [pwd,'\images\lenaGray.png']
saveas(gcf,save)
