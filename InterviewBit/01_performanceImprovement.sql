select t1.TestId 
from Tests t1 join Tests t2
on t1.TestId = t2.TestId + 1
where t1.Marks > t2.marks;