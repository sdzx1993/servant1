{-# LANGUAGE DeriveAnyClass  #-}
{-# LANGUAGE DeriveGeneric   #-}
{-# LANGUAGE TemplateHaskell #-}
module Lib
    ( someFunc
    ) where

import           Control.Lens
import           Data.Aeson
import           Data.Aeson
import           Data.Char
import           GHC.Generics
import           Text.Pretty.Simple

someFunc :: IO ()
someFunc = putStrLn "someFunc"



data P =
  P { _name :: String
    , _age  :: Int }
  deriving (Eq,Show,Ord,Generic,FromJSON,ToJSON)

data M = M {
    _aaa :: String
  , _bbb :: P
           }
  deriving (Eq,Show,Ord,Generic,FromJSON,ToJSON)


makeLenses ''P
makeLenses ''M

m = M "bbbb" (P "yangMiao" 33)

t1 = m ^. bbb . name

ac16fe1
4ec
1518999
goufaf
gugugu
