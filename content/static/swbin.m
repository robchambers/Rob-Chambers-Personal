function output = swBIN(input, xbyx)
% Simple software binning. Sums xbyx^2 pixels into a single pixel (similar
% to on-camera binning). Vectorized for O(n) for-loop iterations on an nxn image, as
% opposed to the O(n^2) iterations that an even more naive approach would
% take.
%
% Rob Chambers

% Rows
output1=zeros([floor(size(input,1)/xbyx),size(input,2)]);
for i=1:floor(size(input,1)/xbyx)
    output1(i,:)=sum(input((i-1)*xbyx+1:i*xbyx,:),1);
end

% Columns
output=zeros(floor(size(input)/xbyx));
for i=1:floor(size(input,2)/xbyx)
    output(:,i)=sum(output1(:,(i-1)*xbyx+1:i*xbyx),2);
end