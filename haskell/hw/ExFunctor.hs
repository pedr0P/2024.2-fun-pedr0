module ExFunctor where

import Prelude hiding ( fmap , (<$) )

class Funktor f where
  fmap :: (a -> b) -> f a -> f b
  (<$) :: b -> f a -> f b
  (<$) = fmap . const


instance Funktor [] where
    fmap = map

instance Funktor Maybe where
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

-- what about functions?

-- what about Trees?

-- ...define Functor instances of as many * -> * things as you can think of!

