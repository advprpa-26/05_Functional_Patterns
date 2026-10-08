import qualified GHC.Base (bindIO)

bindIO :: IO a -> (a -> IO b) -> IO b
bindIO = GHC.Base.bindIO

gr :: IO String
gr = getLine `bindIO` \fName -> readFile fName
