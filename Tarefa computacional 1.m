n = 1:20; % Variação da função (usado para letra "E" e "F")
entrada = [0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1]; % Declaração de vetor ou função
y= entrada; % Atribuir o valor em uma variável fixa

tamanho_vetor = length(y) % Determinar tamanho do vetor

%%

cont = 1; % Determinar as posições do novo vetor
for i = 1:(tamanho_vetor-1);
    operacao = y(cont + 1) - y(cont); % operação para determinar a derivada de um valor discreto
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

subplot(3, 1,1); % Permitir plotagem de mais de um gráfico no saida do algoritimo
plot(y) % Comando que retorna o gráfico como saida
title('Função da entrada'); % Nomear gráfico
xlabel('Eixo t'); % Nomear eixo horizontal
ylabel('Eixo y'); % Nomear eixo vertical
grid on; % Deixar gráfico quadriculado

subplot(3,1,2);
plot(deriv)
title('Derivada da função de entrada');
xlabel('Eixo t');
ylabel('Eixo y');
grid on;

subplot(3,1,3);
plot(integ)
title('Integral da função de entrada');
xlabel('Eixo t');
ylabel('Eixo y');
grid on;


