export readconll

isempty("")
length("") == 0
parse(Int, "3")

function readconll(path::String)
    data = Token[]
    lines = open(readlines, path)
    for line in lines
        line = chomp(line)
        isempty(line) && continue

        items = split(line, '\t')
        id = parse(Int, items[1])
        word = items[2]
        pos = items[5]
        head = parse(Int, items[7])
        @assert id > 0 && head >= 0
        t = Token(id, word, pos, head)
        push!(data, t)
        #println("$(id) $(word) $(pos) $(head)")
    end
    data
end
