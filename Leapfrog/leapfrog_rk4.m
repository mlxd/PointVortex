function z = leapfrog_rk4(dt,z0,z1,z2,z3,Gamma,U)
k0 = leapfrog_f(z0,z1,z2,z3,0,Gamma,U);
k1 = leapfrog_f(z0+dt*k0/2,z1,z2,z3,dt/2,Gamma,U);
k2 = leapfrog_f(z0 + dt*k1/2,z1,z2,z3,dt/2,Gamma,U);
k3 = leapfrog_f(z0 + dt*k2,z1,z2,z3,dt,Gamma,U);
z = z0 + (dt/6)*(k0 + 2*k1 + 2*k2 + k3);
end
