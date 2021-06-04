%% Punto a
mu=[0 0];
sigma=eye(2,2);
n=5000;
R=mvnrnd(mu,sigma,n);
figure(1)
plot(R(:,1),R(:,2),'.')
title('Realizaciones de X')
xlabel('X_{1}')
ylabel('X_{2}')

%% Punto c
Cy=[3 1;1 1];
muy=[5 1];
A=sqrtm(Cy);
b=[5 1];
Y=zeros(5000,2);
for i=1:5000
    Y(i,:)=(R(i,:)*A)+b;
end
figure(2)
plot(Y(:,1),Y(:,2),'.')
title('Realizaciones de Y')
xlabel('Y_{1}')
ylabel('Y_{2}')
%% Punto d
yt1=-2:0.1:12;
yt2=-3:0.1:5;
y1=(1/(sqrt(Cy(1,1))*sqrt(2*pi)))*exp(-((yt1-muy(1,1)).^2)/(2*Cy(1,1)));
y2=(1/(sqrt(Cy(2,2))*sqrt(2*pi)))*exp(-((yt2-muy(1,2)).^2)/(2*Cy(2,2)));
figure(3)
subplot(1,2,1)
h1=histogram(Y(:,1),'Normalization','pdf');
hold on
plot(yt1,y1)
title('Histograma y PDF de Y_{1}')
xlabel('Valores de Y_{1}')
ylabel('Densidad')
legend('Histograma','PDF')
subplot(1,2,2)
h2=histogram(Y(:,2),'Normalization','pdf');
hold on
plot(yt2,y2)
title('Histograma y PDF de Y_{2}')
xlabel('Valores de Y_{2}')
ylabel('Densidad')
legend('Histograma','PDF')