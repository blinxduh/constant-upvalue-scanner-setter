local scanner = {}

scanner["get"] = function(method) 
    for index, value in pairs(debug.getupvalues(method)) do 
        print("--INDEX:",index,"--VALUE:",value)
    end
end

scanner["set"] = function(method, index, newValue) 
    debug.setupvalue(method, index, newValue)
end 

return scanner
