function z = evolve_rk2(dt,z0,z1,z2,z3,Gamma,U)
k0 = vortex4_f(z0,z1,z2,z3,dt/2,Gamma,U);
z = z0 + (dt)*(k0);
end
