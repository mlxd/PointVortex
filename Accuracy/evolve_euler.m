function z = evolve_euler(dt,z0,z1,Gamma,U)
z = z0 + dt*f(z0,z1,dt,Gamma,U);;
end
