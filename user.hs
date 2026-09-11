module User where


data User = MkUser
  { _nom    :: String
  , _prenom :: String
  , _age    :: Int
  } deriving (Show)

user1 :: User
user1 = MkUser {_nom = "Doe", _prenom = "John", _age = 41}


showUserAccessors :: User -> String
showUserAccessors u = _prenom u ++ " " ++ _nom u ++ " (" ++ show (_age u) ++ " ans)"


showUserPM :: User -> String
showUserPM (MkUser n p a) = p ++ " " ++ n ++ " (" ++ show a ++ " ans)"




resetAgeAcc :: User -> User
resetAgeAcc u = u { _age = 0 }


resetAgePM :: User -> User
resetAgePM (MkUser n p _) = MkUser n p 0









incAgeAcc :: User -> User
incAgeAcc u = u { _age = _age u + 1 }


incAgePM :: User -> User
incAgePM (MkUser n p a) = MkUser n p (a + 1)