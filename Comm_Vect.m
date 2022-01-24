clear all;
close all;
clc;

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

Tiq=Lq/Rs;
%A ne pas oublier Kond=bettaq/Iq;
%BOp=Kond*Kp/(Rs*Ti) donc BFp=1/(1+R*Ti/(Kp*Kond)p)=Iq/Iq* (gain egal a 1
%donc erreur statique nulle).
%ToBF=R*Ti/(Kp*Kond)
%En posant ToBF=ToBO/n=Lq/(n*Rs)
%on trouve Kp=n*Rs/Kond
%on doit calculer n_max et alors imposer n=0.75*n_max
%on peut calculer n_max grace a Vmax ou essayer et observer differentes valeurs

Kond=178;
Kpq=Rs/Kond;

Tiv=J/fv;
Kpv=1/Kond;

Tid=Ld/Rs;
Kpd=Rs/Kond;

to_bf=Tiq*Rs/(Kond*Kpv);

%quand on a une commande de vitesse de la forme de rampe+echelon constant
%on peut utiliser un saturation bloc a cause de la rampe.
%mais quand on a des echelons il vaut mieux ne pas utiliser saturation