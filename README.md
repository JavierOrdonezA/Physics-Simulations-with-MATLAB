# Physics-Simulations-with-MATLAB

This project showcases various numerical methods implemented in MATLAB to simulate complex physical systems, including double pendulums, mass-spring systems, and partial differential equations. The aim is to provide a comprehensive collection of scripts and visualizations that demonstrate the application of different numerical techniques to solve and analyze these systems.

This project aims to explore and simulate various physical phenomena using numerical methods. The simulations include:

- **3D Projectile Motion** with different resistance models.
- **Double Pendulum Dynamics** using Euler, Runge-Kutta, and Verlet integration methods.
- **Mass-Spring System** simulations with different numerical integration techniques.
- **Non-linear Pendulum** and its behavior under various conditions.
- **Diffusion Equations** with logistic terms and convective effects.
- **Time-Dependent Schrödinger Equation** for quantum mechanics simulations.
- **Wilberforce Pendulum**
- **Burgers Equation**
 

## Scripts

### 1. Projectile Motion

- **3D Parabolic Shot.m**: Simulates projectile motion in 3D with parabolic trajectory.
- **projectile_quadratic_resistance_EulerF.m**: Projectile motion with quadratic resistance using the Forward Euler method.
- **projectile_quadratic_resistance_EulerM.m**: Projectile motion with quadratic resistance using the Modified Euler method.
- **projectile_quadratic_resistance_Verlet.m**: Projectile motion with quadratic resistance using the Verlet method.

### 2. Double Pendulum

- **double_pendulum_Euler.m**: Double pendulum simulation using Euler's method.
- **double_pendulum_ode45.m**: Double pendulum simulation using MATLAB's ode45 solver.
- **double_pendulum_rk4.m**: Double pendulum simulation using the Runge-Kutta 4th order method.
- **double_pendulum_verlet.m**: Double pendulum simulation using the Verlet integration method.

### 3. Mass-Spring System

- **Mass-spring system _forward_euler_method.m**: Simulates the mass-spring system using the Forward Euler method.
- **Mass-spring system _modified_euler_method.m**: Simulates the mass-spring system using the Modified Euler method.
- **Mass-spring system_Verlet.m**: Simulates the mass-spring system using the Verlet method.

### 4. Non-Linear Pendulum

- **Non-Linear-Pendulum.m**: Simulates the dynamics of a non-linear pendulum.

### 5. Diffusion and Burgers_equation Equations

- **One-dimensional-diffusion-equation-logistic-term.m**: Simulates the one-dimensional diffusion equation with logistic term.
- **One-dimensional-diffusion-equation.m**: Simulates the one-dimensional diffusion equation.
- **Discretization_Burgers_equation.m**

### 6. Time-Dependent Schrödinger Equation

- **time-dependent Schrödinger.m**: Simulates the time-dependent Schrödinger equation.

### 7. Wilberforce Pendulum

- **wilberforce_pendulum_ODE45.m**: Simulates the Wilberforce pendulum using ode45.
- **wilberforce_pendulum_RK4.m**: Simulates the Wilberforce pendulum using Runge-Kutta 4th order method.

## Results

The `results` directory contains images of the simulation outputs

To run the simulations, simply download the repository and open the `.m` files in MATLAB. Each script has comments to guide you through the execution process.



### These learnings not only enhanced my understanding of numerical methods/ programming but also demonstrated their practical application in solving complex physical problems.


Feel free to explore the projects and their solutions in the respective directories.
👾 Happy coding! 🥷
---



**F. J. Ordonez Araujo (fordonezaraujo@gmail.com)**


---

  $$
  \frac{\partial C}{\partial t} = D \frac{\partial^2 C}{\partial x^2} + r C (1 - C)
  $$


    
  $$
  i \hbar \frac{\partial \psi}{\partial t} = \left( -\frac{\hbar^2}{2m} \frac{\partial^2}{\partial x^2} + \frac{1}{2} m \omega^2 x^2 + k x^4 \right) \psi
  $$





# Physics-Simulations-with-MATLAB

This project showcases various numerical methods implemented in MATLAB to simulate complex physical systems, including double pendulums, mass-spring systems, and partial differential equations. The aim is to provide a comprehensive collection of scripts and visualizations that demonstrate the application of different numerical techniques to solve and analyze these systems.

This project aims to explore and simulate various physical phenomena using numerical methods. The simulations include:

- **3D Projectile Motion** with different resistance models.
- **Double Pendulum Dynamics** using Euler, Runge-Kutta, and Verlet integration methods.
- **Mass-Spring System** simulations with different numerical integration techniques.
- **Non-linear Pendulum** and its behavior under various conditions.
- **Diffusion Equations** with logistic terms and convective effects.
- **Time-Dependent Schrödinger Equation** for quantum mechanics simulations.
- **Wilberforce Pendulum**
- **Burgers Equation**

## Scripts

### 1. Projectile Motion

- **3D Parabolic Shot.m**: Simulates projectile motion in 3D with parabolic trajectory.
- **projectile_quadratic_resistance_EulerF.m**: Projectile motion with quadratic resistance using the Forward Euler method.
- **projectile_quadratic_resistance_EulerM.m**: Projectile motion with quadratic resistance using the Modified Euler method.
- **projectile_quadratic_resistance_Verlet.m**: Projectile motion with quadratic resistance using the Verlet method.

### 2. Double Pendulum

- **double_pendulum_Euler.m**: Double pendulum simulation using Euler's method.
- **double_pendulum_ode45.m**: Double pendulum simulation using MATLAB's ode45 solver.
- **double_pendulum_rk4.m**: Double pendulum simulation using the Runge-Kutta 4th order method.
- **double_pendulum_verlet.m**: Double pendulum simulation using the Verlet integration method.

### 3. Mass-Spring System

- **Mass-spring system _forward_euler_method.m**: Simulates the mass-spring system using the Forward Euler method.
- **Mass-spring system _modified_euler_method.m**: Simulates the mass-spring system using the Modified Euler method.
- **Mass-spring system_Verlet.m**: Simulates the mass-spring system using the Verlet method.

### 4. Non-Linear Pendulum

- **Non-Linear-Pendulum.m**: Simulates the dynamics of a non-linear pendulum.

### 5. Diffusion and Burgers_equation Equations

- **One-dimensional-diffusion-equation-logistic-term.m**: Simulates the one-dimensional diffusion equation with logistic term.

  The equation solved is:

 $$
  \frac{\partial C}{\partial t} = D \frac{\partial^2 C}{\partial x^2} + r C (1 - C)
  $$


- **One-dimensional-diffusion-equation.m**: Simulates the one-dimensional diffusion equation.
- **Discretization_Burgers_equation.m**

### 6. Time-Dependent Schrödinger Equation

- **time-dependent Schrödinger.m**: Simulates the time-dependent Schrödinger equation.

  The equation solved is:
  
   $$
  i \hbar \frac{\partial \psi}{\partial t} = \left( -\frac{\hbar^2}{2m} \frac{\partial^2}{\partial x^2} + \frac{1}{2} m \omega^2 x^2 + k x^4 \right) \psi
  $$

### 7. Wilberforce Pendulum

- **wilberforce_pendulum_ODE45.m**: Simulates the Wilberforce pendulum using ode45.
- **wilberforce_pendulum_RK4.m**: Simulates the Wilberforce pendulum using Runge-Kutta 4th order method.

## Results

The `results` directory contains images of the simulation outputs.

To run the simulations, simply download the repository and open the `.m` files in MATLAB. Each script has comments to guide you through the execution process.

### These learnings not only enhanced my understanding of numerical methods/ programming but also demonstrated their practical application in solving complex physical problems.

Feel free to explore the projects and their solutions in the respective directories.
👾 Happy coding! 🥷
---

**F. J. Ordonez Araujo (fordonezaraujo@gmail.com)**

Thanks For Watching This Repository!

**KEEP AWESOME & STAY COOL!** 😎

Feel Free To Fork And Report If You Find Any Issue :)

