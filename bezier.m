clear all;
hold off;
%Courbes de Bezier
%NOTES
%Casteljou: I(u)=(1-u)P0+uP1
%p(u)=SUM(B^n0(u)Pi)
%faire pareil pour x et y
POut=[];
%vals en entree
x=0;
y=0;
pts=[];
P=crazyPts(10, 0, 10);
%P=[0 0;1 1; 3 1;4 0; 5 0;6 1];
%P=[0 0;4 4;8 4;12 0];
%plot(P(:,1),P(:,2))
courbe1=crazyPts(3,0,5);
courbe2=crazyPts(3,3,10);
courbe3=crazyPts(3,2,8);
plot(courbe1(:,1),courbe1(:,2),'r')
hold on
plot(courbe2(:,1),courbe2(:,2),'g')
plot(courbe3(:,1),courbe3(:,2),'m')
P=[courbe1;courbe2;courbe3]
%Methode triangle de pascal
c=triangle_pascal(length(P));
c=c(end,:);
i=1;
pas=1000
for u=0:pas
    pts=points(u/pas, P, c)
    POut(i,1)=(pts(1));
    POut(i,2)=(pts(2));
    i=i+1;
end
plot(POut(:,1),POut(:,2),'b')
hold off
