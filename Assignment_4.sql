-- 1. Use the inbuilt functions and find the minimum, maximum and average amount from the orders table

select 
	max([amount]) as Max_OrderAmount, 
	min(amount) as Min_OrderAmount,
	AVG(amount) as Avg_OrderAmount
from Orders

-- 2. Create a user-defined function, which will multiply the given number with 10

GO
	create function mult (@num int)
	returns int as 
	Begin 
		SET @num = @num*10
		Return @num
	End;
GO

select *,dbo.mult(amount) as multiplied_by_10
from orders



-- 3. Use the case statement to check if 100 is less than 200, greater than 200 or equal to 200 and print the corresponding value

Select order_id, amount,
Case when amount > 200 then 'Amount is greater than 200'
	when amount < 200 then 'Amount is less than 200'
	when amount = 200 then 'Amount is equal to 200'
End as Amount_status
from orders;