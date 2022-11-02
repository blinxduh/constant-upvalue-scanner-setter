# Constant and Upvalue scanner and setter

### How to use the constant scanner and getter.

```lua
local const = loadstring(game:HttpGet("https://raw.githubusercontent.com/blinxduh/constant-upvalue-scanner-setter/main/ConstantScanner.lua", true))()
local module = require(game:GetService("ReplicatedStorage").PlayerHandler)

--[[
  Example:
  Lets say PlayerHandler (module) has a function within it called "DamagePlayer",
  In that function, we can see if it has constants (variables in the function),
  We can use the ConstantScanner library i created to print the indexes and values into the console.
]]

const.get(module.DamagePlayer) -- Here it will print all the constants in the function to the console.

--[[
    Example 2:
    Lets say we found index '3' with a value of '100' and we want to change the value of index '3'.
    We can do that by using the 'set' method.
]]

const.set(module.DamagePlayer, 3, 400) -- The fist argument will be the function, the second is the index and the last is the new value.

--[[
  Verifying:
  We can then run the 'get' method again to see if index '3's value has been changed to '400'
]]

const.get(module.DamagePlayer) -- Will print out the constants.
```

### How to use the Upvalue scanner and getter.
```lua
local upval = loadstring(game:HttpGet("https://raw.githubusercontent.com/blinxduh/constant-upvalue-scanner-setter/main/UpvalueScanner.lua", true))()
local module = require(game:GetService("ReplicatedStorage").PlayerHandler)

--[[
  Example:
  Like before with the constant scanner, we go the variables **inside** the function.
  Upvalues are variables outside of the function we're scanning and which are used in that function.

  E.g:
]]

local val = 4
  
function abc(n)
   local x = n * val
   return x
end

--[[
  variable 'val' is the upvalue being used in the function 'abc'

  like constants, we can change upvalues, and we can also get them.
]]

upval.get(module.DamagePlayer)

--[[

  Lets say the 'DamagePlayer' function uses an upvalue as a multiplier.
  
  We are returned with an index 2 which is used in the multiplier.
  
  And we want to change that number to change the multiplier.
  
  We can do that by using the 'set' method.
  
]]

upval.set(module.DamagePlayer, 2, 30)

--[[
   Now the Multiplier will be using '30'
]]
```
  
