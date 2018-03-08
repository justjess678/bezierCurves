function [ pts ] = points( u , P, c )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
pux=0;
puy=0;
pts=[];
ptsdecont=length(P);
n=ptsdecont-1;
for i=0:n
    B=c(i+1)*u^i*(1-u)^(n-i);
    %x
    pux=pux+B*P(i+1,1);
    %y
    puy=puy+B*P(i+1,2);
end
pts(1)=pux;
pts(2)=puy;
end

