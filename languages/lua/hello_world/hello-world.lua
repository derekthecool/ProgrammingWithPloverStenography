local steno_dictionary = {
    ['H-L'] = 'hello',
    ['WORLD'] = 'world',
    ['KW-PL'] = '!',
}

local raw_steno_input = {
    'H-L',
    'WORLD',
    'KW-PL',
}

for index, raw_steno in ipairs(raw_steno_input) do
    local translate_attempt = steno_dictionary[raw_steno]
    if not translate_attempt then
        translate_attempt = raw_steno
    end

    if index < #raw_steno_input then
        translate_attempt = translate_attempt .. ' '
    end

    io.write(translate_attempt)
end
