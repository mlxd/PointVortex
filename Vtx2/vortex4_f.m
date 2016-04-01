%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Fluid Dynamics Vortex Motion  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function y = vortex4_f(z_v1,z_v2,z_v3,z_v4,dt,Gamma,U)
y = (U+(i/(2*pi))*(summation(Gamma,z_v1,[z_v2,z_v3,z_v4])))*dt;
end

function result = summation(Gamma,z0,z)
    result=0;
    for j=1:size(z,2)
        result = result + (Gamma/(conj(z0) - conj(z(j))));
    end
end