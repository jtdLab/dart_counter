# dart_game

This package provides models for different types of dart games e.g. ClassicGame, DoubleTraining, ScoringTraining and more

// TODO write real game play "integration" test for each game 

Rules:

    leg:
        startingPoints >1
        all Points <= startingPoints
        startingPoints - all Points != 1
        startingPoints == allPoints && last throw 1 dartOnDouble
        throws who are not last && startingPoints - allPoints <= 50 must have 0 dartsOnDouble

    set:
        startingPoints >1
        legs not empty
        startingPoints of all legs equal
        <= 3 won legs

    player:
        allNull or allNotNull
        legsOrSets must not have a empty list as value
        legsOrSetsNeededToWin >0
        allStartingPoints equal
         not more won legs/sets than legsNeededToWin

    game:
        startingPoints >1
        size >0
        players not empty

        pending:
            allNull

        running:
            allNotNull

        canceled:
            allNull or allNotNull

        finished:
            allNotNull
            exact 1 winner

        running/canceled/fininshed from runing game:
            of all players:
                    legsOrSetsNeededToWin should be equal
                    legsOrSetsNeededToWin calcled based on mode and size of game
                    have legs or sets depending on type
                    equal amount of sets and legs
                    eqaul startingPoints of all sets and legs
                    all legs must have equal amount of throws or at max 1 more than other players same leg

            exact 1 player is current turn

            running/canceled fron running: exact 0 winners
