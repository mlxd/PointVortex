function z = evolve_rk4(dt,z0,z1,Gamma,U)
k0 = f(z0,z1,0,Gamma,U);
k1 = f(z0+k0/2,z1,dt/2,Gamma,U);
k2 = f(z0 + k1/2,z1,dt/2,Gamma,U);
k3 = f(z0 + k2,z1,dt,Gamma,U);
z = z0 + (dt/6)*(k0 + 2*k1 + 2*k2 + k3);
end
