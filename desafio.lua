os.execute("chcp 65001") --coloca de forma automatizada o terminal em utf-8, assim ele reconhece acentos e emoji

--criatura
local monsterName = "Creeper"
local description = "Um monstro furtivo com temperamento explosivo"
local emoji = "💥"

-- atributos (att) 
local attackAtt = 10
local defenseAtt = 2
local lifeAtt = 5
local speedAtt = 7
local inteligenceAtt = 2


-- função que recece um atributo e nos retorna uma barra de progresso em string 

local function getProgressBar(attribute)
    local full ="▰ "
    local empty ="▱ "
    local result= ""
    for i = 1, 10, 1 do
        if i <= attribute then
            --quadrado cheio
            result = result .. full
        else 
            --quadrado vazio
            result = result .. empty
            

        end
    end
    return result
end

-- cartao
print("==============================================================")
print("| ")
print("| Nome: " .. monsterName) -- concatenação, o + não concatena strings
print("| Descrição: " .. description)
print("| ")
print("| Emoji favorito: " .. emoji)
print("| Atributos")
print("|    Ataque:       " .. getProgressBar(attackAtt))
print("|    Defesa:       " .. getProgressBar(defenseAtt))
print("|    Vida:         " .. getProgressBar(lifeAtt))
print("|    Velocidade:   " .. getProgressBar(speedAtt))
print("|    Inteligência: " .. getProgressBar(inteligenceAtt))
print("| ")
print("==============================================================")