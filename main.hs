{-# LANGUAGE
  NoCUSKs
, NoDatatypeContexts
, NoFieldSelectors
, NoMonomorphismRestriction
, NoNPlusKPatterns
, NoNondecreasingIndentation
, NoStarIsType
, NoTraditionalRecordSyntax  #-}

module Main where

  import qualified Floor as F

  main = do
    putStrLn F.test