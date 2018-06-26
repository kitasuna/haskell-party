-- `data` keyword is used for defining new types
-- Below, we'll define Color as a "sum type", which
-- is sort of like an enum in other languages.
data Color =
  Blue | Red | Purple | Black | White
  deriving (Eq, Show)

-- `type` keyword is for type aliasing
-- This is useful for improving readability of type signatures.
-- Note that we can also alias custom types, as we did when we
-- created an alias for an array of our Color type below.
type Name = String
type Inventory = Int
type Colors = [Color]

-- Here we'll make a FRProduct type as a combination
-- of a Name (string), an array of Colors, and an
-- Inventory (int)
data FRProduct =
  FRProduct Name Colors Inventory
  deriving (Eq, Show)

-- This is a simple pattern matching example
-- We can extract the name from an FRProduct
-- by pattern matching on the various parts of the
-- FRProduct constructor.
-- Using the underscore in pattern matching allows us to
-- ignore arguments that we don't need
getName :: FRProduct -> Name
getName (FRProduct name _ _) = name

-- Check inventory using pattern matching
-- Negative numbers would return an incorrect result
inStock :: FRProduct -> Bool
inStock (FRProduct _ _ 0) = False
inStock _ = True

-- Check inventory using guards
-- Here, we properly handle negative numbers
inStockG :: FRProduct -> Bool
inStockG (FRProduct _ _ inv)
  | inv > 0 = True
  | otherwise = False

-- Define a few test products
-- so we can mess around in the REPL
ironman = FRProduct "Ironman shirt" [Blue, Purple, Black] 42
spiderman = FRProduct "Spiderman shirt" [White, Red] 0
magneto = FRProduct "Magneto shirt" [White, Red] (-2)
