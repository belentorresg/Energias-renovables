%% Conce

dir_rad_conce = deg2rad(direccion_conce);

vel_x_conce = -velocidad_conce.*sin(dir_rad_conce);
vel_y_conce = -velocidad_conce.*cos(dir_rad_conce);

EW_conce = cumsum([0;vel_x_conce.*86400]);
NS_conce = cumsum([0;vel_y_conce.*86400]);

% anual
figure()
plot(EW_conce,NS_conce,'b','LineWidth',2)
xlabel('Oeste-Este','FontSize',12)
ylabel('Sur-Norte','FontSize',12)
title('Diagrama de Vector Progresivo Anual Carriel Sur 2024','FontSize',15)
grid on
axis on
axis tight

%% Estaciones

% verano
EW_verano_conce = EW_conce(1:91,:);
NS_verano_conce = NS_conce(1:91,:);

% figure()
% plot(EW_verano_conce,NS_verano_conce,'b','LineWidth',2)
% xlabel('Oeste-Este','FontSize',12)
% ylabel('Sur-Norte','FontSize',12)
% title('Diagrama de Vector Progresivo en Verano Carriel Sur 2024','FontSize',15)
% grid minor
% axis on
% axis tight

% otoño
EW_otono_conce = EW_conce(92:183,:);
NS_otono_conce = NS_conce(92:183,:);

% figure()
% plot(EW_otono_conce,NS_otono_conce,'b','LineWidth',2)
% xlabel('Oeste-Este','FontSize',12)
% ylabel('Sur-Norte','FontSize',12)
% title('Diagrama de Vector Progresivo en Otoño Carriel Sur 2024','FontSize',15)
% grid minor
% axis on
% axis tight

% invierno
EW_invierno_conce = EW_conce(184:275,:);
NS_invierno_conce = NS_conce(184:275,:);

% figure()
% plot(EW_invierno_conce,NS_invierno_conce,'b','LineWidth',2)
% xlabel('Oeste-Este','FontSize',12)
% ylabel('Sur-Norte','FontSize',12)
% title('Diagrama de Vector Progresivo en Invierno Carriel Sur 2024','FontSize',15)
% grid minor
% axis on
% axis tight

% primavera
EW_primavera_conce = EW_conce(276:366,:);
NS_primavera_conce = NS_conce(276:366,:);

% figure()
% plot(EW_primavera_conce,NS_primavera_conce,'b','LineWidth',2)
% xlabel('Oeste-Este','FontSize',12)
% ylabel('Sur-Norte','FontSize',12)
% title('Diagrama de Vector Progresivo en Primavera Carriel Sur 2024','FontSize',15)
% grid minor
% axis on
% axis tight


%% Subplot

figure()

subplot(2,2,1)
plot(EW_verano_conce,NS_verano_conce,'b','LineWidth',1.5)
xlabel('Oeste-Este','FontSize',10)
ylabel('Sur-Norte','FontSize',10)
title('Verano en Concepción','FontSize',12)
grid minor
axis on
axis tight

subplot(2,2,2)
plot(EW_otono_conce,NS_otono_conce,'b','LineWidth',1.5)
xlabel('Oeste-Este','FontSize',10)
ylabel('Sur-Norte','FontSize',10)
title('Otoño en Concepción','FontSize',12)
grid minor
axis on
axis tight

subplot(2,2,3)
plot(EW_invierno_conce,NS_invierno_conce,'b','LineWidth',1.5)
xlabel('Oeste-Este','FontSize',10)
ylabel('Sur-Norte','FontSize',10)
title('Invierno en Concepción','FontSize',12)
grid minor
axis on
axis tight

subplot(2,2,4)
plot(EW_primavera_conce,NS_primavera_conce,'b','LineWidth',1.5)
xlabel('Oeste-Este','FontSize',10)
ylabel('Sur-Norte','FontSize',10)
title('Primavera en Concepción','FontSize',12)
grid minor
axis on
axis tight

sgtitle('Diagrama de Vector Progresivo estacional de Carriel Sur en 2024')


%% Chillan

dir_rad_chillan = deg2rad(direccion_chillan);


vel_x_chillan = -vel_chillan.*sin(dir_rad_chillan);
vel_y_chillan = -vel_chillan.*cos(dir_rad_chillan);

EW_chillan = cumsum([0;vel_x_chillan.*86400]);
NS_chillan = cumsum([0;vel_y_chillan.*86400]);

% anual
figure()
plot(EW_chillan,NS_chillan,'b','LineWidth',2)
xlabel('Oeste-Este','FontSize',12)
ylabel('Sur-Norte','FontSize',12)
title('Diagrama de Vector Progresivo Anual Termas de Chillán 2024','FontSize',15)
grid on
axis on
axis tight


%% Estaciones

% verano
EW_verano_chillan = EW_chillan(1:91,:);
NS_verano_chillan = NS_chillan(1:91,:);

% figure()
% plot(EW_verano_chillan,NS_verano_chillan,'b','LineWidth',2)
% xlabel('Oeste-Este','FontSize',12)
% ylabel('Sur-Norte','FontSize',12)
% title('Diagrama de Vector Progresivo en Verano Termas de Chillán 2024','FontSize',15)
% grid minor
% axis on
% axis tight

% otoño
EW_otono_chillan = EW_chillan(92:183,:);
NS_otono_chillan = NS_chillan(92:183,:);

% figure()
% plot(EW_otono_chillan,NS_otono_chillan,'b','LineWidth',2)
% xlabel('Oeste-Este','FontSize',12)
% ylabel('Sur-Norte','FontSize',12)
% title('Diagrama de Vector Progresivo en Otoño Termas de Chillán 2024','FontSize',15)
% grid minor
% axis on
% axis tight

% invierno
EW_invierno_chillan = EW_chillan(184:275,:);
NS_invierno_chillan = NS_chillan(184:275,:);

% figure()
% plot(EW_invierno_chillan,NS_invierno_chillan,'b','LineWidth',2)
% xlabel('Oeste-Este','FontSize',12)
% ylabel('Sur-Norte','FontSize',12)
% title('Diagrama de Vector Progresivo en Invierno Termas de Chillán2024','FontSize',15)
% grid minor
% axis on
% axis tight

% primavera
EW_primavera_chillan = EW_chillan(276:366,:);
NS_primavera_chillan = NS_chillan(276:366,:);

% figure()
% plot(EW_primavera_chillan,NS_primavera_chillan,'b','LineWidth',2)
% xlabel('Oeste-Este','FontSize',12)
% ylabel('Sur-Norte','FontSize',12)
% title('Diagrama de Vector Progresivo en Primavera Termas de Chillán 2024','FontSize',15)
% grid minor
% axis on
% axis tight


%% Subplot

figure()

subplot(2,2,1)
plot(EW_verano_chillan,NS_verano_chillan,'b','LineWidth',1.5)
xlabel('Oeste-Este','FontSize',10)
ylabel('Sur-Norte','FontSize',10)
title('Verano Termas Chillán','FontSize',12)
grid minor
axis on
axis tight

subplot(2,2,2)
plot(EW_otono_chillan,NS_otono_chillan,'b','LineWidth',1.5)
xlabel('Oeste-Este','FontSize',10)
ylabel('Sur-Norte','FontSize',10)
title('Otoño Chillán','FontSize',12)
grid minor
axis on
axis tight

subplot(2,2,3)
plot(EW_invierno_chillan,NS_invierno_chillan,'b','LineWidth',1.5)
xlabel('Oeste-Este','FontSize',10)
ylabel('Sur-Norte','FontSize',10)
title('Invierno Chillán','FontSize',12)
grid minor
axis on
axis tight

subplot(2,2,4)
plot(EW_primavera_chillan,NS_primavera_chillan,'b','LineWidth',1.5)
xlabel('Oeste-Este','FontSize',10)
ylabel('Sur-Norte','FontSize',10)
title('Primavera Chillán','FontSize',12)
grid minor
axis on
axis tight

sgtitle('Diagrama de Vector Progresivo estacional de Termas de Chillán en 2024')

