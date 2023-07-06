
POINT_TABLE = [1, 3, 6, 10, 15, 21, 28, 36, 45, 55, 66, 78]

function create_map()::Vector{Vector{Int}}
        #=
        Creates the maps that the cards use
        in:
                nothing
        out:
                vector{vector{int}} The combination of cards
        =#
        a = [i for i in 1:12]
        b = copy(a)
        c = reverse(copy(a))
        d = (copy(c))
        return [a, b, c, d]
end


function create_card()::Vector{Int16}
        #=
        Creates an empty scorecard and returns this
        =#
        return fill(0, 4)
end


function dice_roll!()::Vector{Int}
        #=
        Rolls 6 dice.
        1: red
        2: yellow
        3: green
        4: blue
        5: white
        6: white
        out:
                a vector containing 6 rolls
        =#
        return [rand(1:6) for i in 1:6]
end

function make_players(n::Int)::Vector{Vector{Int16}}
        #=
        Creates n players with cards
        in:
                int n: the amount of players
        out:
                vector{int} containing cards for all
                        n players.
        =#
        return [create_card() for i in 1:n]
end