{-# LANGUAGE NoMonomorphismRestriction #-}
-- with the above, concrete types will be determined, if possible.
-- we don't want that here, though, so it is shut off.

module DetermineTheType where

-- type is Num, but without the first line, it would have been Integer
-- simple example
example = 1

