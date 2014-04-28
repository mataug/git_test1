function [ desc ] = color_hist( im, mask, numBins, varargin )
%COLOR_HIST Summary of this function goes here

desc = [];
% numBins = 8;
binSize = 256/numBins;
binCenters = (binSize-1)/2:binSize:255;
for c = 1:3
   r = im(:,:,c);
   % keyboard
   desc = [desc hist(double(r(mask>0)),binCenters)/sum(mask(:)>0)];
end
