# Boundary Controller and Estimator Design for Micro Beam Models

Based on the strain gradient elasticity theory by Lam et al., a new flexible micro beam model can be derived by making Euler-Bernoulli beam assumptions and by using Hamilton principle. Accordingly, the governing PDE of motion and corresponding boundary conditions (BSc) for a micro cantilever beam with uniform cross section <img src="/tex/53d147e7f3fe6e47ee05b88b166bd3f6.svg?invert_in_darkmode&sanitize=true" align=middle width=12.32879834999999pt height=22.465723500000017pt/> and length <img src="/tex/ddcb483302ed36a59286424aa5e0be17.svg?invert_in_darkmode&sanitize=true" align=middle width=11.18724254999999pt height=22.465723500000017pt/> become

<p align="center">
<img src="equations/Eqn1.gif" width="300" />
</p>
<p align="center">
<img src="equations/Eqn2.gif" width="300" />
</p>


where <img src="/tex/332cc365a4987aacce0ead01b8bdcc0b.svg?invert_in_darkmode&sanitize=true" align=middle width=9.39498779999999pt height=14.15524440000002pt/> and <img src="/tex/4f4f4e395762a3af4575de74c019ebb5.svg?invert_in_darkmode&sanitize=true" align=middle width=5.936097749999991pt height=20.221802699999984pt/> denote the independent spatial and time variables, respectively; <img src="/tex/6dec54c48a0438a5fcde6053bdb9d712.svg?invert_in_darkmode&sanitize=true" align=middle width=8.49888434999999pt height=14.15524440000002pt/> represents the beam density; <img src="/tex/31fae8b8b78ebe01cbfbe2fe53832624.svg?invert_in_darkmode&sanitize=true" align=middle width=12.210846449999991pt height=14.15524440000002pt/> indicates the lateral deflection; <img src="/tex/c9c2db7f99ad17c2472a4affcb1e265b.svg?invert_in_darkmode&sanitize=true" align=middle width=45.239815499999985pt height=24.65753399999998pt/> denotes distributed external transverse force; <img src="/tex/b8bc815b5e9d5177af01fd4d3d3c2f10.svg?invert_in_darkmode&sanitize=true" align=middle width=12.85392569999999pt height=22.465723500000017pt/>, <img src="/tex/589d535d5d49f9883567e08b36a036ce.svg?invert_in_darkmode&sanitize=true" align=middle width=23.61436769999999pt height=22.465723500000017pt/> and <img src="/tex/b2d45a3069041db007d04b5e55728ec8.svg?invert_in_darkmode&sanitize=true" align=middle width=31.74039164999999pt height=22.465723500000017pt/> are control inputs and refer to boundary force, moment and non-classical moment exerted at the tip of beam, respectively.  In addition,

<p align="center">
<img src="equations/Eqn3.gif" width="200" />
</p>

where <img src="/tex/21fd4e8eecd6bdf1a4d3d6bd1fb8d733.svg?invert_in_darkmode&sanitize=true" align=middle width=8.515988249999989pt height=22.465723500000017pt/> is the area moment of inertia of the beam cross-section; <img src="/tex/07617f9d8fe48b4a7b3f523d6730eef0.svg?invert_in_darkmode&sanitize=true" align=middle width=9.90492359999999pt height=14.15524440000002pt/> and <img src="/tex/84df98c65d88c6adf15d4645ffa25e47.svg?invert_in_darkmode&sanitize=true" align=middle width=13.08219659999999pt height=22.465723500000017pt/> are the shear and Young’s modulus, respectively; <img src="/tex/eba109b17bc735d58ea1086bd55b86e9.svg?invert_in_darkmode&sanitize=true" align=middle width=13.40191379999999pt height=22.831056599999986pt/>,  <img src="/tex/839a0dc412c4f8670dd1064e0d6d412f.svg?invert_in_darkmode&sanitize=true" align=middle width=13.40191379999999pt height=22.831056599999986pt/>, and <img src="/tex/336fefe2418749fabf50594e52f7b776.svg?invert_in_darkmode&sanitize=true" align=middle width=13.40191379999999pt height=22.831056599999986pt/> are additional material constants that appear in the constitutive relations between higher order stress tensors and strain tensors in strain gradient elasticity theory. By setting <img src="/tex/eba109b17bc735d58ea1086bd55b86e9.svg?invert_in_darkmode&sanitize=true" align=middle width=13.40191379999999pt height=22.831056599999986pt/>, <img src="/tex/839a0dc412c4f8670dd1064e0d6d412f.svg?invert_in_darkmode&sanitize=true" align=middle width=13.40191379999999pt height=22.831056599999986pt/>, and <img src="/tex/336fefe2418749fabf50594e52f7b776.svg?invert_in_darkmode&sanitize=true" align=middle width=13.40191379999999pt height=22.831056599999986pt/> to zero, the classical Euler-Bernoulli beam model can be obtained straightforwardly. 

### External Distributed Forces
A schematic of the cantilever beam used in M/NEMS devices is shown in the Fig. 1. The cantilever has length <img src="/tex/ddcb483302ed36a59286424aa5e0be17.svg?invert_in_darkmode&sanitize=true" align=middle width=11.18724254999999pt height=22.465723500000017pt/>, uniform cross section <img src="/tex/53d147e7f3fe6e47ee05b88b166bd3f6.svg?invert_in_darkmode&sanitize=true" align=middle width=12.32879834999999pt height=22.465723500000017pt/>, and width <img src="/tex/4bdc8d9bcfb35e1c9bfb51fc69687dfc.svg?invert_in_darkmode&sanitize=true" align=middle width=7.054796099999991pt height=22.831056599999986pt/>; it is separated by a gap with length <img src="/tex/3cf4fbd05970446973fc3d9fa3fe3c41.svg?invert_in_darkmode&sanitize=true" align=middle width=8.430376349999989pt height=14.15524440000002pt/> from the underneath substrate. The substrate exposes the beam to nonlinear distributed forces arising from electrical potential difference and intermolecular interactions between the beam and the underneath substrate.
 
<p align="center">
<img src="figs/beam.jpg" width="400" />
</p>

#### Fig. 1. Schematic of a cantilever beam based M/NEMS device: (a) Cantilever beam, (b) Dielectric spacer, and (c) Substrate.

The intermolecular forces that play a crucial role in micron and submicron scale are the van der Waals and the Casimir force, which have different range of application. The Casimir force is effective in the micro-scale ranges whereas the van der Waals force is effective in nano-scale ranges. To investigate a general case, we omit consideration of the transition regime and formulate the distributed external transverse forces more generally as follows:
  
<p align="center">
<img src="equations/Eqn4.gif" width="500" />
</p>

in which the first right-hand side term gives the value of the electrostatic force with first order fringing field correction; the next one gives the value of the Casimir force; the last one is the usual expression for the van der Waals force. Furthermore, <img src="/tex/0327922857a3c80945224eeda3da15df.svg?invert_in_darkmode&sanitize=true" align=middle width=147.3744525pt height=26.76175259999998pt/> is Plank constant divided by <img src="/tex/5a7b63fcb316fdefe42e319d18ab939a.svg?invert_in_darkmode&sanitize=true" align=middle width=18.179315549999988pt height=21.18721440000001pt/>; <img src="/tex/7fb5615db5df7077d50164f2324feb86.svg?invert_in_darkmode&sanitize=true" align=middle width=148.95556499999998pt height=26.76175259999998pt/> is speed of light; <img src="/tex/732c7964ffecaa48684a1e457b308a5e.svg?invert_in_darkmode&sanitize=true" align=middle width=197.72883074999996pt height=26.76175259999998pt/> is the permittivity of vacuum;  <img src="/tex/53d147e7f3fe6e47ee05b88b166bd3f6.svg?invert_in_darkmode&sanitize=true" align=middle width=12.32879834999999pt height=22.465723500000017pt/> is the Hamaker constant with values in the range of <img src="/tex/5220c564d7790bf64afba19b17a21c46.svg?invert_in_darkmode&sanitize=true" align=middle width=117.08914634999998pt height=26.76175259999998pt/> and <img src="/tex/a9a3a4a202d80326bda413b5562d5cd1.svg?invert_in_darkmode&sanitize=true" align=middle width=13.242037049999992pt height=22.465723500000017pt/> denotes the electrical potential difference between the beam and the underneath plate. Utilizing the strain gradient Euler-Bernoulli beam model and defining the following dimensionless variables:

<p align="center">
<img src="equations/Eqn5.gif" width="400" />
</p>

the PDE and corresponding BCs governing the micro- or nano- cantilever beam used in M/NEMS devices are
 
<p align="center">
<img src="equations/Eqn6.gif" width="300" />
</p>


##	Simulation Results
In this section, the effectiveness of the proposed controller in suppressing the nonlinear forced vibrations and dynamic pull-in instability of the system is demonstrated. In this regard, the nonlinear dimensionless PDE and corresponding BCs. in (2.9) under the boundary feedback control law (3.9) are numerically solved using Kantorovich method and iterative Newton-Raphson algorithm. Nonlinear terms in the governing PDE arise from external distributed forces, namely Casimir, van der Waals forces, and electrostatic force with first order fringing field correction; coefficients <img src="/tex/c745b9b57c145ec5577b82542b2df546.svg?invert_in_darkmode&sanitize=true" align=middle width=10.57650494999999pt height=14.15524440000002pt/>, <img src="/tex/07617f9d8fe48b4a7b3f523d6730eef0.svg?invert_in_darkmode&sanitize=true" align=middle width=9.90492359999999pt height=14.15524440000002pt/>, <img src="/tex/8217ed3c32a785f0b5aad4055f432ad8.svg?invert_in_darkmode&sanitize=true" align=middle width=10.16555099999999pt height=22.831056599999986pt/> and <img src="/tex/11c596de17c342edeed29f489aa4b274.svg?invert_in_darkmode&sanitize=true" align=middle width=9.423880949999988pt height=14.15524440000002pt/> are associated with these forces, respectively.

The geometrical and mechanical properties of the strain gradient micro-beam considered for computer simulations are specified in Table 1. The micro-beam is considered to be made of epoxy; the mechanical properties of the epoxy micro-beams are measured by Lam et al.

#### Table 1. The geometrical and mechanical properties of the epoxy micro-beam.

|Symbol	|Quantity	|Value|
|:------:|:---------:|:------:|
|<img src="/tex/84df98c65d88c6adf15d4645ffa25e47.svg?invert_in_darkmode&sanitize=true" align=middle width=13.08219659999999pt height=22.465723500000017pt/>	|Modulus of Elasticity|	1.44 Gpa|
|<img src="/tex/b49211c7e49541e500c32b4d56d354dc.svg?invert_in_darkmode&sanitize=true" align=middle width=9.16670204999999pt height=14.15524440000002pt/>	|Poisson's Ratio|	0.38|
|<img src="/tex/07617f9d8fe48b4a7b3f523d6730eef0.svg?invert_in_darkmode&sanitize=true" align=middle width=9.90492359999999pt height=14.15524440000002pt/>|	Density	|1220 Kg/m3|
|<img src="/tex/54345fe6b575e877ed356c4e75d0b146.svg?invert_in_darkmode&sanitize=true" align=middle width=85.68482999999998pt height=22.831056599999986pt/>|	Material Length Scale|	17.6 <img src="/tex/4ace3ffb00b20603002aad36e8d6c776.svg?invert_in_darkmode&sanitize=true" align=middle width=14.433101099999991pt height=14.15524440000002pt/>|
|<img src="/tex/4bdc8d9bcfb35e1c9bfb51fc69687dfc.svg?invert_in_darkmode&sanitize=true" align=middle width=7.054796099999991pt height=22.831056599999986pt/>	|Width	|20 <img src="/tex/4ace3ffb00b20603002aad36e8d6c776.svg?invert_in_darkmode&sanitize=true" align=middle width=14.433101099999991pt height=14.15524440000002pt/>|
|<img src="/tex/4f4f4e395762a3af4575de74c019ebb5.svg?invert_in_darkmode&sanitize=true" align=middle width=5.936097749999991pt height=20.221802699999984pt/>	|Thickness|	2 <img src="/tex/4ace3ffb00b20603002aad36e8d6c776.svg?invert_in_darkmode&sanitize=true" align=middle width=14.433101099999991pt height=14.15524440000002pt/>|
|<img src="/tex/ddcb483302ed36a59286424aa5e0be17.svg?invert_in_darkmode&sanitize=true" align=middle width=11.18724254999999pt height=22.465723500000017pt/>	|Length	|400 <img src="/tex/4ace3ffb00b20603002aad36e8d6c776.svg?invert_in_darkmode&sanitize=true" align=middle width=14.433101099999991pt height=14.15524440000002pt/>|
|<img src="/tex/3cf4fbd05970446973fc3d9fa3fe3c41.svg?invert_in_darkmode&sanitize=true" align=middle width=8.430376349999989pt height=14.15524440000002pt/>	|Gap Length|	4 <img src="/tex/4ace3ffb00b20603002aad36e8d6c776.svg?invert_in_darkmode&sanitize=true" align=middle width=14.433101099999991pt height=14.15524440000002pt/>|

According to Table 1, the coefficients corresponding to the sixth order derivative of the beam deflection, fringing fields correction term, Casimir and van der Waals forces are <img src="/tex/32f777beffa6024e6c455d0d7b827196.svg?invert_in_darkmode&sanitize=true" align=middle width=76.3727481pt height=26.76175259999998pt/>, <img src="/tex/65ce996ffbe1d3707d1c94bc83f8c8e7.svg?invert_in_darkmode&sanitize=true" align=middle width=60.565343849999984pt height=21.18721440000001pt/>, <img src="/tex/45f1bb77157d905945e609153399dee5.svg?invert_in_darkmode&sanitize=true" align=middle width=115.07415809999999pt height=26.76175259999998pt/>, and <img src="/tex/84d32d241ea1c664759df98241b43688.svg?invert_in_darkmode&sanitize=true" align=middle width=114.40258499999997pt height=26.76175259999998pt/>, respectively. In addition, for an electric potential difference <img src="/tex/f48a33e8ae21ab46320599d748a2045f.svg?invert_in_darkmode&sanitize=true" align=middle width=79.28841524999999pt height=22.831056599999986pt/>, the electrostatic force coefficient is <img src="/tex/5477af80189a7b0ec99d895eb7701bd5.svg?invert_in_darkmode&sanitize=true" align=middle width=61.307015549999996pt height=22.831056599999986pt/>. In this paper, all of these coefficients are also changed within specific ranges and then the static and dynamic behavior of M/NEMS devices in the absence and presence of the controller are observed. To this end, the spatial domain is discretized; the micro-beam length is divided into 10 beam elements with equal lengths. In addition, in each time step, 20 iterations are considered in the Newton-Raphson iteration method for converging to an exact solution. It is well-known that when the amount of nonlinear force coefficients become greater than specified limits, the cantilever beam becomes unstable and impulsively collapses or pulls-in onto the ground plane. Thus, in order to investigate the nonlinear vibration isolation of the closed-loop system, the threshold value of the nonlinear force coefficients should be calculated at the outset. For this purpose, the static solution   is found by solving Eq. (3.5) numerically for various nonlinear force coefficients. The result of the calculations is plotted in Fig. 2 in which the vertical axis indicates the equilibrium distance at the tip of beam (i.e <img src="/tex/9856a64491427ffab8028e21ce608bc6.svg?invert_in_darkmode&sanitize=true" align=middle width=77.05065554999999pt height=24.65753399999998pt/>) and the sudden drop shows the pull-in instability. In this figure, one of the force coefficients is changed while the rest are set to zero, except for the pair of  <img src="/tex/8217ed3c32a785f0b5aad4055f432ad8.svg?invert_in_darkmode&sanitize=true" align=middle width=10.16555099999999pt height=22.831056599999986pt/> and <img src="/tex/11c596de17c342edeed29f489aa4b274.svg?invert_in_darkmode&sanitize=true" align=middle width=9.423880949999988pt height=14.15524440000002pt/>.


<p align="center">
<img src="figs/fig2.jpg" width="600" /> 
</p>

#### Fig. 2. Equilibrium distance between the free end of the beam and the ground <img src="/tex/f3a3bfc1331844776f84cf2725724b0a.svg?invert_in_darkmode&sanitize=true" align=middle width=77.05065554999999pt height=24.65753399999998pt/> vs. various coefficients of the nonlinear forces.

Next, the effect of the proposed controller is studied on the dynamic pull-in threshold of the nonlinear system. In order to simulate the dynamic pull-in instability, the beam is considered to be at rest and an electric potential difference is suddenly applied to the device. The open-loop and closed-loop system response are then simulated for various values of electrostatic force coefficient <img src="/tex/8217ed3c32a785f0b5aad4055f432ad8.svg?invert_in_darkmode&sanitize=true" align=middle width=10.16555099999999pt height=22.831056599999986pt/> while the other force coefficients are assumed constant.

As a case in point, considering the practical values for <img src="/tex/e5c0c55191274dbb2a4499ab5c5b8175.svg?invert_in_darkmode&sanitize=true" align=middle width=8.40469739999999pt height=22.831056599999986pt/>, <img src="/tex/11c596de17c342edeed29f489aa4b274.svg?invert_in_darkmode&sanitize=true" align=middle width=9.423880949999988pt height=14.15524440000002pt/>, <img src="/tex/c745b9b57c145ec5577b82542b2df546.svg?invert_in_darkmode&sanitize=true" align=middle width=10.57650494999999pt height=14.15524440000002pt/>, and <img src="/tex/07617f9d8fe48b4a7b3f523d6730eef0.svg?invert_in_darkmode&sanitize=true" align=middle width=9.90492359999999pt height=14.15524440000002pt/> based on Table 1, the static solution <img src="/tex/320b3450fd8b780975b68c70115439b3.svg?invert_in_darkmode&sanitize=true" align=middle width=31.590693749999986pt height=24.65753399999998pt/> is found for various coefficient <img src="/tex/8217ed3c32a785f0b5aad4055f432ad8.svg?invert_in_darkmode&sanitize=true" align=middle width=10.16555099999999pt height=22.831056599999986pt/>. The results are shown in the Fig. 3 in which the maximum value for electrostatic force coefficient is at <img src="/tex/b7a636ed3f8a01f5697975ad6a73ba8a.svg?invert_in_darkmode&sanitize=true" align=middle width=61.307015549999996pt height=22.831056599999986pt/>. In the dynamic system simulations, we should not cross this threshold.


<p align="center">
<img src="figs/fig3.jpg" width="600" /> 
</p>

#### Fig. 3. Equilibrium distance between the free end of the beam and the ground <img src="/tex/f3a3bfc1331844776f84cf2725724b0a.svg?invert_in_darkmode&sanitize=true" align=middle width=77.05065554999999pt height=24.65753399999998pt/> vs. <img src="/tex/8217ed3c32a785f0b5aad4055f432ad8.svg?invert_in_darkmode&sanitize=true" align=middle width=10.16555099999999pt height=22.831056599999986pt/>.

Running the dynamic simulations, Fig. 4(a) and 4(b) indicate dimensionless dynamic distance <img src="/tex/54d7657e71ba76441476037b8f6b67c5.svg?invert_in_darkmode&sanitize=true" align=middle width=46.643873099999986pt height=28.023570300000017pt/> for <img src="/tex/8217ed3c32a785f0b5aad4055f432ad8.svg?invert_in_darkmode&sanitize=true" align=middle width=10.16555099999999pt height=22.831056599999986pt/> and <img src="/tex/8897c89dd043239cf31cea9a80e3ea90.svg?invert_in_darkmode&sanitize=true" align=middle width=61.307015549999996pt height=22.831056599999986pt/> in the simulation of open-loop system, respectively.

<p align="center">
<img src="figs/fig4.jpg" width="600" /> 
</p>
<p align="center">
<img src="figs/fig5.jpg" width="600" /> 
</p>

Fig. 4. Dimensionless dynamic distance   vs. time plotted for open-loop system: a)   and b)  .
