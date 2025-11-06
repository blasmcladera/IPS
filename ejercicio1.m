NUMERO_ALUMNO = 36943 #03694/3

#INCISO 1:
[n,x]=senial(NUMERO_ALUMNO) #Señal con la que estaremos trabajando

figure(1); #Gráfico de la señal
subplot(1,1,1);
plot(n,x, 'b-', 'LineWidth', 1.5);
ylabel('Amplitud')
xlabel('n')
title('Señal')
grid on

[s,a]=tftd(n,x,0.01); #TFTD de la señal

figure(2);
subplot(1,2,1); #Fase de la TFTD
plot(s, angle(a), 'r-', 'LineWidth', 1.5)
ylabel('Fase (rad)')
xlabel('s')
title('Fase')
grid on
subplot(1,2,2); #Modulo de la TFTD
plot(s, abs(a), 'g-', 'LineWidth', 1.5)
ylabel('|X(s)|')
xlabel('s')
title('Módulo')
grid on


