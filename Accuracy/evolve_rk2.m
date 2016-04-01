function z = evolve_rk2(dt,z0,z1,Gamma,U)
k0 = f(z0,z1,dt/2,Gamma,U);
z = z0 + (dt)*(k0);
end
