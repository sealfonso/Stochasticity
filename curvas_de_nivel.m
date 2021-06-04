fileID=fopen('datosCaso10.txt','r'); %Se escanea el archivo de datos
data=fscanf(fileID,'%f%f',[2 500]);
Z=data';
mu=mean(Z); %Determinación de la media
cz=cov(Z);  %Determinación de la matriz de covarianza
figure(1)
plot(Z(:,1),Z(:,2),'.') %Gráfica de realizaciones
x=(-3:0.01:5)'; % Valores a X
y=(-3:0.01:5)'; % Valores a Y
pz=[]; % Inicialización de la PDF
for i=1:size(x,1) %Recorrido a través de X
    for j=1:size(y,1) %Recorrido a través de Y
       pz(i,j)=(1/(sqrt(det(cz)*((2*pi)^2))))*exp((-1/2)*([x(i) y(j)]-[mu(2) mu(1)])*inv(cz)*([x(i) y(j)]-[mu(2) mu(1)])');
    end 
end % Se llena la PDF a partir de los recorridos de X y Y
hold on
contour(x,y,pz) %Curvas de nivel
title('Realizaciones de Z y curvas de nivel de la PDF')
xlabel('Realizaciones de X')
ylabel('Realizaciones de Y')
xlim([-3 3])
   





