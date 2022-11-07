{-# LANGUAGE
  NoCUSKs
, NoDatatypeContexts
, NoFieldSelectors
, NoMonomorphismRestriction
, NoNPlusKPatterns
, NoNondecreasingIndentation
, NoStarIsType
, NoTraditionalRecordSyntax  #-}

module Floor where

  -- Length and Width and price per unit. For now, we'll accept the imprecise floating points.

  type Feet = Double
  type Area = Double
  type Price = Double

  len :: Feet
  len = 10.0

  width :: Feet
  width = 10.0

  price :: Price
  price = 1.0

  area :: Feet -> Feet -> Area
  area l w = l * w

  totalCost :: Area -> Price -> Double
  totalCost a p = a * p 

  test = show (totalCost (area len width) price)