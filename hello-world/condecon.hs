data GuessWhat = Chickenbutt deriving (Eq, Show)
data Id a = MkId a deriving (Eq, Show)
data Product a b = Product a b deriving (Eq, Show)
data Sum a b = First a | Second b deriving (Eq, Show)
data RecordProduct a b = RecordProduct { pfirst :: a, psecond :: b } deriving (Eq, Show)

data OperatingSystem = GnuPlusLinux
  | OpenBSDPlusNevermindJustBSDStill
  | Mac
  | Windows
  deriving (Eq, Show)

data ProgrammingLanguage = Haskell
  | Agda
  | Idris
  | PureScript
  deriving (Eq, Show)

data Programmer = Programmer { os :: OperatingSystem , lang :: ProgrammingLanguage } deriving (Eq, Show)

allOperatingSystems :: [OperatingSystem]
allOperatingSystems = [ GnuPlusLinux , OpenBSDPlusNevermindJustBSDStill, Mac, Windows]
allLanguages :: [ProgrammingLanguage]
allLanguages = [Haskell, Agda, Idris, PureScript]
allProgrammers :: [Programmer]

allProgrammers = [ (Programmer { os = x , lang = y }) | x <- allOperatingSystems, y <- allLanguages ]
