-- take user input for price per unit, length and width of flooring required
-- compute the area and then multiply by price
-- TODO: create safe types (change from Float/Double), get user input instead of hard coding
-- allow for geometric shape of floor, build api response, GUI front end (html?)
-- expand on measuring unit (Allow more than just Feet)

module Main where

  type Feet = Double
  type Area = Double
  type Price = Double

  area :: Feet -> Feet -> Area
  area l w = l * w

  totalCost :: Area -> Price -> Double
  totalCost a p = a * p 

  main :: IO()
  main = do 
      putStrLn $ show (totalCost (area 4.0 3.0) 1.5)