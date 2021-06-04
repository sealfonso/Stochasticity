%% Bernoulli

xb=[0 1];
p1=0.7;
p2=0.5;
p3=0.2;
pmfb1=[1-p1 p1];
pmfb2=[1-p2 p2];
pmfb3=[1-p3 p3];
figure(1)
subplot(3,1,1)
stem(xb,pmfb1)
axis([-0.3 1.3 -0.2 1.2])
title('PMF Bernoulli 1')
xlabel('X')
ylabel('PMF')
subplot(3,1,2)
stem(xb,pmfb2)
axis([-0.3 1.3 -0.2 1.2])
title('PMF Bernoulli 2')
xlabel('X')
ylabel('PMF')
subplot(3,1,3)
stem(xb,pmfb3)
axis([-0.3 1.3 -0.2 1.2])
title('PMF Bernoulli 3')
xlabel('X')
ylabel('PMF')
%% Binomial
N1=1:5;
N2=1:10;
xbi=0:5;
pmfbi1v=zeros(1,size(xbi,2));
for i=0:xbi(end)
    if i==0
        pmfbilv(1)=(p1.^i)*((1-p1).^(N1(end)-i));
    else
    combo=(combnk(N1,i));
    largo=length(combo);
    pmfbi1(i)=(largo)*(p1.^i)*((1-p1).^(N1(end)-i));
    pmfbi1v(i+1)=pmfbi1(i);
    end
end
pmfbi2v=zeros(1,size(xbi,2));
for i=0:xbi(end)
    if i==0
        pmfbi2v(1)=(p2.^i)*((1-p2).^(N1(end)-i));
    else
    combo2=(combnk(N1,i));                %Cambia el parámetro p
    largo2=length(combo2);
    pmfbi2(i)=(largo2)*(p2.^i)*((1-p2).^(N1(end)-i));
    pmfbi2v(i+1)=pmfbi2(i);
    end
end
pmfbi3v=zeros(1,size(xbi,2));
for i=0:xbi(end)
    if i==0
        pmfbi3v(1)=(p1.^i)*((1-p1).^(N2(end)-i));
    else
    combo3=(combnk(N2,i));              %Cambia el parámetro N
    largo3=length(combo3);
    pmfbi3(i)=(largo3)*(p1.^i)*((1-p1).^(N2(end)-i));
    pmfbi3v(i+1)=pmfbi3(i);
    end
end
figure(2)
subplot(3,1,1)
stem(xbi,pmfbi1v)
axis([-0.3 3.3 -0.1 0.5])
title('PMF Binomial 1')
xlabel('X')
ylabel('PMF')
subplot(3,1,2)
stem(xbi,pmfbi2v)
axis([-0.3 3.3 -0.001 0.37])
title('PMF Binomial 2')
xlabel('X')
ylabel('PMF')
subplot(3,1,3)
stem(xbi,pmfbi3v)
axis([-0.3 3.3 -0.001 0.012])
title('PMF Binomial 3')
xlabel('X')
ylabel('PMF')

%% Binomial negativa

k1=1:4;
k2=1:3;
xbin=1:5;
pmfbin1v=zeros(1,size(k1,2));
for i=1:k1(end)
  
    combo=(combnk(xbin-1,i-1));
    largo=length(combo);
    pmfbin1(i)=(largo)*(p1.^i)*((1-p1).^(xbin(end)-i));
    pmfbin1v(i)=pmfbin1(i);

end
pmfbin2v=zeros(1,size(k1,2));
for i=1:k1(end)
    combo2=(combnk(xbin-1,i-1));                %Cambia el parámetro p
    largo2=length(combo2);
    pmfbin2(i)=(largo2)*(p2.^i)*((1-p2).^(xbin(end)-i));
    pmfbin2v(i)=pmfbin2(i);
  
end
pmfbin3v=zeros(1,size(k2,2));
for i=1:k2(end)
    combo3=(combnk(xbin-1,i-1));              %Cambia el parámetro k
    largo3=length(combo3);
    pmfbin3(i)=(largo3)*(p1.^i)*((1-p1).^(xbin(end)-i));
    pmfbin3v(i)=pmfbin3(i);
    
end
figure(3)
subplot(3,1,1)
stem(k1,pmfbin1v)
axis([0.7 4.3 -0.1 1])
title('PMF Binomial Negativa 1')
xlabel('k')
ylabel('PMF')
subplot(3,1,2)
stem(k1,pmfbin2v)
axis([0.7 4.3 -0.001 0.37])
title('PMF Binomial Negativa 2')
xlabel('k')
ylabel('PMF')
subplot(3,1,3)
stem(k2,pmfbin3v)
axis([0.7 3.3 -0.001 0.5])
title('PMF Binomial Negativa 3')
xlabel('k')
ylabel('PMF')

%% Geométrica

xg1=1:5;
xg2=1:6;
pmfg1=zeros(1,size(xg1,2));
for i=1:xg1(end)
pmfg1(i)=p1*((1-p1).^(i-1));
end
pmfg2=zeros(1,size(xg1,2));
for i=1:xg1(end)
pmfg2(i)=p2*((1-p2).^(i-1));
end
pmfg3=zeros(1,size(xg2,2));
for i=1:xg2(end)
pmfg3(i)=p1*((1-p1).^(i-1));
end
figure(4)
subplot(3,1,1)
stem(xg1,pmfg1)
axis([0.7 5.3 -0.1 0.8])
title('PMF Geométrica 1')
xlabel('k')
ylabel('PMF')
subplot(3,1,2)
stem(xg1,pmfg2)
axis([0.7 5.3 -0.001 0.6])
title('PMF Geométrica 2')
xlabel('k')
ylabel('PMF')
subplot(3,1,3)
stem(xg2,pmfg3)
axis([0.7 6.3 -0.001 0.8])
title('PMF Geométrica 3')
xlabel('k')
ylabel('PMF')

%% Poisson

xp=0:5;
lambda1=0.5;
lambda2=0.2;
t=2;
t2=3;
pmfp1v=zeros(1,size(xp,2));
for i=0:xp(end)
    if i==0
        pmfp1v(1)=(exp(-lambda1*t));
    else
    pmfp1(i)=((exp(-lambda1*t))*((lambda1*t).^(i)))/(factorial(i));
    pmfp1v(i+1)=pmfp1(i);
    end
end
pmfp2v=zeros(1,size(xp,2));
for i=0:xp(end)
    if i==0
        pmfp1v(2)=(exp(-lambda2*t));               %Cambiando Lambda
    else
    pmfp2(i)=((exp(-lambda2*t))*((lambda2*t).^(i)))/(factorial(i));
    pmfp2v(i+1)=pmfp2(i);
    end
end
pmfp3v=zeros(1,size(xp,2));
for i=0:xp(end)
    if i==0
        pmfp3v(1)=(exp(-lambda1*t2));              %Cambiando t
    else
    pmfp3(i)=((exp(-lambda1*t2))*((lambda1*t2).^(i)))/(factorial(i));
    pmfp3v(i+1)=pmfp3(i);
    end
end
figure(5)
subplot(3,1,1)
stem(xp,pmfp1v)
axis([-0.3 5.3 -0.1 0.8])
title('PMF Poisson 1')
xlabel('X')
ylabel('PMF')
subplot(3,1,2)
stem(xp,pmfp2v)
axis([-0.3 5.3 -0.001 0.4])
title('PMF Poisson 2')
xlabel('X')
ylabel('PMF')
subplot(3,1,3)
stem(xp,pmfp3v)
axis([-0.3 5.3 -0.001 0.4])
title('PMF Poisson 3')
xlabel('X')
ylabel('PMF')
