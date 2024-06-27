
local queueModule = require("queue")
local teamsModule = require("teams")

-- Função fictícia para iniciar a partida
local function startMatch(teams)
    print("Iniciando a partida entre os times:")
    print("Attackers:")
    for k, player in pairs(teams.attackers.players) do
        print(' [ '..k..' ] ', player.nick )
    end
    print("Defenders:")
    for k, player in pairs(teams.defenders.players) do
      print(' [ '..k..' ] ', player.nick)
    end
end


local Queue = queueModule.Queue
local teams = teamsModule.formTeams(Queue)
if #teams.attackers.players == 5 and #teams.defenders.players == 5 then
    startMatch(teams)
    --Chamei a função de requeue neste local para simular uma nova partida com os mesmos grupos de atk/def.
    teamsModule.requeueGroups(Queue, teams)
    startMatch(teams)
else
    print("Não há jogadores suficientes para formar dois times completos.")
end

