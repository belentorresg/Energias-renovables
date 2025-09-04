%% Cargar y definir datos de caudal de río Cautín

load("riolaja.mat")

% cortamos fechas
fecha = datevec(time);

% año | mes | dia
inicio = find(fecha(:,1) == 1975 & fecha(:,2) == 1 & fecha(:,3) == 1);
fin = find(fecha(:,1) == 2006 & fecha(:,2) == 1 & fecha(:,3) == 1);

% 30 años (1975-2005)
date30 = fecha(inicio:fin,:);
% 2007
date98 = fecha(13742:14106,:);

%datos
datos30 = value(inicio:fin,:);
datos98 = value(13742:14106,:);


%%

%dias que tiene cada mes  
month = [31 28 31 30 31 30 31 31 30 31 30 31];

c = 0; %contador

%el ciclo for recorrerá cada día del año, de los 3 años en estudio y
%sacará un promedio de los caudales

for i = 1:12 %recorre cada mes
    mes = i;
    for j = 1:month(mes) %recorre los días de cada mes
        dia = j;

        k = date30(:,2) == mes & date30(:,3) == dia; %se evalua el mismo dia todos los años

        promedio = mean(datos30(k));

        c = c+1;

        Qmedio(c) = promedio;

    end
end

clear i j k c dia mes

%% caudales promedios

% caudal 30 años
figure()
subplot 121
plot(1:length(Qmedio), Qmedio, '-b','LineWidth',1.8)
grid minor
xlabel('Días')
ylabel('Caudal [m^{3}/s]')
title('Río Laja entre 1975-2005')
axis tight

% caudal 1998
subplot 122
plot(1:length(datos98),datos98,'-b','LineWidth',1.8)
xlabel('Días')
ylabel('Caudal [m^{3}/s]')
title('Río Laja en 1998')
axis tight
grid minor

sgtitle('Caudal Promedio Diario')


%% caudales clasificados

%orden decreciente periodo 30 años
Qclas30 = sort(Qmedio,'descend');
%orden decreciente para 1998
Qclas98 = sort(datos98,'descend');

figure
subplot 121
plot(Qclas30,'r','LineWidth',1.8)
xlabel('N° de días que se supera el caudal','FontSize',10)
ylabel('Caudal [m^{3}/s]','FontSize',10)
title('Río Laja entre 1975-2005','FontSize',12)
axis tight
grid minor

subplot 122
plot(Qclas98,'r','LineWidth',1.8)
xlabel('N° de días que se supera el caudal','FontSize',10)
ylabel('Caudal [m^{3}/s]','FontSize',10)
title('Río Laja en 1998','FontSize',12)
axis tight
grid minor

sgtitle('Caudal Clasificado')

