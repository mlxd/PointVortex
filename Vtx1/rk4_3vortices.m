function z = rk4_3vortices(dt,z0,z1,z2,Gamma,U)
k0 = vortex3_f(z0,z1,z2,0,Gamma,U);
k1 = vortex3_f(z0+dt*k0/2,z1,z2,dt/2,Gamma,U);
k2 = vortex3_f(z0 + dt*k1/2,z1,z2,dt/2,Gamma,U);
k3 = vortex3_f(z0 + dt*k2,z1,z2,dt,Gamma,U);
z = z0 + (dt/6)*(k0 + 2*k1 + 2*k2 + k3);
end
