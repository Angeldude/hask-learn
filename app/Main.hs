{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

import Web.Spock
import Web.Spock.Config
import Lib

import Data.Aeson hiding (json)
import Data.Text (Text)
import GHC.Generics

type Api = SpockM () () () ()
type ApiAction a = SpockAction () () () a

data Area = Area 
  { len :: Double
  , width :: Double
  } deriving (Show, Generic)

data Req = Req
  { price :: Double
  , area :: Area 
  } deriving (Show, Generic)

data Results = Results
  { result :: Double
  } deriving (Show, Generic)

instance ToJSON Area
instance FromJSON Area
instance ToJSON Req
instance FromJSON Req
instance ToJSON Results

calcArea :: Area -> Double
calcArea x = area' (len x) (width x)

calcTotal :: Req -> Double
calcTotal r = totalCost (calcArea (area r)) (price r)

errorJson :: Int -> Text -> ApiAction()
errorJson code message = 
  json $
    object
    [ "result" .= String "failure"
    , "error" .= object ["code" .= code, "message" .= message]
    ]

main :: IO()
main = do
  spockCfg <- defaultSpockCfg () PCNoDatabase ()
  runSpock 8080 (spock spockCfg app)

app :: Api
app = do
  post "calculate" $ do
    calcRequest <- jsonBody :: ApiAction (Maybe Req)
    case calcRequest of
      Nothing -> errorJson 1 "Failed to parse request body as Req"
      Just areaResult -> do
        let total = calcTotal areaResult
        json $ Results {result = total}