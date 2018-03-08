function [ P ] = crazyPts( numPts, min, max)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
P=[];
for i=1:numPts
    r = randi([min max],1,1);
    P(i,1)=r;
    r = randi([min max],1,1);
    P(i,2)=r;
end
end

