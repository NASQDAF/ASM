;reset the cf flag to zero
        lahf
        and ah, 11111110b
        sahf