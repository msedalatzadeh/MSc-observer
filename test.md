

\begin{array}{l}
\frac{{{\partial ^4}Z}}{{\partial {{\tilde x}^4}}} - \zeta \frac{{{\partial ^6}Z}}{{\partial {{\tilde x}^6}}} + \frac{{{\partial ^2}Z}}{{\partial {{\tilde t}^2}}} + \frac{\alpha }{{{Z^4}}} + \frac{\mu }{{{Z^3}}} + \frac{\beta }{{{Z^2}}} + \frac{{\gamma \beta }}{Z} = 0.\\
\left\{ \begin{array}{l}
Z\left( {0,\tilde t} \right) = 1,\,\,\frac{{\partial Z}}{{\partial \tilde x}}\left( {0,\tilde t} \right) = \frac{{{\partial ^2}Z}}{{\partial {{\tilde x}^2}}}\left( {0,\tilde t} \right) = 0,\\
g\frac{{{\partial ^3}Z}}{{\partial {{\tilde x}^3}}}\left( {1,\tilde t} \right) - \zeta g\frac{{{\partial ^5}Z}}{{\partial {{\tilde x}^5}}}\left( {1,\tilde t} \right) = \tilde F,\,\,\,\,\,\,\,\,\,\,\,\\
\zeta g\frac{{{\partial ^4}Z}}{{\partial {{\tilde x}^4}}}\left( {1,\tilde t} \right) - g\frac{{{\partial ^2}Z}}{{\partial {{\tilde x}^2}}}\left( {1,\tilde t} \right) = {{\tilde M}^c},\,\,\,\,\,\,\\
 - \zeta g\frac{{{\partial ^3}Z}}{{\partial {{\tilde x}^3}}}\left( {1,\tilde t} \right) = {{\tilde M}^{nc}}.\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,\,
\end{array} \right.


the PDE and corresponding BCs governing the micro- or nano- cantilever beam used in M/NEMS devices are
 
<p align="center">
<img src="equations/Eqn6.gif" width="300" />
</p>


##	Simulation Results
In this section, the effectiveness of the proposed controller in suppressing the nonlinear forced vibrations and dynamic pull-in instability of the system is demonstrated. In this regard, the nonlinear dimensionless PDE and corresponding BCs. in (2.9) under the boundary feedback control law (3.9) are numerically solved using Kantorovich method and iterative Newton-Raphson algorithm. Nonlinear terms in the governing PDE arise from external distributed forces, namely Casimir, van der Waals forces, and electrostatic force with first order fringing field correction; coefficients $\alpha$, $\mu$, $\beta$ and $\gamma$ are associated with these forces, respectively.

### Programming
Programmings are carried out in MATLAB.

The geometrical and mechanical properties of the strain gradient micro-beam considered for computer simulations are specified in Table 1. The micro-beam is considered to be made of epoxy; the mechanical properties of the epoxy micro-beams are measured by Lam et al.

#### Table 1. The geometrical and mechanical properties of the epoxy micro-beam.

|Symbol	|Quantity	|Value|
|:------:|:---------:|:------:|
|$E$	|Modulus of Elasticity|	1.44 Gpa|
|$\nu$	|Poisson's Ratio|	0.38|
|$\mu$|	Density	|1220 Kg/m3|
|$\ell_0= \ell_1=\ell_2$|	Material Length Scale|	17.6 $µm$|
|$b$	|Width	|20 $µm$|
|$t$	|Thickness|	2 $µm$|
|$L$	|Length	|400 $µm$|
|$g$	|Gap Length|	4 $µm$|

According to Table 1, the coefficients corresponding to the sixth order derivative of the beam deflection, fringing fields correction term, Casimir and van der Waals forces are $\zeta=1.65\time 10^{-6}$, $\gamma = 0.13$, $\alpha = 2.18\times 10^{-8}$, and $\mu = 1.86\times 10^{-6}$, respectively. In addition, for an electric potential difference $V=20volt$, the electrostatic force coefficient is $\beta=0.63$. In this paper, all of these coefficients are also changed within specific ranges and then the static and dynamic behavior of M/NEMS devices in the absence and presence of the controller are observed. To this end, the spatial domain is discretized; the micro-beam length is divided into 10 beam elements with equal lengths. In addition, in each time step, 20 iterations are considered in the Newton-Raphson iteration method for converging to an exact solution. It is well-known that when the amount of nonlinear force coefficients become greater than specified limits, the cantilever beam becomes unstable and impulsively collapses or pulls-in onto the ground plane. Thus, in order to investigate the nonlinear vibration isolation of the closed-loop system, the threshold value of the nonlinear force coefficients should be calculated at the outset. For this purpose, the static solution   is found by solving Eq. (3.5) numerically for various nonlinear force coefficients. The result of the calculations is plotted in Fig. 2 in which the vertical axis indicates the equilibrium distance at the tip of beam (i.e $Z_{eq}= u(1)$) and the sudden drop shows the pull-in instability. In this figure, one of the force coefficients is changed while the rest are set to zero, except for the pair of  $\beta$ and $\gamma$.


<p align="center">
<img src="figs/fig2.jpg" width="600" /> 
</p>

#### Fig. 2. Equilibrium distance between the free end of the beam and the ground $Z_{eq}=u(1)$ vs. various coefficients of the nonlinear forces.

Next, the effect of the proposed controller is studied on the dynamic pull-in threshold of the nonlinear system. In order to simulate the dynamic pull-in instability, the beam is considered to be at rest and an electric potential difference is suddenly applied to the device. The open-loop and closed-loop system response are then simulated for various values of electrostatic force coefficient $\beta$ while the other force coefficients are assumed constant.

As a case in point, considering the practical values for $\zeta$, $\gamma$, $\alpha$, and $\mu$ based on Table 1, the static solution $u(x)$ is found for various coefficient $\beta$. The results are shown in the Fig. 3 in which the maximum value for electrostatic force coefficient is at $\beta = 1.56$. In the dynamic system simulations, we should not cross this threshold.


<p align="center">
<img src="figs/fig3.jpg" width="600" /> 
</p>

#### Fig. 3. Equilibrium distance between the free end of the beam and the ground $Z_{eq}=u(1)$ vs. $\beta$.

Running the dynamic simulations, Fig. 4(a) and 4(b) indicate dimensionless dynamic distance $Z(1,\tilde{t})$ for $\beta$ and $\beta=1.32$ in the simulation of open-loop system, respectively.

<p align="center">
<img src="figs/fig4.jpg" width="600" /> (a)
</p>
<p align="center">
<img src="figs/fig5.jpg" width="600" /> (b)
</p>

#### Fig. 4. Dimensionless dynamic distance $Z(1,\tilde{t})$ vs. time plotted for open-loop system: a) $\beta=0.62$ and b) $\beta=1.32$.

As seen in these figures, the threshold of dynamic pull-in instability ($\beta=1.32$) is lower than that of static pull-in instability ($\beta=1.56$); it can be explained by the fact that undershoot in the dynamic response could destabilize the system. Simulations are repeated for the closed-loop system in which the boundary controller is present in the nonlinear system. Similarly, dimensionless dynamic distance of the closed-loop system is plotted for $\beta=1.32$ and $\beta=1.38$ in Fig. 5(a) and 5(b), respectively.

<p align="center">
<img src="figs/fig6.jpg" width="600" /> (a)
</p>
<p align="center">
<img src="figs/fig7.jpg" width="600" /> (b)
</p>

#### Fig. 5. Dimensionless dynamic distance $Z(1,\tilde{t})$ vs. time plotted for closed-loop system: a) $\beta=1.32$ and b) $\beta=1.38$.

As seen in these figures, the dynamic pull-in instability of open-loop and closed-loop systems occurs for $\beta\ge 1.32$ and $\beta\ge 1.38$, respectively. Thus, it can be concluded that the proposed boundary feedback control law can postpone the dynamic pull-in instability. In addition, the dynamic pull-in threshold can be raised further by increasing the control gain. For instance, as shown in Fig. 6(a) and 6(b), the absolute value of $k_1$ is increased tenfold which leads to stability of closed-loop system for $\beta=1.5$. This shows that an increase in the controller gain $k_1$ can certainly decrease the beam fluctuations and therefore raise the pull-in threshold.

<p align="center">
<img src="figs/fig8.jpg" width="600" /> (a)
</p>
<p align="center">
<img src="figs/fig9.jpg" width="600" /> (b)
</p>

#### Fig. 6. Dimensionless dynamic distance  $Z(1,\tilde{t})$ vs. time plotted for closed-loop system: a) $\beta=1.38$  and b) $\beta=1.5$.

The controller performance is also assessed for a large region of the parameters space. In the absence of the controller, the beam oscillation is simulated for various coefficients of $\beta$ and $\alpha$ in Fig. 7(a). In this figure, the vertical axis indicates the mean distance between free end of the beam and the ground after reaching a stable oscillation (i.e. $Z_m = \min (Z(1,\tilde{t}\ge t_\infty))/2 +  \max (Z(1,\tilde{t}\ge t_\infty))/2$). In the simulations, the beam oscillations become stable after a time about $\tilde{t}_\infty = 5$. The dashed line in Fig. 7(a) shows the dynamic pull-in instability limit; for the parameters pointed below the dashed line, the pull-in instability in the system response is inevitable. In the presence of the controller, the simulations are repeated in Fig. 7(b) in which the vertical axis represents the distance between free end of the beam and the ground when the beam comes to rest (i.e. $Z_\infty= Z(1,t_\infty)$). For the controller gain $k_1=-1$, the steady state is reached before $\tilde{t}_\infty=10$. As seen in this figure, the safe region for the force coefficients is extended and thus the stability is guaranteed for a large region of the parameters space.


<p align="center">
<img src="figs/fig10.jpg" width="600" /> (a)
</p>

#### Fig. 7(a). Mean distance $Z_m$ between the free end of the beam and the ground for stable oscillations in open-loop system vs. nonlinear force coefficients $\beta$ and $\alpha$. 


<p align="center">
<img src="figs/fig11.jpg" width="600" /> (b)
</p>

#### Fig. 7(b). Steady state distance $Z_\infty$ between the free end of the beam and the ground in closed-loop system vs. nonlinear force coefficients $\beta$ and $\alpha$.


The same procedure is followed for the nonlinear force coefficients $\mi$ and  $\gamma$ in Fig. 8(a), 8(b), 9(a), and Fig. 9(b). Similarly, the controller can suppress the beam vibrations and raise the pull-in threshold as well. In addition, when the dynamic pull-in instability in the open-loop system occurs, the mean distance $Z_m$ lies in the range of $[0.6-0.8]$. On the other hand, when the dynamic pull-in instability in the closed-loop system occurs, the steady state distance $Z_\infty$  lies in the range of $[0.5-0.7]$. This indicates that the controller can also extend the travel range of the M/NEMS devices beyond the well-known pull-in limits. In some tuning applications, a large stable travel range is extremely useful.

<p align="center">
<img src="figs/fig12.jpg" width="600" /> (a)
</p>

#### Fig. 8(a). Mean distance $Z_m$  between the free end of the beam and the ground for stable oscillations in open-loop system vs. nonlinear force coefficients $\beta$ and $\mu$. 

<p align="center">
<img src="figs/fig13.jpg" width="600" /> (b)
</p>

#### Fig. 8(b). Steady state distance $Z_\infty$ between the free end of the beam and the ground in closed-loop system vs. nonlinear force coefficients $\beta$ and $\mu$.


<p align="center">
<img src="figs/fig14.jpg" width="600" /> (a)
</p>

#### Fig. 9(a). Mean distance $Z_m$ between the free end of the beam and the ground for stable oscillations in open-loop system vs. nonlinear force coefficients $\beta$ and $\gamma$.


<p align="center">
<img src="figs/fig15.jpg" width="600" /> (b)
</p>

#### Fig. 9(b). Steady state distance $Z_\infty$ between the free end of the beam and the ground in closed-loop system vs. nonlinear force coefficients $\beta$ and $\gamma$.


In all of the simulations, Casimir and van der Waals forces have adverse effect on the performance of M/NEMS devices. They lower the pull-in threshold and narrow the travel range. On the other hand, the fringing filed effect extends the travel range, though decreases the pull-in voltage as well.
The effect of the new material length scales is also studied in Fig. 10(a) and Fig. 10(b). In these figures, the coefficient of the non-classical terms in the governing equation (i.e. the coefficient $\zeta$) is changed from $10^{-5}$ to $10^{-2}$. Simulations show that the more beam model deviates from the classical model the more pull-in threshold is raised. Moreover, similar to previous simulations, in the presence of controller, the travel range is wider and the pull-in voltage is higher.

<p align="center">
<img src="figs/fig16.jpg" width="600" /> (a)
</p>

#### Fig. 10(a). Mean distance  $Z_m$ between the free end of the beam and the ground for stable oscillations in open-loop system vs. nonlinear force coefficients $\beta$ and $\zeta$.

<p align="center">
<img src="figs/fig17.jpg" width="600" /> (b)
</p>

#### Fig. 10(b). Steady state distance $Z_\infty$ between the free end of the beam and the ground in closed-loop system vs. nonlinear force coefficients $\beta$ and $\zeta$.



## References
[1] \textbf{M. S. Edalatzadeh} and A. Alasty, “Boundary Exponential Stabilization of Non-classical Micro/Nano Beams Subjected to Nonlinear Distributed Forces,” Applied Mathematical Modelling, vol. 40, no. 3, pp. 2223–2241, 2016.

[2] \textbf{M. S. Edalatzadeh}, A. Alasty, and R. Vatankhah, “Admissibility and Exact Observability of Observation Operators for Micro-Beam Model: Time and Frequency Domain Approaches,” IEEE Transaction on Automatic Control, vol. 62, no. 12, pp. 6438–6444, 2017.

[3] \textbf{M. S. Edalatzadeh}, R. Vatankhah, and A. Alasty, “Suppression of Dynamic Pull-in Instability in Electrostatically Actuated Strain Gradient Beams,” in Second RSI/ISM International Conference on Robotics and Mechatronics (ICRoM), 2014, pp. 155–160.

[4] D. Lam, F. Yang, A. Chong, J. Wang, P. Tong, Experiments and theory in strain gradient elasticity, Journal of the Mechanics and Physics of Solids, 51 (2003) 1477-1508.

[5] R.F. Curtain, H. Zwart, An Introduction to Infinite-Dimensional Linear Systems Theory, Springer, 1995.

[6] I.M. Gelfand, I.M. Gelfand, S.V. Fomin, R.A. Silverman, Calculus of Variations, Dover Publications, 2000.

[7] J.N. Reddy, An Introduction to Nonlinear Finite Element Analysis, Oxford University Press, New York, 2004.

[8] L.V. Kantorovich, V.I. Krylov, Approximate Methods of Higher Analysis, P. Noordhoff, 1958.
