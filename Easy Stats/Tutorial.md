# Welcome to easy stats
## The solution for leaderboard handling
Easy Stats is a module for handling leaderstats and adding them.
#API
  You will only need to learn one function.
  Because the other functions are AUTOMATIC.
  This function lets you Get, Add, Remove, Set from a stat.
  ##### GET = Returns the value
  ##### ADD = Add a number to a stat (ONLY WITH NUMBERVALUE AND INTVALUE)
  ##### REMOVE = Remove a number from a stat (only work with number and int value)
  ##### SET = Set a stat to something 
  ### Example Code (GET)
  ```lua
  local main = require(script.Parent.Parent:FindFirstChild("EasyStats").EasyStatsMain)
  print(main:RequestStat("GET", "Coins", game.Players.LocalPlayer, nil)) --Leave the last argument nil because don't use.
  ```

