# winsvue-challenge
Repositório criado exclusivamente para o desafio da winsvue.

Desenvolvemos um modo de jogo de PVP que concentra 10 jogadores divididos igualmente em dois times, os quais disputarão round a round até que um dos times atinja 13 pontos e assim a vitória.

Com o modo de jogo pronto, necessitaremos de um sistema de filas que identifique grupos de jogadores buscando por partida e que forme times prontos para requisitar a criação da partida do modo de jogo;

CONDIÇÕES GERAIS
Por se tratar de um sistema de fila que comporta a formação de times basedos em grupos, os jogadores em um grupo "incompleto" não podem ser separados e precisam permanecer juntos durante a formação de um time.

Os grupos dos jogadores devem ser persistidos para que ao fim da partida, os mesmos retornem a busca de novos times e partidas no mesmo grupo.

OBSERVAÇÕES IMPORTANTES
Utilize Lua como linguagem principal para o desenvolvimento, fora do ambiente do FiveM.

Priorize a eficiência e a escalabilidade do sistema.

Documente adequadamente o código para facilitar a manutenção e futuras expansões.

Envie o código para um repositório destinado ao desafio, fazendo o uso de boas práticas do uso do Git & Github.

SOLUÇÃO REQUERIDA
A formação de times de 5 jogadores;

A preservação dos grupo;

A definição dos times de ataque e defesa da times partida;

O consumo de uma função (Fictícia), quando os times estiverem prontos para iniciar a partida;
