function ecg2cwtscg(ecgdata, cwtfb, ecgtype)
nos = 10;  %number of signals
no1 = 500; %signal length
colormap = jet(128);
if ecgtype == 'ARR'
    folderpath = strcat('ecgdataset_0623/arr/');
    findx = 0;
    for i = 1:30
        indx = 0;
        for k = 1:nos
            ecgsignal = ecgdata(i, indx+1: indx+no1);
            cfs = abs(cwtfb.wt(ecgsignal));
            im = ind2rgb(im2uint8(rescale(cfs)), colormap);
            filenameindex = findx + k;
            filename = strcat(folderpath, sprintf('%d.jpg', filenameindex));
            imwrite(imresize(im, [227 227]), filename);
            indx = indx + no1;
        end
        findx = findx + nos;
    end

elseif ecgtype == 'CHF'
    folderpath = strcat('ecgdataset_0623/chf/');
    findx = 0;
    for i = 1:30
        indx = 0;
        for k = 1:nos
            ecgsignal = ecgdata(i, indx+1: indx+no1);
            cfs = abs(cwtfb.wt(ecgsignal));
            im = ind2rgb(im2uint8(rescale(cfs)), colormap);
            filenameindex = findx + k;
            filename = strcat(folderpath, sprintf('%d.jpg', filenameindex));
            imwrite(imresize(im, [227 227]), filename);
            indx = indx + no1;
        end
        findx = findx + nos;
    end

    else ecgtype = 'NSR';
    folderpath = strcat('ecgdataset_0623/nsr/');
    findx = 0;
    for i = 1:30
        indx = 0;
        for k = 1:nos
            ecgsignal = ecgdata(i, indx+1: indx+no1);
            cfs = abs(cwtfb.wt(ecgsignal));
            im = ind2rgb(im2uint8(rescale(cfs)), colormap);
            filenameindex = findx + k;
            filename = strcat(folderpath, sprintf('%d.jpg', filenameindex));
            imwrite(imresize(im, [227 227]), filename);
            indx = indx + no1;
        end
        findx = findx + nos;
    end
    end
end

% if ecgtype == 'ARR'
%     folderpath = strcat('mainfolderpath/arr/');
%     findx = 0;
%     for i = 1:30
%         indx = 0;
%         for k = 1:nos
%             ecgsignal = ecgdata(i, indx+1: indx+no1);   %extracting signals
%             cfs = abs(cwtfb.wt(ecgsignal));
%             im = ind2rgb(im2uint8(rescale(cfs)), colormap);
%             filenameindex = findx + k;
%             filename = strcat(folderpath, sprintf('%d.jpg', filenameindex));
%             imwrite(imresize(im, [227 227]), filename);
%             indx = indx + no1;
%         end
%         findx = findx + nos;
%     end
% 
%     im = ind2rgb(im2uint8(rescale(cfs)), colormap);
%     
%      filenameindex = findx + k;
%             filename = strcat(folderpath, sprintf('%d.jpg', filenameindex));
%             imwrite(imresize(im, [227 227]), filename);
%             indx = indx + no1;
% 
% 
% 
