# Boundary Controller and Estimator Design for Micro Beam Models

Based on the strain gradient elasticity theory by Lam et al., a new flexible micro beam model can be derived by making Euler-Bernoulli beam assumptions and by using Hamilton principle. Accordingly, the governing PDE of motion and corresponding boundary conditions (BSc) for a micro cantilever beam with uniform cross section $A$ and length $L$ become

$${K_1}\frac{{{\partial ^4}w}}{{\partial {x^4}}} - {K_2}\frac{{{\partial ^6}w}}{{\partial {x^6}}} + \rho A\frac{{{\partial ^2}w}}{{\partial {t^2}}} = f(x,t),$$

$$\left\{ \begin{array}{l}
w\left( {0,t} \right) = \frac{{\partial w}}{{\partial x}}(0,t) = \frac{{{\partial ^2}w}}{{\partial {x^2}}}(0,t) = 0,\\
{K_2}\frac{{{\partial ^5}w}}{{\partial {x^5}}}(L,t) - {K_1}\frac{{{\partial ^3}w}}{{\partial {x^3}}}(L,t) = F,\,\,\,\,\,\,\,\,\,\,\,\\
{K_1}\frac{{{\partial ^2}w}}{{\partial {x^2}}}(L,t) - {K_2}\frac{{{\partial ^4}w}}{{\partial {x^4}}}(L,t) = {M^c},\,\,\,\,\,\,\\
{K_2}\frac{{{\partial ^3}w}}{{\partial {x^3}}}(L,t) = {M^{nc}},\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,
\end{array} \right.$$



where $x$ and $t$ denote the independent spatial and time variables, respectively; $\rho$ represents the beam density; $w$ indicates the lateral deflection; $f(x,t)$ denotes distributed external transverse force; $F$, $M^c$ and $M^{nc}$ are control inputs and refer to boundary force, moment and non-classical moment exerted at the tip of beam, respectively.  In addition,

\begin{array}{l}
{K_1} = EI + \mu A\left( {2l_0^2 + \frac{8}{{15}}l_1^2 + l_2^2} \right),\\
{K_2} = \mu I\left( {2l_0^2 + \frac{4}{5}l_1^2} \right),
\end{array}


where $I$ is the area moment of inertia of the beam cross-section; $\mu$ and $E$ are the shear and Young’s modulus, respectively; $\ell_0$,  $\ell_1$, and $\ell_2$ are additional material constants that appear in the constitutive relations between higher order stress tensors and strain tensors in strain gradient elasticity theory. By setting $\ell_0$, $\ell_1$, and $\ell_2$ to zero, the classical Euler-Bernoulli beam model can be obtained straightforwardly. 



### External Distributed Forces
A schematic of the cantilever beam used in M/NEMS devices is shown in the Fig. 1. The cantilever has length $L$, uniform cross section $A$, and width $b$; it is separated by a gap with length $g$ from the underneath substrate. The substrate exposes the beam to nonlinear distributed forces arising from electrical potential difference and intermolecular interactions between the beam and the underneath substrate.
 
$$f(x,t) = f(w) = \frac{{{\varepsilon _0}b{V^2}}}{{2{{(g - w)}^2}}}(1 + 0.65\frac{{g - w}}{b}) + \frac{{{\pi ^2}\hbar cb}}{{240{{(g - w)}^4}}} + \frac{{Ab}}{{6\pi {{(g - w)}^3}}},$$

#### Fig. 1. Schematic of a cantilever beam based M/NEMS device: (a) Cantilever beam, (b) Dielectric spacer, and (c) Substrate.

The intermolecular forces that play a crucial role in micron and submicron scale are the van der Waals and the Casimir force, which have different range of application. The Casimir force is effective in the micro-scale ranges whereas the van der Waals force is effective in nano-scale ranges. To investigate a general case, we omit consideration of the transition regime and formulate the distributed external transverse forces more generally as follows:
  
$$\alpha  = \frac{{{\pi ^2}\hbar cb{L^4}}}{{240{g^5}{K_1}}}\,,\,\,\,\mu  = \frac{{Ab{L^4}}}{{6\pi {g^4}{K_1}}},\,\,\,\beta  = \frac{{{\varepsilon _0}b{V^2}{L^4}}}{{2{g^3}{K_1}}}\,,\,\,\,\gamma  = 0.65\frac{g}{b}\,,\,\,\,Z(\tilde x,\tilde t) = 1 - \frac{{w(\tilde x,\tilde t)}}{g},$$