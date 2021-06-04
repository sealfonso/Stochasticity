x=-4:0.01:4;
y=-4:0.01:4;
p=-0.99;
fxy=(1/((2.*pi)*sqrt(1-p.^2)))*exp(-(x.^2 - 2*p.*x.*y' + y.^2)/2.*(1- p.^2));
figure(1)
subplot(2,1,1)
mesh(x,y,fxy)
title('Superficie y contorno cuando p=-0.99')
zlabel('f_{XY} (x,y)')
xlabel('x')
ylabel('y')
subplot(2,1,2)
contour(x,y,fxy)
xlabel('x')
ylabel('y')
%% -------------Punto 2-----------------
fileID=fopen('datosCaso6.txt','r');
data=fscanf(fileID,'%f%f',[2 1000]);
mat=data';
r1=mat(:,1);
r2=mat(:,2);
figure(2)
plot(r1,r2,'.')
hold on
contour(x,y,fxy)
title('Muestras de la realización de la variable aleatoria')
xlabel('x')
ylabel('y')