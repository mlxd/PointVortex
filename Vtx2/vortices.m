%%%%%%%%%%%%%%%%%%%%%%%%
%% Classical Vortices %%
%%%%%%%%%%%%%%%%%%%%%%%%

%%Numerical
clear
Gamma = 100;
U=0+i*0.0;
dt=5e-3;
time=60;
z_v1=1+1i;
z_v2=2+1i;


result1=zeros([1,time/dt]);
result2=zeros([1,time/dt]);
result1(1)=z_v1;
result2(1)=z_v2;

for j=2:1:(time/dt)
result1(j) = evolve_rk4(dt,result1(j-1),result2(j-1),Gamma,U);
result2(j) = evolve_rk4(dt,result2(j-1),result1(j-1),Gamma,U);
end
plot(real(result1),imag(result1),'r*');drawnow; hold on; plot(real(result2),imag(result2),'bx');
%%

for jj=1:time
plot(analytical(2,Gamma,jj));hold on
end

%%
result1a=zeros([1,time/dt]);
result2a=zeros([1,time/dt]);
result1a(1)=z_v1;
result2a(1)=z_v2;
for j=2:time
   d=norm(result1a(j-1)-result2a(j-1));
    t=j;
    result1a(j)=-(d/2)*exp(i*Gamma1*t/(pi*d^2));
    result2a(j)=-(d/2)*exp(i*Gamma2*t/(pi*d^2));
end
figure(2);plot(real(result1a),imag(result1a),'r*'); hold on; plot(real(result2a),imag(result2a),'bx');
