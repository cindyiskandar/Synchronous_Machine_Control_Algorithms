clear all; close all; clc;

Nn=1500;
Pn=800;
Vn=220;
In=1.52;
fn=50;
wn=2*pi*fn;

p=60*fn/Nn;
ws=2*pi*fn/p;
Ns=ws*60/(2*pi);
rend=0.9;

Ld=0.245;
Lq=0.245;
Rs=10.5;
phi_f=0.711;

J=0.05;
fv=0.0033;


A=sqrt(2/3)*[1 -0.5 -0.5; 0 sqrt(3)/2 -sqrt(3)/2; sqrt(0.5) sqrt(0.5) sqrt(0.5)];

Ai=inv(A);

Ti_v=J/fv;
delta=pi/2;

%puisque la machine est a poles lisses alors:
Ls=Ld;
Ti_i=Ls/Rs;


kp_i=1;
kp_v=1;
