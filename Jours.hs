module Jours where

data Jour = Lundi | Mardi | Mercredi | Jeudi | Vendredi | Samedi | Dimanche
  deriving (Eq, Show)
 -- >>> lunndi == mardi 

-- Version 1 : En utilisant du Pattern Matching
estWeekendPM :: Jour -> Bool
estWeekendPM Samedi   = True
estWeekendPM Dimanche = True
estWeekendPM _        = False  

-- Version 2 : En utilisant l'opérateur d'égalité (==) de la classe Eq
estWeekendEq :: Jour -> Bool
estWeekendEq j = j == Samedi || j == Dimanche


-- Nombre de jours ouvrables dans une liste (en style point-free)
compterOuvrables :: [Jour] -> Int
compterOuvrables = length . filter (not . estWeekendPM)


