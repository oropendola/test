#!/cygdrive/c/Users/javi/AppData/Local/Programs/Python/Python36-32/python

class Iterable(object):
   def __init__(self,s):
      self.s=s[:]
   
   def next(self):
      try:
         q=self.s[-1]+self.s[-2]
         self.s.append(q)
         return q
      except IndexError:
         raise StopIteration()
   
   def __iter__(self):
      return self
   
   def current_state(self):
      return self.s

Q=Iterable([1,1])

next(Q)

next(Q)

fibonnaci=[ next(Q) for __ in xrange(10)]

print(fibonnaci)
