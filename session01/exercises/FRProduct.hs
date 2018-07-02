type Id = String
type Name = String
type Inventory = Int

data FRProduct =
  FRProduct Id Name Inventory
  deriving (Eq, Show)

getName :: FRProduct -> Name
getName (FRProduct _ name _) = name

inStock :: FRProduct -> Bool
inStock (FRProduct _ _ inv)
  | inv > 0 = True
  | otherwise = False


-- Define a few test products
-- so we can mess around in the REPL
ironman = FRProduct "IRON" "Ironman one-piece dress" 42
spiderman = FRProduct "SPIDER" "Spiderman shirt" 0
magneto = FRProduct "MAG" "Magneto socks" (-2)


findInt :: Int -> [Int] -> Bool


-- findP :: Id -> [FRProduct] -> ??

















