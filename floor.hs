-- take user input for price per unit, length and width of flooring required
-- compute the area and then multiply by price
-- TODO: create safe types (change from Float/Double), get user input instead of hard coding
-- allow for geometric shape of floor, build api response, GUI front end (html?)
-- expand on measuring unit (Allow more than just Feet)

module Floor where

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

  test :: String
  test = show (totalCost (area len width) price)