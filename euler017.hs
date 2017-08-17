import Data.Digits -- cabal install digits
import qualified Data.Map as Map

main = print 

-- what about zeros?! best to rethink this.
writeOut :: Int -> String
writeOut n = case length digs of 
                  1 -> findKey (head digs) words
                  2 ->
                  3 ->
                  4 -> "onethousand" ++ writeOut $ unDigits 10 (tail digs)
    where digs = digits 10 n
          words = [(1, "one")
                  ,(2, "two")
                  ,(3, "three")
                  ,(4, "four")
                  ,(5, "five")
                  ,(6, "six")
                  ,(7, "seven")
                  ,(8, "eight")
                  ,(9, "nine")
                  ,(10, "ten")
                  ,(11, "eleven")
                  ,(12, "twelve")
                  ,(13, "thirteen")
                  ,(14, "fourteen")
                  ,(15, "fifteen")
                  ,(16, "sixteen")
                  ,(17, "seventeen")
                  ,(18, "eighteen")
                  ,(19, "nineteen")
                  ,(20, "twenty")
                  ,(30, "thirty")
                  ,(40, "forty")
                  ,(50, "fifty")
                  ,(60, "sixty")
                  ,(70, "seventy")
                  ,(80, "eighty")
                  ,(90, "ninty")
                  ,(100, "hundred")]

