n = 1:20; % Varia��o da fun��o (usado para letra "E" e "F")
entrada = [0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1]; % Declara��o de vetor ou fun��o
y= entrada; % Atribuir o valor em uma vari�vel fixa

tamanho_vetor = length(y) % Determinar tamanho do vetor

%%

cont = 1; % Determinar as posi��es do novo vetor
for i = 1:(tamanho_vetor-1);
    operacao = y(cont + 1) - y(cont); % opera��o para determinar a derivada de um valor discreto
    cont = cont + 1;
    deriv(cont) = operacao; % Atribuir valor ao vetor
end

cont = 1;
somatorio = 0
for i = y;
    somatorio = somatorio + i;
    cont = cont + 1;
    integ(cont) = somatorio;
end    

%%

subplot(3, 1,1); % Permitir plotagem de mais de um gr�fico no saida do algoritimo
plot(y) % Comando que retorna o gr�fico como saida
title('Fun��o da entrada'); % Nomear gr�fico
xlabel('Eixo t'); % Nomear eixo horizontal
ylabel('Eixo y'); % Nomear eixo vertical
grid on; % Deixar gr�fico quadriculado

subplot(3,1,2);
plot(deriv)
title('Derivada da fun��o de entrada');
xlabel('Eixo t');
ylabel('Eixo y');
grid on;

subplot(3,1,3);
plot(integ)
title('Integral da fun��o de entrada');
xlabel('Eixo t');
ylabel('Eixo y');
grid on;


