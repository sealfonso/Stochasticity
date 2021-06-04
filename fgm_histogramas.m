%% Punto a
X1=exprnd(1,1000,1);
Y1=(X1-1);
figure(1)
histogram(Y1)
title('Histograma para n=1')
xlabel('Y_{1}')
ylabel('Frecuencia')

%% Punto b
X21=exprnd(1,1000,1);
X22=exprnd(1,1000,1);
Sn2=X21+X22;
Y2=(Sn2-2)/sqrt(2);
figure(2)
histogram(Y2)
title('Histograma para n=2')
xlabel('Y_{2}')
ylabel('Frecuencia')

%% Punto c

X31=exprnd(1,1000,1);
X32=exprnd(1,1000,1);
X33=exprnd(1,1000,1);
Sn3=X31+X32+X33;
Y3=(Sn3-3)/sqrt(3);
figure(3)
histogram(Y3)
title('Histograma para n=3')
xlabel('Y_{3}')
ylabel('Frecuencia')

X51=exprnd(1,1000,1);
X52=exprnd(1,1000,1);
X53=exprnd(1,1000,1);
X54=exprnd(1,1000,1);
X55=exprnd(1,1000,1);
Sn5=X51+X52+X53+X54+X55;
Y5=(Sn5-5)/sqrt(5);
figure(4)
histogram(Y5)
title('Histograma para n=5')
xlabel('Y_{5}')
ylabel('Frecuencia')

X10=zeros(1000,10);
for i=1:10
    X10(:,i)=exprnd(1,1000,1);
end
Sn10=sum(X10,2);
Y10=(Sn10-10)/sqrt(10);
figure(5)
histogram(Y10)
title('Histograma para n=10')
xlabel('Y_{10}')
ylabel('Frecuencia')

X1000=zeros(1000,1000);
for i=1:1000
    X1000(:,i)=exprnd(1,1000,1);
end
Sn1000=sum(X1000,2);
Y1000=(Sn1000-1000)/sqrt(1000);
figure(6)
histogram(Y1000)
title('Histograma para n=1000')
xlabel('Y_{1000}')
ylabel('Frecuencia')

    
    
    
    
    
    
    
    
    
    
