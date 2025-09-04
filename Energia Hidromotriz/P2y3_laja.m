%% 2.

Qecol = 0.1*mean(datos30);

Qequip = Qclas30 - (Qecol);
Qprom = mean(Qequip);

%% Caudal disponible

Qdisp = Qequip - Qecol;
Qdisp_prom = mean(Qdisp);


%% plot de todos los caudales

figure
plot(1:length(Qmedio), Qmedio, '-b', 'LineWidth',1.8)
hold on
plot(Qclas30, 'm', 'LineWidth',1.8)
plot(Qequip, 'r', 'LineWidth', 1.8)
title('Río Laja de 1975 a 2005','FontSize',15)
line([0 365], [Qecol Qecol], 'Color', 'g', 'LineWidth',1.8)
legend('Q_{promedio}','Q_{clasificado}','Q_{equipamiento}','Q_{ecológico}','Location', 'best')
ylim([0 max(Qmedio)])  
xlim([0 365])
xlabel('Días','FontSize',12)
ylabel('Caudal [m^{3}/s]','FontSize',12)
grid minor


%% Caudales ideales entre Q80 y Q100

Q80 = Qequip(round(0.80 * length(Qequip))); % 80%
Q100 = Qequip(1); %es el caudal máximo

Qequip = sort(Qequip, 'descend'); %para asegurarse que están en forma decreciente

figure
plot(Qequip, 'k', 'LineWidth', 1.8)
title('Río Laja de 1975 a 2005','FontSize',15)
line([0 length(Qequip)], [Q80 Q80], 'Color', 'm', 'LineWidth', 1.5)
line([0 length(Qequip)], [Q100 Q100], 'Color', 'r', 'LineWidth', 1.5)
legend('Q_{equipamiento}','Q_{80}','Q_{100}','Location', 'best')
ylim([0 max(Qmedio)])  
xlim([0 365])
xlabel('Días','FontSize',12)
ylabel('Caudal [m^{3}/s]','FontSize',12)
grid minor


%% Parámetros (sección parabólica)

T = 105; % ancho del río en metros
y = 3.5; % profundidad del río en metros

% Área (m2)
A = (2*T*y)/3;

% Perímetro mojado (m)
P = T + ((8*(y^2)) / (3*T));

% Radio hidráulio (m)
Rh = ((2*y*(T^2)) / ((3*(T^2)) + (8*(y^2))));

% Espejo de agua (m) = T


%% 3. Potencia

H = 13; % diferencia de elevación 82-69
Pot = 8.2 * Qdisp_prom * H; % en Kw

% % promedio del caudal medio
% Qmedio_prom = mean(Qmedio);
