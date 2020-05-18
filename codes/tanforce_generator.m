clear all
clc
syms s a1 a2 a3 a4 a5 a6 alpha mu beta gama Le

H(1,1) = 1-10*s^3+15*s^4-6*s^5;
H(2,1) = Le*(s-6*s^3+8*s^4-3*s^5);
H(3,1) = Le^2/2*(s^2-3*s^3+3*s^4-s^5);
H(4,1) = 10*s^3-15*s^4+6*s^5;
H(5,1) = Le*(-4*s^3+7*s^4-3*s^5);
H(6,1) = Le^2/2*(s^3-2*s^4+s^5);

a=[a1 a2 a3 a4 a5 a6];

FFsym=(4*alpha/(a*H)^5+3*mu/(a*H)^4+2*beta/(a*H)^3+beta*gama/(a*H)^2)*H*H';
FF=matlabFunction(FFsym,'file','tanforce','vars',{a,s,alpha,mu,beta,gama,Le}); 