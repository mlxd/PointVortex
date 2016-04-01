%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Fluid Dynamics Vortex Motion  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function y = f(z_v1,z_v2,z_v3,z_v4,dt,Gamma,U)
y = U+(i/(2*pi))*summation(Gamma,z_v1,[z_v2,z_v3,z_v4])*dt;

%(Gamma/(conj(z_v1) - conj(z_v2)))*dt;
end
%%

function result = summation(Gamma,z0,z)
    result=0;
    for j=1:3
        result = result + (Gamma)/(conj(z0) - conj(z(j)));
    end
end
