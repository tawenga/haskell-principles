data DayOfWeek = Sun | Mon | Tue | Wed | Thur | Fri | Sat

data Date = 
  Date DayOfWeek Int

instance Eq DayOfWeek where
  (==) Mon Mon = True
  (==) Tue Tue = True
  (==) Wed Wed = True

instance Eq Date where
  (==) (Date dayOfWeek day) 
       (Date dayOfWeek' day') = (dayOfWeek == dayOfWeek) && (day == day')
