function [flip] = flipImg(img, leftRight)
    [row,column,chn] = size(img)
    disp(['image H,W,Chn=', num2str(row), ' ', num2str(column), ' ',num2str(chn)])
    
    for i=[1:row]
        for j=[1:column]
            for k=1:chn % better than using sqare brackets...
                if leftRight
                    %%left to right%%
                    flip(i,j,k) = img(i,(column -j+1),k);
                    flip(i,column-j+1,k) = img(i,j,k);
                else
                    %%up to down%%
                    flip(i,j,k) = img(row-i+1,j,k);
                    flip(row-i+1,j,k) = img(i,j,k);
                end
            end
        end
    end
end