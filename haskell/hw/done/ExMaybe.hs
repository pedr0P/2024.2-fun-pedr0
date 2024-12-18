module ExMaybe where

-- Do not alter this import!
import Prelude hiding ( maybe, Maybe(..) )
import qualified Data.Maybe as M

data Maybe a = Nothing | Just a
    deriving (Show, Eq, Ord)

nada = Nothing
algo = Just 2

catMaybes :: [Maybe a] -> [a]
catMaybes [] = []
catMaybes (m:ms) =
  case m of
    Just x -> x:xs
    _      -> xs
    where xs = catMaybes ms
-- catMaybes xs = [x | Just x <- xs]

fromJust :: Maybe a -> a
fromJust Nothing = error "Tem nada aqui, amigão"
fromJust (Just m) = m

fromMaybe :: a -> Maybe a -> a
fromMaybe a Nothing = a
fromMaybe a (Just m) = m

isJust :: Maybe a -> Bool
isJust (Just _) = True
isJust _ = False

isNothing :: Maybe a -> Bool
isNothing Nothing = True
isNothing _ = False

mapMaybe :: (a -> b) -> (Maybe a -> Maybe b)
mapMaybe f (Just m) = Just (f m)
mapMaybe f _ = Nothing

justMap :: (a -> Maybe b) -> [a] -> [b]
justMap f [] = []
justMap f (x:xs) =
  case f x of
    Just y -> y:ys
    _ -> ys
    where ys = justMap f xs

maybe :: b -> (a -> b) -> Maybe a -> b
maybe b f Nothing = b
maybe b f (Just m) = f m

maybeToList :: Maybe a -> [a]
maybeToList (Just m) = [m]
maybeToList _ = []

listToMaybe :: [a] -> Maybe a
listToMaybe ( x : _ ) = Just x
listToMaybe _ = Nothing

tryToModifyWith :: [Maybe (a -> a)] -> [a] -> [a]
tryToModifyWith [Just f] xs = map f xs
tryToModifyWith [_] xs = xs

