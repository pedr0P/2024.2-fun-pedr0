module OI where

-- import Prelude hiding
--     ( putStrLn
--     , getLine)

-- type IO a = World -> (World, a)

instance (Show (IO a)) where
    show iox = "{IO action}"

putString :: String -> IO ()
-- putString cs = fmap putChar cs
-- putString "" = return ()
--        same as:
putString "" = pure () -- pure :: a -> IO a
putString (c:cs) =
  do
    putChar c
    putString cs
  --    Syntatic sugar for:
  -- do
  --   _ <- putChar c
  --   _ <- putString cs

weird :: IO Char
weird =
  do
    getChar
    y <- getChar
    getChar
    return y

weird2 :: IO ()
weird2 =
  do 
    x <- getChar
    y <- getChar
    -- if x < y
    --   then putChar x
    --   else putChar y
    putChar (min x y)
      -- Ascii order

{-
    execute :: IO Int -> Int
    exectue iox = 42
-}
