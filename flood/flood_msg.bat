@for /l %%c in (1,1,30) do (msg * /V /time:60 'low signal... ERROR!' "%%~c")
del %0