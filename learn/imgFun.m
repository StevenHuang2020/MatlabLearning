function [img,gray] = imgFun(file)
    img = imread(file)
    gray = grayImg(img)
    imfinfo(file)
end

function gray_image = grayImg(img)
    gray_image = rgb2gray(img);
end