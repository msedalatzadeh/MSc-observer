# Boundary Controller and Estimator Design for Micro Beam Models

Based on the strain gradient elasticity theory by Lam et al., a new flexible micro beam model can be derived by making Euler-Bernoulli beam assumptions and by using Hamilton principle. Accordingly, the governing PDE of motion and corresponding boundary conditions (BSc) for a micro cantilever beam with uniform cross section $A$ and length $L$ become

$${K_1}\frac{{{\partial ^4}w}}{{\partial {x^4}}} - {K_2}\frac{{{\partial ^6}w}}{{\partial {x^6}}} + \rho A\frac{{{\partial ^2}w}}{{\partial {t^2}}} = f(x,t),$$

$$\left\{ \begin{array}{l}
w\left( {0,t} \right) = \frac{{\partial w}}{{\partial x}}(0,t) = \frac{{{\partial ^2}w}}{{\partial {x^2}}}(0,t) = 0,\\
{K_2}\frac{{{\partial ^5}w}}{{\partial {x^5}}}(L,t) - {K_1}\frac{{{\partial ^3}w}}{{\partial {x^3}}}(L,t) = F,\,\,\,\,\,\,\,\,\,\,\,\\
{K_1}\frac{{{\partial ^2}w}}{{\partial {x^2}}}(L,t) - {K_2}\frac{{{\partial ^4}w}}{{\partial {x^4}}}(L,t) = {M^c},\,\,\,\,\,\,\\
{K_2}\frac{{{\partial ^3}w}}{{\partial {x^3}}}(L,t) = {M^{nc}},\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,
\end{array} \right.$$


