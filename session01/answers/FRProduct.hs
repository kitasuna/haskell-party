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


findInt :: Int -> [Int] -> Bool
findInt _ [] = False
findInt i (x:xs)
  | i == x = True
  | otherwise = findInt i xs

findP :: Id -> [FRProduct] -> Maybe FRProduct
findP _ [] = Nothing
findP id' ((FRProduct id name inv):xs)
  | id' == id = Just $ FRProduct id name inv
  | otherwise = findP id' xs

-- Define a few test products
-- so we can mess around in the REPL
ironman = FRProduct "IRON" "Ironman shirt" 42
spiderman = FRProduct "SPIDER" "Spiderman shirt" 0
magneto = FRProduct "MAG" "Magneto shirt" (-2)

products = [ironman, spiderman, magneto]
