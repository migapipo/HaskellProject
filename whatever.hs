
-- functional programming: programming with functions
-- goal: solving problem using Haskell

x::Integer
x= 99

f :: Integer -> Integer
f n = n + 10

g :: Integer -> Integer
g = \c -> c + 20

h :: Integer -> Integer -> Integer
h       x       y =         (x + y) * 2 


--    -> : right associate ()
--    Space : left associate
hagain :: Integer -> Integer -> Integer
hagain = \x y -> (x + y) * 2


hagainagain :: Integer -> Integer -> Integer
hagainagain x = \y -> (x + y) * 2

i :: (Integer -> whatever) -> whatever    
i  k = k 99

pp = i h x 

-- Polymorphism.  hithere can input anytype and return anytype as long as they are consistant
hithere :: x -> x 
hithere a = a 



bythere :: x -> x -> x 
bythere a _ = a 
-- bythere _ a = a 

-- Define a data type, with 3 different constructors in there    
-- ( Rectangle Constructor include 2 variables (Rectangle Integer Integer)))
-- No Tab, only space
data Shape = Rectangle Integer Integer| Circle Integer | Triangle Integer Integer Integer
   deriving Show 

pie = 3 

perimeter :: Shape -> Integer
perimeter = \s -> case s of Rectangle w h -> (w + h) * 2 
                            Circle r -> r * 2 * pie 
                            Triangle a b c -> a + b + c 


perimeteragain :: Shape -> Integer
perimeteragain (Rectangle w h ) = (w + h) * 2
perimeteragain (Circle r) = r * 2 * pie
perimeteragain (Triangle a b c) = a + b + c  



perimeteragainagain :: Shape -> Integer
perimeteragainagain (Rectangle w h ) = (w + h) * 2
-- somethingelse _ = 0 
perimeteragainagain (Circle _) = 0
perimeteragainagain (Triangle _ _ _) = 0
-- Rectangle, Circle, Triangle will not overlap  ---> NO OVERLAPPING PATTERNS 


data Three a = T a a a  
-- T a a a (Constructor)
-- a is data type variable 
-- a can be any data type 
 deriving (Eq, Show)

mapThree :: (a -> b) -> Three a -> Three b
mapThree      f       (T a1 a2 a3) =  (T (f a1) (f a2) (f a3))
















