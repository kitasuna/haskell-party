type Name = String
type Inventory = Int
type Colors = [Color]

data Color =
  Blue | Red | Purple | Black | White
  deriving (Eq, Show)

data Product =
  Product Name Colors Inventory
  deriving (Eq, Show)

getName :: Product -> Name
getName (Product name _ _) = name

inStock :: Product -> Bool
inStock (Product _ _ 0) = False
inStock _ = True

inStockG :: Product -> Bool
inStockG (Product _ _ inv)
  | inv > 0 = True
  | otherwise = False










isAvailableG :: Product -> Bool
isAvailableG (Product n c i)
  | i > 0 = True
  | otherwise = False

ironman = Product "Ironman shirt" [Blue, Purple, Black] 42
spiderman = Product "Spiderman shirt" [White, Red] 0
magneto = Product "Magneto shirt" [White, Red] (-2)
