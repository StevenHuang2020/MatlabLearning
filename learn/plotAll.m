function plotAll(img,saveFile)
    r = img(:, :, 1);
    g = img(:, :, 2);
    b = img(:, :, 3);

    rImg = img
    gImg = img
    bImg = img
    
    rImg(:,:,2)=0
    rImg(:,:,3)=0

    gImg(:,:,1)=0
    gImg(:,:,3)=0

    bImg(:,:,1)=0
    bImg(:,:,2)=0

    nRow=2
    nCol=3
    i=1
    %figure('Renderer', 'painters', 'Position', [10 10 900 600])
    %subplot(nRow,nCol,i); imshow(img); title('Orignal');i=i+1;
    subplot(nRow,nCol,i); imshow(r); title('R');i=i+1;
    subplot(nRow,nCol,i); imshow(g); title('G');i=i+1;
    subplot(nRow,nCol,i); imshow(b); title('B');i=i+1;
    subplot(nRow,nCol,i); imshow(rImg); title('rImg');i=i+1;
    subplot(nRow,nCol,i); imshow(gImg); title('gImg');i=i+1;
    subplot(nRow,nCol,i); imshow(bImg); title('bImg');i=i+1;

    saveas(gcf,saveFile)
end