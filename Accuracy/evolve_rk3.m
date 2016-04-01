function z = evolve_rk3(dt,z0,z1,Gamma,U)
k0 = f(z0,z1,0,Gamma,U);
k1 = f(z0+k0/2,z1,dt/2,Gamma,U);
k2 = f(z0-k0+k1,z1,dt,Gamma,U);
z = z0 + (dt/6)*(k0 + 4*k1 + k2);
end
