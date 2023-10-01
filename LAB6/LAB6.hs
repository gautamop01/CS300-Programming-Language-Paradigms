-- (a) Natural Numebrs
-- 1) Define a data type Nat representing natural numbers using the above observation.

data Nat = Zero | Succ Nat 

-- Nat is a custom data type
-- Zero represents the number zero itself 
-- succ stands for "successor" and represents any other natural numebr, where each number is the successor of some other numebr 


-- 2) Write functions toInt :: Nat -> Int and fromInt :: Int -> Nat that allows you to convert between Nat and Int.

-- toInt takes a Nat and converts it to an Int. It counts how many successors there are.
toInt :: Nat -> Int 
toInt Zero = 0
toInt (Succ n) = 1 + toInt n


-- fromInt takes an Int and converts it to a Nat by creating a chain of successors.
fromInt :: Int -> Nat
fromInt 0 = Zero
fromInt n = Succ (fromInt (n-1))


-- (b) Conplex Numbers

-- i) Wrute a data tyoeo complex to reprsent complex numbers of the from a+b*i.
-- Complex is a data type that holds two Double values, representing the real and imaginary parts.

data Complex = Complex Double Double 


-- ii) Make Complex an instance of Show, Eq, and Num
-- 'Complex' <-- Haskell typeclasses for operations like displaying, comparing, and performing arithemtic operations.

-- 'Show' : to display a 'Compelx' number nicely.

Instance Show Complex where 
	show (Complex a b) = show a ++ " + " ++ show b ++ "i"
	
-- 'Eq' : to compare two 'Complex' numbers for equality 
Instance Eq Complex where
	show (Complex a b) == (Complex c d) = a == c && b == d
	
-- 'Num' :To perform arithmetic operations on 'Complex' numbers.
instance Num Complex where
    -- Addition
    (Complex a b) + (Complex c d) = Complex (a + c) (b + d)

    -- Subtraction
    (Complex a b) - (Complex c d) = Complex (a - c) (b - d)

    -- Multiplication
    (Complex a b) * (Complex c d) = Complex (a * c - b * d) (a * d + b * c)

    -- Absolute value (magnitude)
    abs (Complex a b) = Complex (sqrt (a * a + b * b)) 0

    -- Signum (complex number with magnitude 1)
    signum (Complex a b) = Complex (a / mag) (b / mag)
        where mag = sqrt (a * a + b * b)

    -- Converting an integer to a complex number
    fromInteger n = Complex (fromInteger n) 0

    -- Negation
    negate (Complex a b) = Complex (-a) (-b)


-- (c) Proposition
-- Consider the following datatype for representing boolean expression 

data Prop = Basic Bool | var Char | Not Prop | Prop :/\: Prop |  Prop :\/: Prop Prop

-- Basic Bool - represents constants 'True' and 'False'
-- 'Var Char' - represents single - character variable names
-- Not, :\/:, :->:, and :/\: represent logical operations.

-- For Example 
-- P :->: (p :\/: q) 
-- this represents the propositon "if p then (p or q)"


data Prop = Basic Bool | Var Char | Not Prop | Prop :/\: Prop | Prop :\/: Prop | Prop :->: Prop

-- Example proposition: p :->: (p :\/: q)
prop1 :: Prop
prop1 = Var 'p' :->: (Var 'p' :\/: Var 'q')

-- Var 'p' represents the variable p.
-- :->: represents the implication (if-then) operator.
-- :\/: represents the logical OR operator.


-- Extracting Variable Names:
vars :: Prop -> [Char]
vars (Basic _)    = []         -- Constants don't have variables
vars (Var x)      = [x]        -- A single variable
vars (Not p)      = vars p     -- Variable in the "not" operation is the same as in the sub-proposition
vars (p :/\: q)   = vars p ++ vars q  -- Combine variables from both sub-propositions
vars (p :\/: q)   = vars p ++ vars q
vars (p :->: q)   = vars p ++ vars q

-- vars (Basic _) returns an empty list for constants because they don't have variables.
-- vars (Var x) returns a list containing the variable x.
-- vars (Not p) extracts variables from the sub-proposition p.
-- vars (p :/\: q) and other compound propositions combine variables from both sub-propositions.



-- Evaluating Propositions:

-- a function beval to evaluate propositions based on variable assignments using an environment:
type Env = [(Char, Bool)]

beval :: Prop -> Env -> Bool
beval (Basic b) env   = b              -- Constants have fixed truth values
beval (Var x) env     = fromMaybe False (lookup x env)  -- Lookup variable in the environment
beval (Not p) env     = not (beval p env)  -- Negate the truth value of the sub-proposition
beval (p :/\: q) env  = beval p env && beval q env  -- Evaluate both sub-propositions and apply "and"
beval (p :\/: q) env  = beval p env || beval q env  -- Evaluate both sub-propositions and apply "or"
beval (p :->: q) env  = not (beval p env) || beval q env  -- Evaluate both sub-propositions and apply implication



-- Env is a type alias for a list of variable assignments, where each assignment is a pair of a character (variable name) and a boolean (truth value).
-- beval (Basic b) returns the constant value b.
--beval (Var x) looks up the variable x in the environment and returns its truth value.
-- beval (Not p) negates the truth value of the sub-proposition p.
-- beval (p :/\: q) and other compound propositions evaluate both sub-propositions and apply logical operators.


-- Example environment with variable assignments
env :: Env
env = [('p', True), ('q', False)]

-- Evaluate prop1 using the environment
result = beval prop1 env  -- Should evaluate to False


-- In this example, prop1 is evaluated in the env environment, and result will be False based on the assignments provided in env.


