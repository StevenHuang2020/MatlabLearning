function [resImg] = grayImg(img,mean)
    [H,W,chn] = size(img)
    resImg = zeros(H,W)
%     for row =[1:H]
%         for col = [1:W]
%             x=0
%             for n=[1:chn]
%                x = x + img(row,col,n)
%             end
%             resImg(row,col) = x/chn
%         end
%     end

%     for row =1:H
%         x=0
%         for n=1:chn
%            x = x + img(row,:,n)
%         end
%         resImg(row,:) = x/chn
%     end

    if mean
    %%%mean r g b%%%
        x=0
        for n=1:chn
           x = x + img(:,:,n)
        end
        resImg(:,:) = x/chn
    else
    %%%grayscale = ( (0.3 * R) + (0.59 * G) + (0.11 * B) )%%%
        x=zeros(H,W)
        weights=[0.3, 0.59, 0.11]
        for n=1:chn
           %x = x + (img(:,:,n)*weights(n))
           x = x + double((img(:,:,n)*weights(n)))
        end
        resImg = x
    end
    
    resImg  = uint8(resImg)
end
