data Htree = Node Int Htree Htree | Leaf Int Char

data Bit = L | R

encode :: String -> (Htree, [Bit])
encode = undefined

decode :: (Htree, [Bit]) -> String
decode = undefined

htree :: String -> Htree
htree = undefined
