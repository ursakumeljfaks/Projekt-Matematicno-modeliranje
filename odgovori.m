format long
% a)
b = 0;
t = 1/2;
kontrolne_tocke = aproksimacija_kroznice(b);
tocka = deCasteljau(kontrolne_tocke,t);
razdalja = sqrt(tocka(1)^2 + tocka(2)^2);

% b)
kontrolne_tocke_y = kontrolne_tocke(2,:);
funkcija = @(t) deCast(kontrolne_tocke_y,t);
iskani_t = fminsearch(funkcija,0.7);
minimum = deCasteljau(kontrolne_tocke, iskani_t);
scatter(minimum(1), minimum(2), 10, 'filled', 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'g');

% c)
g = 9.81;
t = linspace(0,1);
y_tocke_krivulje = deCast(kontrolne_tocke,t);
v = abs(sqrt(2*g*(-y_tocke_krivulje(end))));