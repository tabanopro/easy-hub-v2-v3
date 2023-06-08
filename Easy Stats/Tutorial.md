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
  ### Example Code (ADD/SET/REMOVE)
  Let's say we are in a remote event. With plr as player.
  ```lua
    local main = require(script.Parent.Parent:FindFirstChild("EasyStats").EasyStatsMain)
    main:RequestStat("ADD", "Coins", plr, 25) --Leave the last arugment to what you would like to add or set or remove
  ```
  ### Manually Loading
  If you don't set to create leaderstats to true or smth do this
  
  Load player:
  ```lua
    local main = require(script.Parent.Parent:FindFirstChild("EasyStats").EasyStatsMain)
    main:createNewStats(plr)
  ```
  Save a player's data:
  ```lua
  local main = require(script.Parent.Parent:FindFirstChild("EasyStats").EasyStatsMain)
  main:saveData(plr)
  ```
# Creating A New Stat
### To create a new stat, you will need to put in the table provided with an example.
Example for the table:
``` Coins = {"IntValue", "Money"}``` 
Paste it in leaderstats value table in configure.
#### Join our discord for more questions!
