%%%%%%%%%%%%%%%%%%%%%%%%
%% Classical Vortices %%
%%%%%%%%%%%%%%%%%%%%%%%%

%%Numerical
clear
Gamma = 1000;
U=0+i*0.0;
dt=0.005;
time=120;
z_v1=-1+2i;
z_v2=0.3+1.3i;
z_v3=+0.6-0.6i;


result1=zeros([1,time/dt]);
result2=zeros([1,time/dt]);
result3=zeros([1,time/dt]);
result1(1)=z_v1;
result2(1)=z_v2;
result3(1)=z_v3;


for j=2:1:(time/dt)
result1(j) = rk4_3vortices(dt,result1(j-1),result2(j-1),result3(j-1),1.63*Gamma,U);
result2(j) = rk4_3vortices(dt,result2(j-1),result3(j-1),result1(j-1),1.09*Gamma,U);
result3(j) = rk4_3vortices(dt,result3(j-1),result1(j-1),result2(j-1),1.21*Gamma,U);
end
plot(real(result1),imag(result1),'r*');
drawnow; 
hold on; 
plot(real(result2),imag(result2),'bo');
plot(real(result3),imag(result3),'g.');

%%
