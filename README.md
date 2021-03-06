# Boundary Estimator and Controller Design for Micro Beams
A schematic of the cantilever beam used in M/NEMS devices is shown in the Fig. 1. The cantilever has length <img src="/tex/ddcb483302ed36a59286424aa5e0be17.svg?invert_in_darkmode&sanitize=true" align=middle width=11.18724254999999pt height=22.465723500000017pt/>, uniform cross section <img src="/tex/53d147e7f3fe6e47ee05b88b166bd3f6.svg?invert_in_darkmode&sanitize=true" align=middle width=12.32879834999999pt height=22.465723500000017pt/>, and width <img src="/tex/4bdc8d9bcfb35e1c9bfb51fc69687dfc.svg?invert_in_darkmode&sanitize=true" align=middle width=7.054796099999991pt height=22.831056599999986pt/>; it is separated by a gap with length <img src="/tex/3cf4fbd05970446973fc3d9fa3fe3c41.svg?invert_in_darkmode&sanitize=true" align=middle width=8.430376349999989pt height=14.15524440000002pt/> from the underneath substrate. The substrate exposes the beam to nonlinear distributed forces arising from electrical potential difference and intermolecular interactions between the beam and the underneath substrate.
 
<p align="center">
<img src="figs/beam.jpg" width="300" />
</p>


#### Fig. 1. Schematic of a cantilever beam based M/NEMS device: (a) Cantilever beam, (b) Dielectric spacer, and (c) Substrate.

Based on the strain gradient elasticity theory by Lam et al., a new flexible micro beam model can be derived by making Euler-Bernoulli beam assumptions and by using Hamilton principle. Accordingly, the governing PDE of motion and corresponding boundary conditions (BSc) for a micro cantilever beam with uniform cross section <img src="/tex/53d147e7f3fe6e47ee05b88b166bd3f6.svg?invert_in_darkmode&sanitize=true" align=middle width=12.32879834999999pt height=22.465723500000017pt/> and length <img src="/tex/ddcb483302ed36a59286424aa5e0be17.svg?invert_in_darkmode&sanitize=true" align=middle width=11.18724254999999pt height=22.465723500000017pt/> become

<p align="center"><img src="/tex/bb6346022ff9e9e659b931d570d586f1.svg?invert_in_darkmode&sanitize=true" align=middle width=274.91768865pt height=35.77743345pt/></p>

<p align="center"><img src="/tex/9b7e99ad70665eacdd43f246f8552706.svg?invert_in_darkmode&sanitize=true" align=middle width=268.45978829999996pt height=90.34160189999999pt/></p>



where <img src="/tex/332cc365a4987aacce0ead01b8bdcc0b.svg?invert_in_darkmode&sanitize=true" align=middle width=9.39498779999999pt height=14.15524440000002pt/> and <img src="/tex/4f4f4e395762a3af4575de74c019ebb5.svg?invert_in_darkmode&sanitize=true" align=middle width=5.936097749999991pt height=20.221802699999984pt/> denote the independent spatial and time variables, respectively; <img src="/tex/6dec54c48a0438a5fcde6053bdb9d712.svg?invert_in_darkmode&sanitize=true" align=middle width=8.49888434999999pt height=14.15524440000002pt/> represents the beam density; <img src="/tex/31fae8b8b78ebe01cbfbe2fe53832624.svg?invert_in_darkmode&sanitize=true" align=middle width=12.210846449999991pt height=14.15524440000002pt/> indicates the lateral deflection; <img src="/tex/c9c2db7f99ad17c2472a4affcb1e265b.svg?invert_in_darkmode&sanitize=true" align=middle width=45.239815499999985pt height=24.65753399999998pt/> denotes distributed external transverse force; <img src="/tex/b8bc815b5e9d5177af01fd4d3d3c2f10.svg?invert_in_darkmode&sanitize=true" align=middle width=12.85392569999999pt height=22.465723500000017pt/>, <img src="/tex/589d535d5d49f9883567e08b36a036ce.svg?invert_in_darkmode&sanitize=true" align=middle width=23.61436769999999pt height=22.465723500000017pt/> and <img src="/tex/b2d45a3069041db007d04b5e55728ec8.svg?invert_in_darkmode&sanitize=true" align=middle width=31.74039164999999pt height=22.465723500000017pt/> are control inputs and refer to boundary force, moment and non-classical moment exerted at the tip of beam, respectively.  In addition,

<p align="center"><img src="/tex/ba06e65f2374efb31e568a0a40237150.svg?invert_in_darkmode&sanitize=true" align=middle width=235.5507033pt height=39.6167739pt/></p>


where <img src="/tex/21fd4e8eecd6bdf1a4d3d6bd1fb8d733.svg?invert_in_darkmode&sanitize=true" align=middle width=8.515988249999989pt height=22.465723500000017pt/> is the area moment of inertia of the beam cross-section; <img src="/tex/07617f9d8fe48b4a7b3f523d6730eef0.svg?invert_in_darkmode&sanitize=true" align=middle width=9.90492359999999pt height=14.15524440000002pt/> and <img src="/tex/84df98c65d88c6adf15d4645ffa25e47.svg?invert_in_darkmode&sanitize=true" align=middle width=13.08219659999999pt height=22.465723500000017pt/> are the shear and Young’s modulus, respectively; <img src="/tex/eba109b17bc735d58ea1086bd55b86e9.svg?invert_in_darkmode&sanitize=true" align=middle width=13.40191379999999pt height=22.831056599999986pt/>,  <img src="/tex/839a0dc412c4f8670dd1064e0d6d412f.svg?invert_in_darkmode&sanitize=true" align=middle width=13.40191379999999pt height=22.831056599999986pt/>, and <img src="/tex/336fefe2418749fabf50594e52f7b776.svg?invert_in_darkmode&sanitize=true" align=middle width=13.40191379999999pt height=22.831056599999986pt/> are additional material constants that appear in the constitutive relations between higher order stress tensors and strain tensors in strain gradient elasticity theory. By setting <img src="/tex/eba109b17bc735d58ea1086bd55b86e9.svg?invert_in_darkmode&sanitize=true" align=middle width=13.40191379999999pt height=22.831056599999986pt/>, <img src="/tex/839a0dc412c4f8670dd1064e0d6d412f.svg?invert_in_darkmode&sanitize=true" align=middle width=13.40191379999999pt height=22.831056599999986pt/>, and <img src="/tex/336fefe2418749fabf50594e52f7b776.svg?invert_in_darkmode&sanitize=true" align=middle width=13.40191379999999pt height=22.831056599999986pt/> to zero, the classical Euler-Bernoulli beam model can be obtained straightforwardly. 



### External Distributed Forces
The intermolecular forces that play a crucial role in micron and submicron scale are the van der Waals and the Casimir force, which have different range of application. The Casimir force is effective in the micro-scale ranges whereas the van der Waals force is effective in nano-scale ranges. To investigate a general case, we omit consideration of the transition regime and formulate the distributed external transverse forces more generally as follows:
  
<p align="center"><img src="/tex/1b9f16f6a97f31f84fd5af15cd68e2e0.svg?invert_in_darkmode&sanitize=true" align=middle width=529.2030579pt height=42.483181949999995pt/></p>


in which the first right-hand side term gives the value of the electrostatic force with first order fringing field correction; the next one gives the value of the Casimir force; the last one is the usual expression for the van der Waals force. Furthermore, <img src="/tex/0327922857a3c80945224eeda3da15df.svg?invert_in_darkmode&sanitize=true" align=middle width=147.3744525pt height=26.76175259999998pt/> is Plank constant divided by <img src="/tex/5a7b63fcb316fdefe42e319d18ab939a.svg?invert_in_darkmode&sanitize=true" align=middle width=18.179315549999988pt height=21.18721440000001pt/>; <img src="/tex/7fb5615db5df7077d50164f2324feb86.svg?invert_in_darkmode&sanitize=true" align=middle width=148.95556499999998pt height=26.76175259999998pt/> is speed of light; <img src="/tex/732c7964ffecaa48684a1e457b308a5e.svg?invert_in_darkmode&sanitize=true" align=middle width=197.72883074999996pt height=26.76175259999998pt/> is the permittivity of vacuum;  <img src="/tex/53d147e7f3fe6e47ee05b88b166bd3f6.svg?invert_in_darkmode&sanitize=true" align=middle width=12.32879834999999pt height=22.465723500000017pt/> is the Hamaker constant with values in the range of <img src="/tex/5220c564d7790bf64afba19b17a21c46.svg?invert_in_darkmode&sanitize=true" align=middle width=117.08914634999998pt height=26.76175259999998pt/> and <img src="/tex/a9a3a4a202d80326bda413b5562d5cd1.svg?invert_in_darkmode&sanitize=true" align=middle width=13.242037049999992pt height=22.465723500000017pt/> denotes the electrical potential difference between the beam and the underneath plate. Utilizing the strain gradient Euler-Bernoulli beam model and defining the following dimensionless variables:<img src="/tex/c745b9b57c145ec5577b82542b2df546.svg?invert_in_darkmode&sanitize=true" align=middle width=10.57650494999999pt height=14.15524440000002pt/>


<p align="center"><img src="/tex/f590c82f1bfff5fbe02fbd55f0802f8a.svg?invert_in_darkmode&sanitize=true" align=middle width=584.0777349pt height=39.60469425pt/></p>


the PDE and corresponding BCs governing the micro- or nano- cantilever beam used in M/NEMS devices are

<p align="center"><img src="/tex/8a19da8ee4f031e6a2811e4107a4ae28.svg?invert_in_darkmode&sanitize=true" align=middle width=350.01243089999997pt height=113.8960944pt/></p>

 


## Programming
Programmings are carried out in MATLAB. The main code is `sg.m` that computes the dynamic deflection of the beam using finite-element method.

```matlab
%% sg.m
clear all
clc
fig=1
hp=1.055*10^-34;
c=2.2998*10^8;
e0=8.854*10^-12;
l = 17.6e-6;
h = 5*l;
w=10*l;
L=50*h
g=w;
V=2;
E = 1.44e9;
nu=0.38;
mu=E/(2*(1+nu));
rho = 1000;
A = w*h;
II = 1/12*w*h^3;
l0=l;
l1=l;
l2=l;
D1=E*II+mu*A*(2*l0^2+(8/15)*l1^2+l2^2);
D2=mu*II*(2*l0^2+(4/5)*l1^2);
%% %%%%%%% parameter %%%%%%%%%
% alpha=pi^2*hp*c*w*L^4/(240*g^5*D1)
% beta=e0*w*V^2*L^4/(2*g^3*D1)*10^5
% gama=0.65*g/w
% zeta=D2/D1/L^2
alpha=0.1
beta=0
gama=0
mu=0
zeta=0
kf=-1
km=0
nr=10
smax=100
dt=10^-4
n=3
Le = 1/n;
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
K1=(1/Le^3)*[120/7 60*Le/7 (3*Le^2)/7 -120/7 60*Le/7 -3*Le^2/7
    60*Le/7 192*Le^2/35 11*Le^3/35 -60*Le/7 108*Le^2/35 -4*Le^3/35
    (3*Le^2)/7 11*Le^3/35 (3*Le^4)/35 -(3*Le^2)/7 (4*Le^3)/35 Le^4/70
    -120/7 -60*Le/7 -(3*Le^2)/7 120/7 -60*Le/7 (3*Le^2)/7
    60*Le/7 108*Le^2/35 (4*Le^3)/35 -60*Le/7 (192*Le^2)/35 (-11*Le^3)/35
    -3*Le^2/7 -4*Le^3/35 Le^4/70 (3*Le^2)/7 (-11*Le^3)/35 (3*Le^4)/35];

K2=(zeta/(Le^5))*[720, 360*Le, 60*Le^2, -720, 360*Le, -60*Le^2
    360*Le, 192*Le^2, 36*Le^3, -360*Le, 168*Le^2, -24*Le^3
    60*Le^2, 36*Le^3, 9*Le^4, -60*Le^2, 24*Le^3, -3*Le^4
    -720, -360*Le, -60*Le^2, 720, -360*Le, 60*Le^2
    360*Le, 168*Le^2, 24*Le^3, -360*Le, 192*Le^2, -36*Le^3
    -60*Le^2, -24*Le^3, -3*Le^4,  60*Le^2, -36*Le^3, 9*Le^4];


K=K1+K2;
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
M = Le/55440*[21720 3732*Le 281*Le^2 6000 -1812*Le 181*Le^2
    3732*Le 832*Le^2 69*Le^3 1812*Le -532*Le^2 52*Le^3
    281*Le^2 69*Le^3 6*Le^4 181*Le^2 -52*Le^3 5*Le^4
    6000 1812*Le 181*Le^2 21720 -3732*Le 281*Le^2
    -1812*Le -532*Le^2 -52*Le^3 -3732*Le 832*Le^2 -69*Le^3
    181*Le^2 52*Le^3 5*Le^4 281*Le^2 -69*Le^3 6*Le^4];
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
q1=.5*dt;
q2=(1-.5)*dt;
q3=1/(4/5)/dt^2;
q4=q3*dt;
q5=1/(8/5)-1;
q6=.5/(4/5*dt);
q7=.5/(4/5);
q8=dt*(.5/(8/5)-1);
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
H{1}=[-6 15 -10 0 0 1];
H{2}=Le*[-3 8 -6 0 1 0];
H{3}=0.5*Le^2*[-1 3 -3 1 0 0];
H{4}=[6 -15 10 0 0 0];
H{5}=Le*[-3 7 -4 0 0 0];
H{6}=0.5*Le^2*[1 -2 1 0 0 0];
%% %%%%%%%%%%%%%  initial cond.   %%%%%%%%%%%%%%%%%%%%%%%%
a{1,nr}=[];
ic=[1 0 0]';
for ff=1:n+1
    a{1,nr}=[ic;a{1,nr}];
end
%%% means that :   a{1,nr}=[1,0,0,1,0,0,.....]';
at{1}=zeros(3*(n+1),1);
%% %%%%%%%%%%%%%%%%%%  assembly  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
KG=0;
MG=0;
for qq=1:n
    KK(:,:,qq)=zeros((n+1)*3);
    MM(:,:,qq)=zeros((n+1)*3);
 
 for i=1:6
     for j=1:6
         KK(i+(qq-1)*3,j+(qq-1)*3,qq)=K(i,j);
         MM(i+(qq-1)*3,j+(qq-1)*3,qq)=M(i,j);
              
     end
 end

 KG=KG+KK(:,:,qq);
 MG=MG+MM(:,:,qq);
 
end
F1=-KG(:,1);
%% %%%%%%%%%%%%%%%%%%%%% initial force & acceleration  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
F0=zeros((n+1)*3,1);
for qq=1:n
  F0(1+(qq-1)*3:6+(qq-1)*3,1)=F0(1+(qq-1)*3:6+(qq-1)*3,1)+integralhandle(a{1,nr}(1+(qq-1)*3:6+(qq-1)*3)',alpha,mu,beta,gama,Le,1000);
end
att{1}=[0;0;0;MG(4:3*(n+1),4:3*(n+1))\(-F0(4:3*(n+1)))];
.
.
.
.  Please see the files for the rest
.
.
.
```

This script uses two functions `force.m` and `tanforce.m`. These functions calculate the non-linearity and the gradient of the non-linearity, respectively. The functions are generated using **MATLAB Symbolic ToolBox** and `MatlabFunction()` both incorporated in `force_generator.m` and `tanforce_generator.m`.

```matlab
%% force_generator.m
clear all
clc
syms s a1 a2 a3 a4 a5 a6 alpha beta gama mu Le

H(1,1) = 1-10*s^3+15*s^4-6*s^5;
H(2,1) = Le*(s-6*s^3+8*s^4-3*s^5);
H(3,1) = Le^2/2*(s^2-3*s^3+3*s^4-s^5);
H(4,1) = 10*s^3-15*s^4+6*s^5;
H(5,1) = Le*(-4*s^3+7*s^4-3*s^5);
H(6,1) = Le^2/2*(s^3-2*s^4+s^5);

a=[a1 a2 a3 a4 a5 a6];

Fsym=(alpha/(a*H)^4+mu/(a*H)^3+beta/(a*H)^2+beta*gama/(a*H))*H;
F=matlabFunction(Fsym,'file','force','vars',{a,s,alpha,mu,beta,gama,Le}); 
```

##	Simulation Results
Several control and estimation strategies are proposed in my papers [1,2,3]. In this section, the effectiveness of the proposed strategies in suppressing the nonlinear forced vibrations and dynamic pull-in instability of the system is demonstrated. In this regard, the nonlinear dimensionless PDE and corresponding BCs. in (2.9) under the boundary feedback control law (3.9) are numerically solved using Kantorovich method and iterative Newton-Raphson algorithm. Nonlinear terms in the governing PDE arise from external distributed forces, namely Casimir, van der Waals forces, and electrostatic force with first order fringing field correction; coefficients <img src="/tex/c745b9b57c145ec5577b82542b2df546.svg?invert_in_darkmode&sanitize=true" align=middle width=10.57650494999999pt height=14.15524440000002pt/>, <img src="/tex/07617f9d8fe48b4a7b3f523d6730eef0.svg?invert_in_darkmode&sanitize=true" align=middle width=9.90492359999999pt height=14.15524440000002pt/>, <img src="/tex/8217ed3c32a785f0b5aad4055f432ad8.svg?invert_in_darkmode&sanitize=true" align=middle width=10.16555099999999pt height=22.831056599999986pt/> and <img src="/tex/11c596de17c342edeed29f489aa4b274.svg?invert_in_darkmode&sanitize=true" align=middle width=9.423880949999988pt height=14.15524440000002pt/> are associated with these forces, respectively.

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
<img src="figs/fig4.jpg" width="600" /> (a)
</p>
<p align="center">
<img src="figs/fig5.jpg" width="600" /> (b)
</p>

#### Fig. 4. Dimensionless dynamic distance <img src="/tex/54d7657e71ba76441476037b8f6b67c5.svg?invert_in_darkmode&sanitize=true" align=middle width=46.643873099999986pt height=28.023570300000017pt/> vs. time plotted for open-loop system: a) <img src="/tex/085a664020aea8bfcf3f74ba7c5fd2d4.svg?invert_in_darkmode&sanitize=true" align=middle width=61.307015549999996pt height=22.831056599999986pt/> and b) <img src="/tex/8897c89dd043239cf31cea9a80e3ea90.svg?invert_in_darkmode&sanitize=true" align=middle width=61.307015549999996pt height=22.831056599999986pt/>.

As seen in these figures, the threshold of dynamic pull-in instability (<img src="/tex/8897c89dd043239cf31cea9a80e3ea90.svg?invert_in_darkmode&sanitize=true" align=middle width=61.307015549999996pt height=22.831056599999986pt/>) is lower than that of static pull-in instability (<img src="/tex/6d5c8839437f91e399f00ed743400547.svg?invert_in_darkmode&sanitize=true" align=middle width=61.307015549999996pt height=22.831056599999986pt/>); it can be explained by the fact that undershoot in the dynamic response could destabilize the system. Simulations are repeated for the closed-loop system in which the boundary controller is present in the nonlinear system. Similarly, dimensionless dynamic distance of the closed-loop system is plotted for <img src="/tex/8897c89dd043239cf31cea9a80e3ea90.svg?invert_in_darkmode&sanitize=true" align=middle width=61.307015549999996pt height=22.831056599999986pt/> and <img src="/tex/e663240af222dedccc4ca6c44a736de6.svg?invert_in_darkmode&sanitize=true" align=middle width=61.307015549999996pt height=22.831056599999986pt/> in Fig. 5(a) and 5(b), respectively.

<p align="center">
<img src="figs/fig6.jpg" width="600" /> (a)
</p>
<p align="center">
<img src="figs/fig7.jpg" width="600" /> (b)
</p>

#### Fig. 5. Dimensionless dynamic distance <img src="/tex/54d7657e71ba76441476037b8f6b67c5.svg?invert_in_darkmode&sanitize=true" align=middle width=46.643873099999986pt height=28.023570300000017pt/> vs. time plotted for closed-loop system: a) <img src="/tex/8897c89dd043239cf31cea9a80e3ea90.svg?invert_in_darkmode&sanitize=true" align=middle width=61.307015549999996pt height=22.831056599999986pt/> and b) <img src="/tex/e663240af222dedccc4ca6c44a736de6.svg?invert_in_darkmode&sanitize=true" align=middle width=61.307015549999996pt height=22.831056599999986pt/>.

As seen in these figures, the dynamic pull-in instability of open-loop and closed-loop systems occurs for <img src="/tex/e14cde30c9de120297d16860c473f12a.svg?invert_in_darkmode&sanitize=true" align=middle width=61.307015549999996pt height=22.831056599999986pt/> and <img src="/tex/10f10e5ae310172fec414db568199bfb.svg?invert_in_darkmode&sanitize=true" align=middle width=61.307015549999996pt height=22.831056599999986pt/>, respectively. Thus, it can be concluded that the proposed boundary feedback control law can postpone the dynamic pull-in instability. In addition, the dynamic pull-in threshold can be raised further by increasing the control gain. For instance, as shown in Fig. 6(a) and 6(b), the absolute value of <img src="/tex/aa90653a26bc63b138fb304972d81589.svg?invert_in_darkmode&sanitize=true" align=middle width=15.11042279999999pt height=22.831056599999986pt/> is increased tenfold which leads to stability of closed-loop system for <img src="/tex/584d8c55e723950137fe36d1978d3753.svg?invert_in_darkmode&sanitize=true" align=middle width=53.08780619999998pt height=22.831056599999986pt/>. This shows that an increase in the controller gain <img src="/tex/aa90653a26bc63b138fb304972d81589.svg?invert_in_darkmode&sanitize=true" align=middle width=15.11042279999999pt height=22.831056599999986pt/> can certainly decrease the beam fluctuations and therefore raise the pull-in threshold.

<p align="center">
<img src="figs/fig8.jpg" width="600" /> (a)
</p>
<p align="center">
<img src="figs/fig9.jpg" width="600" /> (b)
</p>

#### Fig. 6. Dimensionless dynamic distance  <img src="/tex/54d7657e71ba76441476037b8f6b67c5.svg?invert_in_darkmode&sanitize=true" align=middle width=46.643873099999986pt height=28.023570300000017pt/> vs. time plotted for closed-loop system: a) <img src="/tex/e663240af222dedccc4ca6c44a736de6.svg?invert_in_darkmode&sanitize=true" align=middle width=61.307015549999996pt height=22.831056599999986pt/>  and b) <img src="/tex/584d8c55e723950137fe36d1978d3753.svg?invert_in_darkmode&sanitize=true" align=middle width=53.08780619999998pt height=22.831056599999986pt/>.

The controller performance is also assessed for a large region of the parameters space. In the absence of the controller, the beam oscillation is simulated for various coefficients of <img src="/tex/8217ed3c32a785f0b5aad4055f432ad8.svg?invert_in_darkmode&sanitize=true" align=middle width=10.16555099999999pt height=22.831056599999986pt/> and <img src="/tex/c745b9b57c145ec5577b82542b2df546.svg?invert_in_darkmode&sanitize=true" align=middle width=10.57650494999999pt height=14.15524440000002pt/> in Fig. 7(a). In this figure, the vertical axis indicates the mean distance between free end of the beam and the ground after reaching a stable oscillation (i.e. <img src="/tex/c27310e08e00658b6d3c827b3b092094.svg?invert_in_darkmode&sanitize=true" align=middle width=359.00498534999997pt height=28.023570300000017pt/>). In the simulations, the beam oscillations become stable after a time about <img src="/tex/75d312053c3af90ce21b5b32a6505b1f.svg?invert_in_darkmode&sanitize=true" align=middle width=49.99989554999999pt height=28.023570300000017pt/>. The dashed line in Fig. 7(a) shows the dynamic pull-in instability limit; for the parameters pointed below the dashed line, the pull-in instability in the system response is inevitable. In the presence of the controller, the simulations are repeated in Fig. 7(b) in which the vertical axis represents the distance between free end of the beam and the ground when the beam comes to rest (i.e. <img src="/tex/d27bd9da49c7d02c914233ece3565bd1.svg?invert_in_darkmode&sanitize=true" align=middle width=107.63695634999998pt height=24.65753399999998pt/>). For the controller gain <img src="/tex/2e034da32b403938f2cb443561633419.svg?invert_in_darkmode&sanitize=true" align=middle width=58.85460899999999pt height=22.831056599999986pt/>, the steady state is reached before <img src="/tex/324d868bbc57edc07ab790417538f373.svg?invert_in_darkmode&sanitize=true" align=middle width=58.219104899999984pt height=28.023570300000017pt/>. As seen in this figure, the safe region for the force coefficients is extended and thus the stability is guaranteed for a large region of the parameters space.


<p align="center">
<img src="figs/fig10.jpg" width="600" /> (a)
</p>

#### Fig. 7(a). Mean distance <img src="/tex/a7db16f8491314ffabd40b06377b9f16.svg?invert_in_darkmode&sanitize=true" align=middle width=22.886329949999993pt height=22.465723500000017pt/> between the free end of the beam and the ground for stable oscillations in open-loop system vs. nonlinear force coefficients <img src="/tex/8217ed3c32a785f0b5aad4055f432ad8.svg?invert_in_darkmode&sanitize=true" align=middle width=10.16555099999999pt height=22.831056599999986pt/> and <img src="/tex/c745b9b57c145ec5577b82542b2df546.svg?invert_in_darkmode&sanitize=true" align=middle width=10.57650494999999pt height=14.15524440000002pt/>. 


<p align="center">
<img src="figs/fig11.jpg" width="600" /> (b)
</p>

#### Fig. 7(b). Steady state distance <img src="/tex/8b0f5eebd2b91657866d69597d365d76.svg?invert_in_darkmode&sanitize=true" align=middle width=24.326563799999988pt height=22.465723500000017pt/> between the free end of the beam and the ground in closed-loop system vs. nonlinear force coefficients <img src="/tex/8217ed3c32a785f0b5aad4055f432ad8.svg?invert_in_darkmode&sanitize=true" align=middle width=10.16555099999999pt height=22.831056599999986pt/> and <img src="/tex/c745b9b57c145ec5577b82542b2df546.svg?invert_in_darkmode&sanitize=true" align=middle width=10.57650494999999pt height=14.15524440000002pt/>.


The same procedure is followed for the nonlinear force coefficients <img src="/tex/07617f9d8fe48b4a7b3f523d6730eef0.svg?invert_in_darkmode&sanitize=true" align=middle width=9.90492359999999pt height=14.15524440000002pt/> and  <img src="/tex/11c596de17c342edeed29f489aa4b274.svg?invert_in_darkmode&sanitize=true" align=middle width=9.423880949999988pt height=14.15524440000002pt/> in Fig. 8(a), 8(b), 9(a), and Fig. 9(b). Similarly, the controller can suppress the beam vibrations and raise the pull-in threshold as well. In addition, when the dynamic pull-in instability in the open-loop system occurs, the mean distance <img src="/tex/a7db16f8491314ffabd40b06377b9f16.svg?invert_in_darkmode&sanitize=true" align=middle width=22.886329949999993pt height=22.465723500000017pt/> lies in the range of <img src="/tex/469da7e61e5393ec2959df8ef357fd47.svg?invert_in_darkmode&sanitize=true" align=middle width=71.23292549999998pt height=24.65753399999998pt/>. On the other hand, when the dynamic pull-in instability in the closed-loop system occurs, the steady state distance <img src="/tex/8b0f5eebd2b91657866d69597d365d76.svg?invert_in_darkmode&sanitize=true" align=middle width=24.326563799999988pt height=22.465723500000017pt/>  lies in the range of <img src="/tex/a8ad57e58ccc692e0cd351c2adb3a7ca.svg?invert_in_darkmode&sanitize=true" align=middle width=71.23292549999998pt height=24.65753399999998pt/>. This indicates that the controller can also extend the travel range of the M/NEMS devices beyond the well-known pull-in limits. In some tuning applications, a large stable travel range is extremely useful.

<p align="center">
<img src="figs/fig12.jpg" width="600" /> (a)
</p>

#### Fig. 8(a). Mean distance <img src="/tex/a7db16f8491314ffabd40b06377b9f16.svg?invert_in_darkmode&sanitize=true" align=middle width=22.886329949999993pt height=22.465723500000017pt/>  between the free end of the beam and the ground for stable oscillations in open-loop system vs. nonlinear force coefficients <img src="/tex/8217ed3c32a785f0b5aad4055f432ad8.svg?invert_in_darkmode&sanitize=true" align=middle width=10.16555099999999pt height=22.831056599999986pt/> and <img src="/tex/07617f9d8fe48b4a7b3f523d6730eef0.svg?invert_in_darkmode&sanitize=true" align=middle width=9.90492359999999pt height=14.15524440000002pt/>. 

<p align="center">
<img src="figs/fig13.jpg" width="600" /> (b)
</p>

#### Fig. 8(b). Steady state distance <img src="/tex/8b0f5eebd2b91657866d69597d365d76.svg?invert_in_darkmode&sanitize=true" align=middle width=24.326563799999988pt height=22.465723500000017pt/> between the free end of the beam and the ground in closed-loop system vs. nonlinear force coefficients <img src="/tex/8217ed3c32a785f0b5aad4055f432ad8.svg?invert_in_darkmode&sanitize=true" align=middle width=10.16555099999999pt height=22.831056599999986pt/> and <img src="/tex/07617f9d8fe48b4a7b3f523d6730eef0.svg?invert_in_darkmode&sanitize=true" align=middle width=9.90492359999999pt height=14.15524440000002pt/>.


<p align="center">
<img src="figs/fig14.jpg" width="600" /> (a)
</p>

#### Fig. 9(a). Mean distance <img src="/tex/a7db16f8491314ffabd40b06377b9f16.svg?invert_in_darkmode&sanitize=true" align=middle width=22.886329949999993pt height=22.465723500000017pt/> between the free end of the beam and the ground for stable oscillations in open-loop system vs. nonlinear force coefficients <img src="/tex/8217ed3c32a785f0b5aad4055f432ad8.svg?invert_in_darkmode&sanitize=true" align=middle width=10.16555099999999pt height=22.831056599999986pt/> and <img src="/tex/11c596de17c342edeed29f489aa4b274.svg?invert_in_darkmode&sanitize=true" align=middle width=9.423880949999988pt height=14.15524440000002pt/>.


<p align="center">
<img src="figs/fig15.jpg" width="600" /> (b)
</p>

#### Fig. 9(b). Steady state distance <img src="/tex/8b0f5eebd2b91657866d69597d365d76.svg?invert_in_darkmode&sanitize=true" align=middle width=24.326563799999988pt height=22.465723500000017pt/> between the free end of the beam and the ground in closed-loop system vs. nonlinear force coefficients <img src="/tex/8217ed3c32a785f0b5aad4055f432ad8.svg?invert_in_darkmode&sanitize=true" align=middle width=10.16555099999999pt height=22.831056599999986pt/> and <img src="/tex/11c596de17c342edeed29f489aa4b274.svg?invert_in_darkmode&sanitize=true" align=middle width=9.423880949999988pt height=14.15524440000002pt/>.


In all of the simulations, Casimir and van der Waals forces have adverse effect on the performance of M/NEMS devices. They lower the pull-in threshold and narrow the travel range. On the other hand, the fringing filed effect extends the travel range, though decreases the pull-in voltage as well.
The effect of the new material length scales is also studied in Fig. 10(a) and Fig. 10(b). In these figures, the coefficient of the non-classical terms in the governing equation (i.e. the coefficient <img src="/tex/e5c0c55191274dbb2a4499ab5c5b8175.svg?invert_in_darkmode&sanitize=true" align=middle width=8.40469739999999pt height=22.831056599999986pt/>) is changed from <img src="/tex/bd64dd0088109d9c74e867a1de2bbfa7.svg?invert_in_darkmode&sanitize=true" align=middle width=33.26498669999999pt height=26.76175259999998pt/> to <img src="/tex/4ee5fa5a96c6f442405ed41d33f5da26.svg?invert_in_darkmode&sanitize=true" align=middle width=33.26498669999999pt height=26.76175259999998pt/>. Simulations show that the more beam model deviates from the classical model the more pull-in threshold is raised. Moreover, similar to previous simulations, in the presence of controller, the travel range is wider and the pull-in voltage is higher.

<p align="center">
<img src="figs/fig16.jpg" width="600" /> (a)
</p>

#### Fig. 10(a). Mean distance  <img src="/tex/a7db16f8491314ffabd40b06377b9f16.svg?invert_in_darkmode&sanitize=true" align=middle width=22.886329949999993pt height=22.465723500000017pt/> between the free end of the beam and the ground for stable oscillations in open-loop system vs. nonlinear force coefficients <img src="/tex/8217ed3c32a785f0b5aad4055f432ad8.svg?invert_in_darkmode&sanitize=true" align=middle width=10.16555099999999pt height=22.831056599999986pt/> and <img src="/tex/e5c0c55191274dbb2a4499ab5c5b8175.svg?invert_in_darkmode&sanitize=true" align=middle width=8.40469739999999pt height=22.831056599999986pt/>.

<p align="center">
<img src="figs/fig17.jpg" width="600" /> (b)
</p>

#### Fig. 10(b). Steady state distance <img src="/tex/8b0f5eebd2b91657866d69597d365d76.svg?invert_in_darkmode&sanitize=true" align=middle width=24.326563799999988pt height=22.465723500000017pt/> between the free end of the beam and the ground in closed-loop system vs. nonlinear force coefficients <img src="/tex/8217ed3c32a785f0b5aad4055f432ad8.svg?invert_in_darkmode&sanitize=true" align=middle width=10.16555099999999pt height=22.831056599999986pt/> and <img src="/tex/e5c0c55191274dbb2a4499ab5c5b8175.svg?invert_in_darkmode&sanitize=true" align=middle width=8.40469739999999pt height=22.831056599999986pt/>.



## References
[1] **M. S. Edalatzadeh** and A. Alasty, “Boundary Exponential Stabilization of Non-classical Micro/Nano Beams Subjected to Nonlinear Distributed Forces,” Applied Mathematical Modelling, vol. 40, no. 3, pp. 2223–2241, 2016.

[2] **M. S. Edalatzadeh**, A. Alasty, and R. Vatankhah, “Admissibility and Exact Observability of Observation Operators for Micro-Beam Model: Time and Frequency Domain Approaches,” IEEE Transaction on Automatic Control, vol. 62, no. 12, pp. 6438–6444, 2017.

[3] **M. S. Edalatzadeh**, R. Vatankhah, and A. Alasty, “Suppression of Dynamic Pull-in Instability in Electrostatically Actuated Strain Gradient Beams,” in Second RSI/ISM International Conference on Robotics and Mechatronics (ICRoM), 2014, pp. 155–160.

[4] D. Lam, F. Yang, A. Chong, J. Wang, P. Tong, Experiments and theory in strain gradient elasticity, Journal of the Mechanics and Physics of Solids, 51 (2003) 1477-1508.

[5] R.F. Curtain, H. Zwart, An Introduction to Infinite-Dimensional Linear Systems Theory, Springer, 1995.

[6] I.M. Gelfand, I.M. Gelfand, S.V. Fomin, R.A. Silverman, Calculus of Variations, Dover Publications, 2000.

[7] J.N. Reddy, An Introduction to Nonlinear Finite Element Analysis, Oxford University Press, New York, 2004.

[8] L.V. Kantorovich, V.I. Krylov, Approximate Methods of Higher Analysis, P. Noordhoff, 1958.

