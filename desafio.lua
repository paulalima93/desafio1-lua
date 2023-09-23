os.execute("chcp 65001") --coloca de forma automatizada o terminal em utf-8, assim ele reconhece acentos e emoji

-- info dos pokemon
local pokemonName, description, registerNumber, type
local attackAtt, defenseAtt, lifeAtt, speedAtt, specialAttackAtt, specialDefenseAtt


-- função que recece um atributo e nos retorna uma barra de progresso em string

local function getProgressBar(attribute)
    local full = "▰ "
    local empty = "▱ "
    local result = ""
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

--função que permite que o usuário cadastre um pokemon a sua escolha
local function registerPokemon()
    io.write('Qual o nome do Pokémon? ')
    pokemonName = io.read()

    io.write("Qual é o tipo deste Pokémon? ")
    type = io.read()

    io.write("Nos conte um pouco sobre o Pokémon: ")
    description = io.read()

    io.write("Certo, agora precisamos preencher os atributos deste Pokémon, de 1 a 10. \n")

    io.write("HP: ")
    lifeAtt = io.read("*n") --dado numerico

    io.write("Ataque: ")
    attackAtt = io.read("*n")

    io.write("Defesa: ")
    defenseAtt = io.read("*n")

    io.write("Ataque Especial: ")
    specialAttackAtt = io.read("*n")

    io.write("Defesa Especial: ")
    specialDefenseAtt = io.read("*n")

    io.write("Velocidade: ")
    speedAtt = io.read("*n")

    io.write("Informações cadastradas com sucesso! ")
    io.write("Aqui está o resultado:  \n")
end

local function showCard()
    -- cartao
    print("==================================================================")
    print("| ")
    print("| Nome: " .. pokemonName) -- concatenação, o + não concatena strings
    print("| Tipo: " .. type)
    print("| Descrição: " .. description)
    print("| ")
    print("| Atributos")
    print("|    Ataque:          " .. getProgressBar(attackAtt))
    print("|    Defesa:          " .. getProgressBar(defenseAtt))
    print("|    Vida:            " .. getProgressBar(lifeAtt))
    print("|    Velocidade:      " .. getProgressBar(speedAtt))
    print("|    Ataque Especial: " .. getProgressBar(specialAttackAtt))
    print("|    Defesa Especial: " .. getProgressBar(specialDefenseAtt))
    print("| ")
    print("==================================================================")
end

registerPokemon()
showCard()
