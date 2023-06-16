defmodule OsRng do

    def rngSyllable do
        syllableRow = [ "a", "e", "i", "o", "u", "an", "in", "oi", "on", "ou" ]
        syllableCol = [ "b", "d", "f", "g", "j", "i", "m", "n", "p", "r", "s", "t", "v", "z", "br", "cr", "dr", "fr", "gr", "pr", "tr", "vr", "bl", "cl", "fl", "gl", "pl", "ch" ]

        Enum.at(syllableCol, :rand.uniform(length(syllableCol)) - 1) <> Enum.at(syllableRow, :rand.uniform(length(syllableRow)) - 1)

    end

    def rngWord(nbSyllable) do
        list = []

        list = Enum.reduce(1..nbSyllable, list, fn _x, acc ->
            [ OsRng.rngSyllable | acc ]
        end)

        Enum.join(list, "")
    end

    def rngLine(nbWord) do
        point = [ " .", " ?", " !", "..." ]
        list = []

        list = Enum.reduce(1..nbWord, list, fn _x, acc ->
            [ OsRng.rngWord(:rand.uniform(10)) | acc ]
        end)

        Enum.join(list, " ") <> Enum.at(point, :rand.uniform(length(point)) - 1) <> "\n\n"
    end

    def rngText(nbLine) do
        list = []

        list = Enum.reduce(1..nbLine, list, fn _x, acc ->
            [ OsRng.rngLine(:rand.uniform(50)) | acc ]
        end)

        Enum.join(list, "")
    end
end
