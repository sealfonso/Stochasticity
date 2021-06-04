N=1000;
x=0+(1)*rand(N,1);
A=zeros(N,1);
for i=1:N
    if x(i)<=0.3
        A(i)=1;
    end
end
NA=0;
for i=1:N
    if A(i)==1
        NA=NA+1;
    end
end
B=zeros(N,1);
for i=1:N
    if 0.2<=x(i)&& x(i)<=0.6
        B(i)=1;
    end
end
NB=0;
for i=1:N
    if B(i)==1
        NB=NB+1;
    end
end
AIB=0;
for i=1:N
    if A(i)==1 && B(i)==1
        AIB=AIB+1;
    end
end
AUB=NA+NB-AIB;
AdB=AIB/NB;
BdA=AIB/NA;
%% frecuencias relativas
NAr=NA/N;
NBr=NB/N;
AIBr=AIB/N;
AUBr=AUB/N;
AdBr=AdB;
BdAr=BdA;



