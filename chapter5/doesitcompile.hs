module DoesItCompile where

bigNum = (^) 5 $ 10
wahoo = bigNum

x = print
y = print "wahoo!"
z = x "hello world"

-- I have no idea how to fix these
-- a = (+)
-- b = a 5
-- c = b 10
-- d = c 200
