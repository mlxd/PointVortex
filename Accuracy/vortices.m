%%%%%%%%%%%%%%%%%%%%%%%%
%% Classical Vortices %%
%%%%%%%%%%%%%%%%%%%%%%%%

%%Numerical
clear
Gamma = 1;
Gamma1=Gamma;
U=0+i*0.0;
dt=0.00001;
time=10;
z_v1=0.5+0i;
z_v2=-0.5+0i;

result1=zeros([1,time/dt]);
result2=zeros([1,time/dt]);
result1(1)=z_v1;
result2(1)=z_v2;
d(1) = norm(z_v1 - z_v2);
for j=1:1:(time/dt)-1
result1(j+1) = evolve_rk4(dt,result1(j),result2(j),Gamma,U);
result2(j+1) = evolve_rk4(dt,result2(j),result1(j),Gamma,U);
d(j+1)=norm(result1(j+1)-result2(j+1));
end
result1=result1./d;
result2=result2./d;
plot(real(result1),imag(result1),'go');drawnow; hold on; plot(real(result2),imag(result2),'y.');
%%

% for jj=1:time
% plot(analytical(2,Gamma,jj));hold on
% end

%%
result1a=zeros([1,time/dt]);
result2a=zeros([1,time/dt]);
result1a(1)=z_v1;
result2a(1)=z_v2;
for j=1:time/dt
    t=j*dt*Gamma;
    result1a(j)=-(1/2)*exp(i*t/(pi));
    result2a(j)=(1/2)*exp(i*t/(pi));
end
plot(real(result1a),imag(result1a),'r*'); hold on; plot(real(result2a),imag(result2a),'bx');

%Error
error=zeros([1,time/dt]);
for j=1:time/dt
    error(j)=norm((result1(j)) - (result1a(j)));
end
figure(2); plot(error);