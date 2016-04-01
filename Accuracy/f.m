%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Fluid Dynamics Vortex Motion  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function y = f(z_v1,z_v2,dt,Gamma,U)
y = U+(i/(2*pi))*(Gamma/(conj(z_v1) - conj(z_v2)))*dt;
end
%%