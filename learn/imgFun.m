function [img,gray] = imgFun(file)
    img = imread(file)
    [H,W,chn] = size(img)
    disp([file, ' ', num2str(H), ' ', num2str(W), ' ',num2str(chn)])
    if chn>1
        gray = grayImg(img)
    end
    imfinfo(file)
end

function gray_image = grayImg(img)
    gray_image = rgb2gray(img)
end