%%%%%%%%%%%%%%%%%%%%%%%%
%% Classical Vortices %%
%%%%%%%%%%%%%%%%%%%%%%%%

%%Numerical
clear
Gamma = 100;
U=0+i*0.0;
dt=1e-2;
time=120;
z_v1=1+1i;
z_v2=-1-1i;
z_v3=1-1i;
z_v4=-1+1i

result1=zeros([1,time/dt]);
result2=zeros([1,time/dt]);
result3=zeros([1,time/dt]);
result4=zeros([1,time/dt]);

result1(1)=z_v1;
result2(1)=z_v2;
result3(1)=z_v3;
result4(1)=z_v4;


for j=2:1:(time/dt)
result1(j) = rk4_4vortices(dt,result1(j-1),result2(j-1),result3(j-1),result4(j-1),0.6*Gamma,U);
result2(j) = rk4_4vortices(dt,result2(j-1),result3(j-1),result4(j-1),result1(j-1),1.1*Gamma,U);
result3(j) = rk4_4vortices(dt,result3(j-1),result4(j-1),result1(j-1),result2(j-1),0.79*Gamma,U);
result4(j) = rk4_4vortices(dt,result4(j-1),result1(j-1),result2(j-1),result3(j-1),1.43*Gamma,U);

end
plot(real(result1),imag(result1),'r*');
drawnow; 
hold on; 
plot(real(result2),imag(result2),'bx');
plot(real(result3),imag(result3),'g+');
plot(real(result4),imag(result4),'y.');

%%
