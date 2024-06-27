
local Queue = {
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

local function addGroupToQueue(queue, groupId, group)
  queue[groupId] = group
end

local function removeGroupFromQueue(queue, groupId)
  queue[groupId] = nil
end

local function getQueueSize(queue)
  local size = 0
  for _ in pairs(queue) do
      size = size + 1
  end
  return size
end

return {
  Queue = Queue,
  addGroupToQueue = addGroupToQueue,
  removeGroupFromQueue = removeGroupFromQueue,
  getQueueSize = getQueueSize
}
