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
- **Burgers Equation and  System of Coupled diffusion-reaction equations.**
 

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
   \ddot{\theta_{2}}= \frac{2\sin{(\theta_{1}-\theta_{2}})(\dot{\theta_{1}}^2l_{1}(m_{1}+m_{2})+(m_{1}+m_{2})\cos{\theta_{1}}}{l_{2}(2m_{1}+m_{2}-m_{2}\cos{(2\theta_{1}-2\theta_{1})}} +\frac{2\sin{(\theta_{1}- 
   \theta_{2}})(\dot{\theta_{2}}^2l_{2}m_{2}\cos{(\theta_{1}-\theta_{2})})}{l_{2}(2m_{1}+m_{2}-m_{2}\cos{(2\theta_{1}-2\theta_{1})}} 
  $$

  $$  
  \begin{align}
    m \frac{d^2 x}{dt^2} = -b v_x \sqrt{v_x^2 + v_y^2} \\
    m \frac{d^2 y}{dt^2} = -mg - b v_y \sqrt{v_x^2 + v_y^2}
  \end{align}
 $$

$$
L= \frac{1}{2} \left[ m_{1} (\dot{x_{1}}+\dot{y_{1}})^{2}+m_{2} (\dot{x_{2}}+\dot{y_{2}})^{2} \right] -m_{1}gy_{1}-m_{2}gy_{2}
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
- **Burgers Equation and System of Coupled diffusion-reaction equations**

## Scripts

### 1. Projectile Motion

- **3D Parabolic Shot.m**: Simulates projectile motion in 3D with parabolic trajectory.
- **projectile_quadratic_resistance_EulerF.m**: Projectile motion with quadratic resistance using the Forward Euler method.
- **projectile_quadratic_resistance_EulerM.m**: Projectile motion with quadratic resistance using the Modified Euler method.
- **projectile_quadratic_resistance_Verlet.m**: Projectile motion with quadratic resistance using the Verlet method.

  The equations solved are:
  

$$  
  \begin{align}
    m \frac{d^2 x}{dt^2} &= -b v_x \sqrt{v_x^2 + v_y^2} \\
    m \frac{d^2 y}{dt^2} &= -mg - b v_y \sqrt{v_x^2 + v_y^2}
  \end{align}
   $$

### 2. Double Pendulum

- **double_pendulum_Euler.m**: Double pendulum simulation using Euler's method.
- **double_pendulum_ode45.m**: Double pendulum simulation using MATLAB's ode45 solver.
- **double_pendulum_rk4.m**: Double pendulum simulation using the Runge-Kutta 4th order method.
- **double_pendulum_verlet.m**: Double pendulum simulation using the Verlet integration method.

The equations solved are:

$$
\begin{align}
& \text{Lagrangiano of the system}\\
L &= \frac{1}{2} \left[ m_{1} (\dot{x_{1}}+\dot{y_{1}})^{2}+m_{2} (\dot{x_{2}}+\dot{y_{2}})^{2} \right] -m_{1}gy_{1}-m_{2}gy_{2} \\
\ddot{\theta_{1}}=&-\frac{g(2m_{1}+m_{2})\sin{\theta_{1}}+m_{2}g\sin{(\theta_{1}-2\theta_{2})}}{l_{2}(2m_{1}+m_{2}-m_{2}\cos{(2\theta_{1}-2\theta_{1})}} -\frac{2\sin{(\theta_{1}-\theta_{2})}m_{2}(\dot{\theta_{1}}^2l_{2}+ \dot{\theta_{2}}^2l_{2} \cos{( \theta_{1}-\theta_{2})}}{l_{2}(2m_{1}+m_{2}-m_{2}\cos{(2\theta_{1}-2\theta_{1})}} 
\end{align}
$$

 $$
  \ddot{\theta_{2}}= \frac{2\sin{(\theta_{1}-\theta_{2}})(\dot{\theta_{1}}^2l_{1}(m_{1}+m_{2})+(m_{1}+m_{2})\cos{\theta_{1}}}{l_{2}(2m_{1}+m_{2}-m_{2}\cos{(2\theta_{1}-2\theta_{1})}} +\frac{2\sin{(\theta_{1}- 
  \theta_{2}})(\dot{\theta_{2}}^2l_{2}m_{2}\cos{(\theta_{1}-\theta_{2})})}{l_{2}(2m_{1}+m_{2}-m_{2}\cos{(2\theta_{1}-2\theta_{1})}} 
 $$

### 3. Mass-Spring System

- **Mass-spring system _forward_euler_method.m**: Simulates the mass-spring system using the Forward Euler method.
- **Mass-spring system _modified_euler_method.m**: Simulates the mass-spring system using the Modified Euler method.
- **Mass-spring system_Verlet.m**: Simulates the mass-spring system using the Verlet method.

The equations solved are:


$$
\begin{align}
& \text{Lagrangiano of the system}\\
L &= \frac{1}{2} m (\dot{x}_1^2 + \dot{x}_2^2 + \dot{x}_3^2) - \frac{1}{2} k x_1^2 - \frac{1}{2} k (x_2 - x_1)^2 - \frac{1}{2} k (x_3 - x_2)^2 - \frac{1}{2} k x_3^2 \\
m \ddot{x}_1 &= -kx_1 + k(x_2 - x_1) \\
m \ddot{x}_2 &= -k(x_2 - x_1) + k(x_3 - x_2) \\
m \ddot{x}_3 &= -kx_3 - k(x_3 - x_2)
\end{align}
$$


### 4. Non-Linear Pendulum

- **Non-Linear-Pendulum.m**: Simulates the dynamics of a non-linear pendulum.

$$
\frac{d^2 \theta}{d t^2} = -\frac{g}{l} \sin \theta
$$

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
  i \hbar \frac{\partial \psi}{\partial t} = \left( -\frac{\hbar^2}{2m} \frac{\partial^2}{\partial x^2} + \frac{1}{2} m \omega^2 x^2 + k x^4 \right) \psi (x,t)
  $$


### 7. Wilberforce Pendulum

- **wilberforce_pendulum_ODE45.m**: Simulates the Wilberforce pendulum using ode45.
- **wilberforce_pendulum_RK4.m**: Simulates the Wilberforce pendulum using Runge-Kutta 4th order method.
  
The equations solved are:

$$
\frac{d^2 x}{dt^2} + \frac{k_x}{m} x + \frac{\varepsilon}{2m} \theta = 0
$$

$$
\frac{d^2 \theta}{dt^2} + \frac{k_\theta}{I} \theta + \frac{\varepsilon}{2I} x = 0
$$


### 7. Burgers Equation and   System of Coupled diffusion-reaction equations

-  To Solve these 

Equation taken from Scientific Reports | (2020) 10:8040 | https://doi.org/10.1038/s41598-020-63982-w

The equations solved are:

Burgers Equation

$$
\frac{\partial C}{\partial t} = D \frac{\partial^2 C}{\partial x^2} - V \frac{\partial C}{\partial x} - K C
$$

The system of equations represents a coupled diffusion-reaction system with convection:

$$
i \frac{\partial \rho}{\partial t} = D_1 \frac{\partial^2 \rho}{\partial x^2} + b \frac{\partial \rho}{\partial x} + a \rho (1 - \theta)
$$

$$
i \frac{\partial \theta}{\partial t} = D_2 \frac{\partial^2 \theta}{\partial x^2} + b \frac{\partial \theta}{\partial x} + c \theta (1 - \rho)
$$


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

