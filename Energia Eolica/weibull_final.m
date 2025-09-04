%% Conce

% Desviación estandar y promedio
desv_conce = std(velocidad_conce);
media_conce = mean(velocidad_conce);

% Ordenamos las velocidades , tambien la normalizada
v_ms_conce = sort(velocidad_conce);                                  % m/s
v_norm_conce = sort(velocidad_conce / media_conce);                  % normalizada

% Parámetros
k_conce = (desv_conce/media_conce).^(-1.068);       % forma
c_conce = media_conce/(abs(gamma(1+(1/k_conce))));  % escala
c_norm_conce = 1/(abs(gamma(1+(1/k_conce))));       % escala norm

%Utilizamos la ecuacion para determinar probabilidad
p_ms_conce = (k_conce/c_conce).*((v_ms_conce/c_conce).^(k_conce -1)).* exp(-((v_ms_conce/c_conce).^(k_conce)));
p_norm_conce = (k_conce/c_norm_conce).*((v_norm_conce/c_norm_conce).^(k_conce -1)).* exp(-((v_norm_conce/c_norm_conce).^(k_conce)));

figure()
subplot(1,2,1)
plot(v_ms_conce,p_ms_conce,'b','LineWidth',2)
axis tight
grid minor
axis on
xlabel('Velocidad en [m/s]','FontSize',12)
ylabel('Probabilidad','FontSize',12)

subplot(1,2,2)
plot(v_norm_conce,p_norm_conce,'LineWidth',2,'Color','r')
axis tight
grid minor
axis on
xlabel('Velocidad Normalizada','FontSize',12)
ylabel('Probabilidad','FontSize',12)

sgtitle('Distribuciones de Weibull Anual para el viento en Aeropuerto Carriel Sur en 2024')


%% Estaciones

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% VERANO

% Desviación estandar y promedio
desv_verano_conce = std(vel_verano_conce);
media_verano_conce = mean(vel_verano_conce);

% Ordenamos las velocidades , tambien la normalizada
v_norm_verano_conce = sort(vel_verano_conce / media_verano_conce);       % normalizada

% Parámetros
k_verano_conce = (desv_verano_conce/media_verano_conce).^(-1.068);       % forma
c_norm_verano_conce = 1/(abs(gamma(1+(1/k_verano_conce))));              % escala norm

%Utilizamos la ecuacion para determinar probabilidad
p_norm_verano_conce = (k_verano_conce/c_norm_verano_conce).*((v_norm_verano_conce/c_norm_verano_conce).^(k_verano_conce -1)).* exp(-((v_norm_verano_conce/c_norm_verano_conce).^(k_verano_conce)));


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% OTOÑO

% Desviación estandar y promedio
desv_otono_conce = std(vel_otono_conce);
media_otono_conce = mean(vel_otono_conce);

% Ordenamos las velocidades , tambien la normalizada
v_norm_otono_conce = sort(vel_otono_conce / media_otono_conce);       % normalizada

% Parámetros
k_otono_conce = (desv_otono_conce/media_otono_conce).^(-1.068);       % forma
c_norm_otono_conce = 1/(abs(gamma(1+(1/k_otono_conce))));             % escala norm

%Utilizamos la ecuacion para determinar probabilidad
p_norm_otono_conce = (k_otono_conce/c_norm_otono_conce).*((v_norm_otono_conce/c_norm_otono_conce).^(k_otono_conce -1)).* exp(-((v_norm_otono_conce/c_norm_otono_conce).^(k_otono_conce)));


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% INVIERNO

% Desviación estandar y promedio
desv_invierno_conce = std(vel_invierno_conce);
media_invierno_conce = mean(vel_invierno_conce);

% Ordenamos las velocidades , tambien la normalizada
v_norm_invierno_conce = sort(vel_invierno_conce / media_invierno_conce);       % normalizada

% Parámetros
k_invierno_conce = (desv_invierno_conce/media_invierno_conce).^(-1.068);       % forma
c_norm_invierno_conce = 1/(abs(gamma(1+(1/k_invierno_conce))));                % escala norm

%Utilizamos la ecuacion para determinar probabilidad
p_norm_invierno_conce = (k_invierno_conce/c_norm_invierno_conce).*((v_norm_invierno_conce/c_norm_invierno_conce).^(k_invierno_conce -1)).* exp(-((v_norm_invierno_conce/c_norm_invierno_conce).^(k_invierno_conce)));


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% PRIMAVERA

% Desviación estandar y promedio
desv_primavera_conce = std(vel_primavera_conce);
media_primavera_conce = mean(vel_primavera_conce);

% Ordenamos las velocidades , tambien la normalizada
v_norm_primavera_conce = sort(vel_primavera_conce / media_primavera_conce);       % normalizada

% Parámetros
k_primavera_conce = (desv_primavera_conce/media_primavera_conce).^(-1.068);       % forma
c_norm_primavera_conce = 1/(abs(gamma(1+(1/k_primavera_conce))));                 % escala norm

%Utilizamos la ecuacion para determinar probabilidad
p_norm_primavera_conce = (k_primavera_conce/c_norm_primavera_conce).*((v_norm_primavera_conce/c_norm_primavera_conce).^(k_primavera_conce -1)).* exp(-((v_norm_primavera_conce/c_norm_primavera_conce).^(k_primavera_conce)));


%% subplot conce

figure()
subplot(2,2,1)
plot(v_norm_verano_conce,p_norm_verano_conce,'b','LineWidth',1.5)
axis tight
grid minor
axis on
xlabel('Velocidad Estandarizada')
ylabel('Probabilidad')
title('Verano Concepción')

subplot(2,2,2)
plot(v_norm_otono_conce,p_norm_otono_conce,'b','LineWidth',1.5)
axis tight
grid minor
axis on
xlabel('Velocidad Estandarizada')
ylabel('Probabilidad')
title('Otoño Concepción')

subplot(2,2,3)
plot(v_norm_invierno_conce,p_norm_invierno_conce,'b','LineWidth',1.5)
axis tight
grid minor
axis on
xlabel('Velocidad Estandarizada')
ylabel('Probabilidad')
title('Invierno Concepción')

subplot(2,2,4)
plot(v_norm_primavera_conce,p_norm_primavera_conce,'b','LineWidth',1.5)
axis tight
grid minor
axis on
xlabel('Velocidad Estandarizada')
ylabel('Probabilidad')
title('Primavera Concepción')

sgtitle('Distribuciones de Weibull Estandarizadas para Carriel Sur en 2024')


%% Chillán

% Desviación estandar y promedio
desv_chillan = std(velocidad_chillan);
media_chillan = mean(velocidad_chillan);

% Ordenamos las velocidades , tambien la normalizada
v_ms_chillan = sort(velocidad_chillan);                                     % m/s
v_norm_chillan = sort(velocidad_chillan / media_chillan);                   % normalizada

% Parámetros
k_chillan = (desv_chillan/media_chillan).^(-1.068);       % forma
c_chillan = media_chillan/(abs(gamma(1+(1/k_chillan))));  % escala
c_norm_chillan = 1/(abs(gamma(1+(1/k_chillan))));         % escala norm

%Utilizamos la ecuacion para determinar probabilidad
p_ms_chillan = (k_chillan/c_chillan).*((v_ms_chillan/c_chillan).^(k_chillan -1)).* exp(-((v_ms_chillan/c_chillan).^(k_chillan)));
p_norm_chillan = (k_chillan/c_norm_chillan).*((v_norm_chillan/c_norm_chillan).^(k_chillan -1)).* exp(-((v_norm_chillan/c_norm_chillan).^(k_chillan)));

figure()
subplot(1,2,1)
plot(v_ms_chillan,p_ms_chillan,'b','LineWidth',2)
axis tight
grid minor
axis on
xlabel('Velocidad en [m/s]','FontSize',12)
ylabel('Probabilidad','FontSize',12)

subplot(1,2,2)
plot(v_norm_chillan,p_norm_chillan,'LineWidth',2,'Color','r')
axis tight
grid minor
axis on
xlabel('Velocidad Normalizada','FontSize',12)
ylabel('Probabilidad','FontSize',12)

sgtitle('Distribuciones de Weibull Anual para el viento en Termas de Chillán en 2024')


%% Estaciones

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% VERANO

% Desviación estandar y promedio
desv_verano_chillan = std(vel_verano_chillan);
media_verano_chillan = mean(vel_verano_chillan);

% Ordenamos las velocidades , tambien la normalizada
v_norm_verano_chillan = sort(vel_verano_chillan / media_verano_chillan);       % normalizada

% Parámetros
k_verano_chillan = (desv_verano_chillan/media_verano_chillan).^(-1.068);       % forma
c_norm_verano_chillan = 1/(abs(gamma(1+(1/k_verano_chillan))));                % escala norm

%Utilizamos la ecuacion para determinar probabilidad
p_norm_verano_chillan = (k_verano_chillan/c_norm_verano_chillan).*((v_norm_verano_chillan/c_norm_verano_chillan).^(k_verano_chillan -1)).* exp(-((v_norm_verano_chillan/c_norm_verano_chillan).^(k_verano_chillan)));


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% OTOÑO

% Desviación estandar y promedio
desv_otono_chillan = std(vel_otono_chillan);
media_otono_chillan = mean(vel_otono_chillan);

% Ordenamos las velocidades , tambien la normalizada
v_norm_otono_chillan = sort(vel_otono_chillan / media_otono_chillan);       % normalizada

% Parámetros
k_otono_chillan = (desv_otono_chillan/media_otono_chillan).^(-1.068);       % forma
c_norm_otono_chillan = 1/(abs(gamma(1+(1/k_otono_chillan))));               % escala norm

%Utilizamos la ecuacion para determinar probabilidad
p_norm_otono_chillan = (k_otono_chillan/c_norm_otono_chillan).*((v_norm_otono_chillan/c_norm_otono_chillan).^(k_otono_chillan -1)).* exp(-((v_norm_otono_chillan/c_norm_otono_chillan).^(k_otono_chillan)));


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% INVIERNO

% Desviación estandar y promedio
desv_invierno_chillan = std(vel_invierno_chillan);
media_invierno_chillan = mean(vel_invierno_chillan);

% Ordenamos las velocidades , tambien la normalizada
v_norm_invierno_chillan = sort(vel_invierno_chillan / media_invierno_chillan);       % normalizada

% Parámetros
k_invierno_chillan = (desv_invierno_chillan/media_invierno_chillan).^(-1.068);       % forma
c_norm_invierno_chillan = 1/(abs(gamma(1+(1/k_invierno_chillan))));                  % escala norm

%Utilizamos la ecuacion para determinar probabilidad
p_norm_invierno_chillan = (k_invierno_chillan/c_norm_invierno_chillan).*((v_norm_invierno_chillan/c_norm_invierno_chillan).^(k_invierno_chillan -1)).* exp(-((v_norm_invierno_chillan/c_norm_invierno_chillan).^(k_invierno_chillan)));


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% PRIMAVERA

% Desviación estandar y promedio
desv_primavera_chillan = std(vel_primavera_chillan);
media_primavera_chillan = mean(vel_primavera_chillan);

% Ordenamos las velocidades , tambien la normalizada
v_norm_primavera_chillan = sort(vel_primavera_chillan / media_primavera_chillan);       % normalizada

% Parámetros
k_primavera_chillan = (desv_primavera_chillan/media_primavera_chillan).^(-1.068);       % forma
c_norm_primavera_chillan = 1/(abs(gamma(1+(1/k_primavera_chillan))));                   % escala norm

%Utilizamos la ecuacion para determinar probabilidad
p_norm_primavera_chillan = (k_primavera_chillan/c_norm_primavera_chillan).*((v_norm_primavera_chillan/c_norm_primavera_chillan).^(k_primavera_chillan -1)).* exp(-((v_norm_primavera_chillan/c_norm_primavera_chillan).^(k_primavera_chillan)));


%% subplot chillán

figure()
subplot(2,2,1)
plot(v_norm_verano_chillan,p_norm_verano_chillan,'r','LineWidth',1.5)
axis tight
grid minor
axis on
xlabel('Velocidad Estandarizada')
ylabel('Probabilidad')
title('Verano Chillán')

subplot(2,2,2)
plot(v_norm_otono_chillan,p_norm_otono_chillan,'r','LineWidth',1.5)
axis tight
grid minor
axis on
xlabel('Velocidad Estandarizada')
ylabel('Probabilidad')
title('Otoño Chillán')

subplot(2,2,3)
plot(v_norm_invierno_chillan,p_norm_invierno_chillan,'r','LineWidth',1.5)
axis tight
grid minor
axis on
xlabel('Velocidad Estandarizada')
ylabel('Probabilidad')
title('Invierno Chillán')

subplot(2,2,4)
plot(v_norm_primavera_chillan,p_norm_primavera_chillan,'r','LineWidth',1.5)
axis tight
grid minor
axis on
xlabel('Velocidad Estandarizada')
ylabel('Probabilidad')
title('Primavera Chillán')

sgtitle('Distribuciones de Weibull Estandarizadas para Termas de Chillán en 2024')
