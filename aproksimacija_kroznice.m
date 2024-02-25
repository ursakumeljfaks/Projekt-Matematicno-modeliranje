function c = aproksimacija_kroznice(b)
% APROKSIMACIJA_KROZNICE aproksimira kroznico s Hermiteovo interpolacijo (dvojno ujemanje v robovih intervala) s 
% parametrom L = 4/3*tan(pi/4).
% Izracuna kontrolne tocke kubicne Bezierove krivulje, ki aproksimira
% lok kroznice (cos(t), sin(t)), t \in [-fi,fi] med normiranima tockama [-1;b] in [1;-b].

fi = pi/2;
T1 = [-cos(fi); -sin(fi)];
T2 = [cos(fi); sin(fi)];
dT1 = [sin(fi); -cos(fi)];
dT2 = [-sin(fi); cos(fi)];

L = 4/3*tan(pi/4);

c = [T1,T1+L*dT1,T2-L*dT2,T2];

kot_rotacije = atan(-b)-pi/2;
M = [cos(kot_rotacije),-sin(kot_rotacije);sin(kot_rotacije),cos(kot_rotacije)];
c = M*c;
plotBezier(c); 
axis equal;

%enotska kroznica
t=linspace(0,2*pi,100);
plot(cos(t),sin(t));
end