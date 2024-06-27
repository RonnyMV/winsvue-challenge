# winsvue-challenge

## Problema
Desenvolvemos um modo de jogo de PVP que concentra 10 jogadores divididos igualmente em dois times, os quais disputarão round a round até que um dos times atinja 13 pontos e assim a vitória.

Com o modo de jogo pronto, necessitaremos de um sistema de filas que identifique grupos de jogadores buscando por partida e que forme times prontos para requisitar a criação da partida do modo de jogo;

## Condições gerais
Por se tratar de um sistema de fila que comporta a formação de times basedos em grupos, os jogadores em um grupo "incompleto" não podem ser separados e precisam permanecer juntos durante a formação de um time.

Os grupos dos jogadores devem ser persistidos para que ao fim da partida, os mesmos retornem a busca de novos times e partidas no mesmo grupo.

## Observações Importantes
Utilize Lua como linguagem principal para o desenvolvimento, fora do ambiente do FiveM.

Priorize a eficiência e a escalabilidade do sistema.

Documente adequadamente o código para facilitar a manutenção e futuras expansões.

Envie o código para um repositório destinado ao desafio, fazendo o uso de boas práticas do uso do Git & Github.

## Solução Requerida
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



# Guia de Instalação do Lua no Windows

### Passo 1: Baixar o Lua
Acesse o site oficial do Lua: [lua.org](https://www.lua.org).

Clique na seção Download e baixe a versão mais recente do Lua para Windows.


### Passo 2: Instalar o Lua
Extraia o conteúdo do arquivo ZIP baixado para uma pasta de sua escolha. Por exemplo, ```C:\Lua.```
Abra a pasta onde você extraiu os arquivos. Você deve ver arquivos como ``` lua.exe, luac.exe, entre outros.```

### Passo 3: Configurar Variável de Ambiente ( opcional)

Para poder executar o Lua a partir de qualquer lugar no seu sistema, você precisa adicionar a pasta do Lua ao PATH do sistema.

Abra o Menu Iniciar e digite variáveis de ambiente e selecione "Editar as variáveis de ambiente do sistema".
Na janela de Propriedades do Sistema, clique em "Variáveis de Ambiente".

Em "Variáveis do sistema", encontre e selecione a variável Path, depois clique em "Editar".

Clique em "Novo" e adicione o caminho para a pasta onde você extraiu o Lua. Por exemplo, ```C:\Lua.```

Clique em "OK" para fechar todas as janelas.

### Passo 4: Verificar a Instalação
Abra o Prompt de Comando (```pressione Win + R, digite cmd e pressione Enter``` ).

Digite o comando abaixo:

``lua -v ``

Você deve ver algo parecido com: 

``Lua 5.4.4 Copyright (C) 1994-2020 Lua.org, PUC-Rio.``

### Passo 5: Executar o script
 - No terminal, dentro da pasta aonde está o script, digite os eguinte comando:

 - ``init main.lua``
 - Deverá aparecer este log no terminal:; 
 - ![Imgur Image](https://imgur.com/VXjVfCQ)



