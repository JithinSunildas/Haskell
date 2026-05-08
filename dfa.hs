data Regex = Epsilon | Alphabet Char | Concat Regex Regex | Or Regex Regex | Star Regex

match :: Regex -> String -> Bool
match Epsilon [] = True
match (Alphabet c) [x] = x == c
match (Or a b) x = match a x || match b x

-- match (Concat a b) [x, y] = match a x && match b y

-- DFA
data State = State Int

type Transition = (State -> Char -> State)

data DFA = DFA State Transition [State]
