-- take user input for price per unit, length and width of flooring required
-- compute the area and then multiply by price
-- TODO: create safe types (change from Float/Double), get user input instead of hard coding
-- allow for geometric shape of floor, build api response, GUI front end (html?)
-- expand on measuring unit (Allow more than just Feet)

module Lib(area', totalCost) where

  area' :: Double -> Double -> Double
  area' l w = l * w

  totalCost :: Double -> Double -> Double
  totalCost a p = a * p 