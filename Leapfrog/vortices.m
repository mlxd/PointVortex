%%%%%%%%%%%%%%%%%%%%%%%%
%% Classical Vortices %%
%%%%%%%%%%%%%%%%%%%%%%%%

%%Numerical
clear
Gamma = 20;
U=0+i*0.0;
dt=5e-3;
time=1000;

z_v1a=1 + 0i;
z_v2a=2 - 0i;
z_v1b=-1 + 0i;
z_v2b=-2 - 0i;

result1a=zeros([1,time/dt]);
result2a=zeros([1,time/dt]);
result1a(1)=z_v1a;
result2a(1)=z_v2a;

result1b=zeros([1,time/dt]);
result2b=zeros([1,time/dt]);
result1b(1)=z_v1b;
result2b(1)=z_v2b;

for j=2:1:(200000)
result1a(j) = leapfrog_rk4(dt,result1a(j-1),result2a(j-1),result1b(j-1),result2b(j-1),Gamma,U);
result2a(j) = leapfrog_rk4(dt,result2a(j-1),result1a(j-1),result1b(j-1),result2b(j-1),Gamma,U);
result1b(j) = leapfrog_rk4(dt,result1b(j-1),result2b(j-1),result1a(j-1),result2a(j-1),-Gamma*1.75,U);
result2b(j) = leapfrog_rk4(dt,result2b(j-1),result1b(j-1),result1a(j-1),result2a(j-1),-Gamma*1.75,U);
end
plot(real(result1a),imag(result1a),'r*');
drawnow; hold on; 
plot(real(result2a),imag(result2a),'bx');
plot(real(result1b),imag(result1b),'go');
plot(real(result2b),imag(result2b),'y.');
%%