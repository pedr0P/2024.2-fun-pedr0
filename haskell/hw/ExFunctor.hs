module ExFunctor where

import Prelude hiding ( fmap , (<$) )

class Funktor f where
  fmap :: (a -> b) -> f a -> f b
<<<<<<< HEAD
  (<$) :: b -> f a -> f b
=======

  (<$) :: b        -> f a -> f b
>>>>>>> 656294fa2c6bd232d76f5ebec1540971d2197b55
  (<$) = fmap . const


instance Funktor [] where
    fmap = map

instance Funktor Maybe where
<<<<<<< HEAD
    fmap f m =
      case m of
        Just y -> Just $ f y
        _      -> Nothing

-- what about Either?
instance Funktor (Either e) where
  fmap f o =
    case o of
      Left e  -> Left e
      Right e -> Right $ f e

-- what about pairs?
-- instance Funktor (pairs x) where
--   fmap = undefined
  -- fmap f x y = (x, y)
=======
    fmap = map Maybe

-- what about Either?

-- what about pairs?
>>>>>>> 656294fa2c6bd232d76f5ebec1540971d2197b55

-- what about functions?

-- what about Trees?

-- ...define Functor instances of as many * -> * things as you can think of!

