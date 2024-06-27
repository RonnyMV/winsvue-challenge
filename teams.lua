local function formTeams(queue)
  local teams = { attackers = { players = {} }, defenders = { players = {} } }
  local attackersCount = 1
  local defendersCount = 1


  local function addPlayerToTeam(player, team)
      player.group = team.group
      if team.name == "attackers" then
          teams.attackers.players[attackersCount] = player
          attackersCount = attackersCount + 1
      elseif team.name == "defenders" then
          teams.defenders.players[defendersCount] = player
          defendersCount = defendersCount + 1
      end
  end

  for groupId, group in pairs(queue) do
      for _, player in pairs(group.players) do
          if attackersCount <= 5 then
              addPlayerToTeam(player, { name = "attackers", group = groupId })
          elseif defendersCount <= 5 then
              addPlayerToTeam(player, { name = "defenders", group = groupId })
          end
      end
  end

  if attackersCount <= 5 or defendersCount <= 5 then
      print("Não foi possível formar dois times completos com os jogadores disponíveis.")
  end

  return teams
end

local function requeueGroups(queue, teams)
  local function requeueTeam(team)
      for _, player in pairs(team.players) do
          local groupId = player.group
          if not queue[groupId] then
              queue[groupId] = { players = {} }
          end
          table.insert(queue[groupId].players, player)
      end
  end

  requeueTeam(teams.attackers)
  requeueTeam(teams.defenders)
end

return {
  formTeams = formTeams,
  requeueGroups = requeueGroups
}
