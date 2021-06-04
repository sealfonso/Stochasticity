fileID=fopen('dataCaso5.txt','r');
data=fscanf(fileID,'%f');
ll=0.4;
ul=2.8;
% I0=0;
% for i=1:size(data,1)
%     if data(i)<0.4 && data(i)>0.3
%         I0=I0+1;
%     end
% end
% f0=I0/size(data,1);
I1=0;
for i=1:size(data,1)
    if data(i)<0.5 && data(i)>0.4
        I1=I1+1;
    end
end
f1=I1/size(data,1);
I2=0;
for i=1:size(data,1)
    if data(i)<0.6 && data(i)>0.5
        I2=I2+1;
    end
end
f2=I2/size(data,1);
I3=0;
for i=1:size(data,1)
    if data(i)<0.7 && data(i)>0.6
        I3=I3+1;
    end
end
f3=I3/size(data,1);
I4=0;
for i=1:size(data,1)
    if data(i)<0.8 && data(i)>0.7
        I4=I4+1;
    end
end
f4=I4/size(data,1);
I5=0;
for i=1:size(data,1)
    if data(i)<0.9 && data(i)>0.8
        I5=I5+1;
    end
end
f5=I5/size(data,1);
I6=0;
for i=1:size(data,1)
    if data(i)<1&& data(i)>0.9
        I6=I6+1;
    end
end
f6=I6/size(data,1);
I7=0;
for i=1:size(data,1)
    if data(i)<1.1 && data(i)>1
        I7=I7+1;
    end
end
f7=I7/size(data,1);
I8=0;
for i=1:size(data,1)
    if data(i)<1.2 && data(i)>1.1
        I8=I8+1;
    end
end
f8=I8/size(data,1);
I9=0;
for i=1:size(data,1)
    if data(i)<1.3 && data(i)>1.2
        I9=I9+1;
    end
end
f9=I9/size(data,1);
I10=0;
for i=1:size(data,1)
    if data(i)<1.4 && data(i)>1.3
        I10=I10+1;
    end
end
f10=I10/size(data,1);
I11=0;
for i=1:size(data,1)
    if data(i)<1.5 && data(i)>1.4
        I11=I11+1;
    end
end
f11=I11/size(data,1);
I12=0;
for i=1:size(data,1)
    if data(i)<1.6 && data(i)>1.5
        I12=I12+1;
    end
end
f12=I12/size(data,1);
I13=0;
for i=1:size(data,1)
    if data(i)<1.7 && data(i)>1.6
        I13=I13+1;
    end
end
f13=I13/size(data,1);
I14=0;
for i=1:size(data,1)
    if data(i)<1.8 && data(i)>1.7
        I14=I14+1;
    end
end
f14=I14/size(data,1);
I15=0;
for i=1:size(data,1)
    if data(i)<1.9 && data(i)>1.8
        I15=I15+1;
    end
end
f15=I15/size(data,1);
I16=0;
for i=1:size(data,1)
    if data(i)<2 && data(i)>1.9
        I16=I16+1;
    end
end
f16=I16/size(data,1);
I17=0;
for i=1:size(data,1)
    if data(i)<2.1 && data(i)>2
        I17=I17+1;
    end
end
f17=I17/size(data,1);
I18=0;
for i=1:size(data,1)
    if data(i)<2.2 && data(i)>2.1
        I18=I18+1;
    end
end
f18=I18/size(data,1);
I19=0;
for i=1:size(data,1)
    if data(i)<2.3 && data(i)>2.2
        I19=I19+1;
    end
end
f19=I19/size(data,1);
I20=0;
for i=1:size(data,1)
    if data(i)<2.4 && data(i)>2.3
        I20=I20+1;
    end
end
f20=I20/size(data,1);
I21=0;
for i=1:size(data,1)
    if data(i)<2.5 && data(i)>2.4
        I21=I21+1;
    end
end
f21=I21/size(data,1);
I22=0;
for i=1:size(data,1)
    if data(i)<2.6 && data(i)>2.5
        I22=I22+1;
    end
end
f22=I22/size(data,1);
I23=0;
for i=1:size(data,1)
    if data(i)<2.7 && data(i)>2.6
        I23=I23+1;
    end
end
f23=I23/size(data,1);
I24=0;
for i=1:size(data,1)
    if data(i)<2.8 && data(i)>2.7
        I24=I24+1;
    end
end
f24=I24/size(data,1);
f=[0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f13 f14 f15 f16 f17 f18 f19 f20 f21 f22 f23 f24];
Int1=ll:0.1:ul;
figure(1)
bar(Int1,f)
xlim([ll ul])
title('Histograma')
ylabel('Frecuencia Relativa')
xlabel('Valores Variable Aleatoria')
%% Punto 2

vf=[f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12 f14 f14 f15 f16 f17 f18 f19 f20 f21 f22 f23 f24];
cdf=zeros(1,size(vf,2));
for i=1:size(vf,2)
    if i==1
        cdf(i)=vf(1);
    else
    cdf(i)=cdf(i-1)+vf(i);
    end
end
Int2=linspace(ll,ul,size(cdf,2));
figure(2)
title('Histograma y CDF')
yyaxis left
bar(Int1,f)
ylabel('Frecuencia Relativa')
xlabel('Valores Variable Aleatoria')
ylim([0 0.14])
xlim([ll ul])
hold on
yyaxis right
plot(Int2,cdf)
ylabel('Probabilidad')
legend('histograma','CDF')

