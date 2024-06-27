# winsvue-challenge

## PROBLEMA
Desenvolvemos um modo de jogo de PVP que concentra 10 jogadores divididos igualmente em dois times, os quais disputarão round a round até que um dos times atinja 13 pontos e assim a vitória.

Com o modo de jogo pronto, necessitaremos de um sistema de filas que identifique grupos de jogadores buscando por partida e que forme times prontos para requisitar a criação da partida do modo de jogo;

# CONDIÇÕES GERAIS
Por se tratar de um sistema de fila que comporta a formação de times basedos em grupos, os jogadores em um grupo "incompleto" não podem ser separados e precisam permanecer juntos durante a formação de um time.

Os grupos dos jogadores devem ser persistidos para que ao fim da partida, os mesmos retornem a busca de novos times e partidas no mesmo grupo.

# OBSERVAÇÕES IMPORTANTES
Utilize Lua como linguagem principal para o desenvolvimento, fora do ambiente do FiveM.

Priorize a eficiência e a escalabilidade do sistema.

Documente adequadamente o código para facilitar a manutenção e futuras expansões.

Envie o código para um repositório destinado ao desafio, fazendo o uso de boas práticas do uso do Git & Github.

# SOLUÇÃO REQUERIDA
  1 - A formação de times de 5 jogadores;

  2 - A preservação dos grupo;

  3 - A definição dos times de ataque e defesa da times partida;

  4 - O consumo de uma função (Fictícia), quando os times estiverem prontos para iniciar a partida;


## Dados da fila
<details>
<summary style="font-size: 1.2em;">Fila</summary>

  ```lua
    Queue = {
      ['group:1'] = {
          players = {
              [1] = {
                  nick = 'ViperGT',
                  leader = true
              }
          }
      },
      ['group:4'] = {
          players = {
              [2] = {
                  nick = 'BlazeGamer',
                  leader = false
              },
              [3] = {
                  nick = 'SpeedRacer',
                  leader = false
              },
              [4] = {
                  nick = 'ShadowNinja',
                  leader = true
              },
              [5] = {
                  nick = 'PhoenixFire',
                  leader = false
              }
          }
      },
      ['group:6'] = {
          players = {
              [6] = {
                  nick = 'ThunderBolt',
                  leader = true
              },
              [7] = {
                  nick = 'GhostRider',
                  leader = false
              }
          }
      },
      ['group:9'] = {
          players = {
              [8] = {
                  nick = 'NeonSpectre',
                  leader = false
              },
              [9] = {
                  nick = 'DriftKing',
                  leader = true
              }
          }
      },
      ['group:10'] = {
          players = {
              [10] = {
                  nick = 'MidnightWolf',
                  leader = true
              }
          }
      }
  }
  ```
</details>

## Resultado esperado
<details>
<summary style="font-size: 1.2em;">Resultado</summary>

  ```lua
  Teams = {
      attackers = {
          players = {
              [10] = {
                  nick = 'MidnightWolf',
                  group = 'group:10',
                  leader = true
              },
              [2] = {
                  nick = 'BlazeGamer',
                  group = 'group:4',
                  leader = false
              },
              [3] = {
                  nick = 'SpeedRacer',
                  group = 'group:4',
                  leader = false
              },
              [4] = {
                  nick = 'ShadowNinja',
                  group = 'group:4',
                  leader = true
              },
              [5] = {
                  nick = 'PhoenixFire',
                  group = 'group:4',
                  leader = false
              }
          }
      },
      defenders = {
          players = {
              [6] = {
                  nick = 'ThunderBolt',
                  group = 'group:6',
                  leader = true
              },
              [7] = {
                  nick = 'GhostRider',
                  group = 'group:6',
                  leader = false
              }
              [8] = {
                  nick = 'NeonSpectre',
                  group = 'group:9',
                  leader = false
              },
              [9] = {
                  nick = 'DriftKing',
                  group = 'group:9',
                  leader = true
              }
              [1] = {
                  nick = 'ViperGT',
                  group = 'group:1',
                  leader = true
              }
          }
      }
  }
```
</details>