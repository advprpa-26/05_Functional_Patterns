
e1, e2 :: Maybe Integer
e1 = fmap (+1) (Just 1)
e2 = fmap (+1) Nothing

e3 :: [Integer]
e3 = fmap (+1) [1,2,3]

e4 :: IO Integer
e4 = fmap (\l -> read l + 1) getLine

-- data Either l r = Left l | Right r 
e5, e6 :: Either String Integer
e5 = fmap (+1) (Right 1) -- Either a Integer
e6 = fmap (+1) (Left "error") -- Either String Integer
