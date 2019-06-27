module Cipher where

import Data.Char

-- a-z is 97-122

-- chr: Int to Char
-- ord: Char to Int
-- rightshift 3 of 'z' is 'c'

-- lower_base   = ord 'a'
-- alpha_length = length ['a'..'z']

left_shift shift_amount character =
  chr((ord(character) - shift_amount - lower_base) `mod` alpha_length + lower_base) 
  where
    lower_base   = ord 'a'
    alpha_length = length ['a'..'z']

right_shift shift_amount character =
  chr((ord(character) + shift_amount - lower_base) `mod` alpha_length + lower_base) 
  where
    lower_base   = ord 'a'
    alpha_length = length ['a'..'z']

caesar string =
  map (right_shift 3) string

unCaesar string =
  map (left_shift 3) string

