data test;
drop i;
do i=1 to 100;
	x = rannor(1)*5;
	y = 10 + (8)*x + rannor(1)*10;
	output;
end;
run;

proc sgplot data=test;
scatter x=x y=y;
run;

proc reg data=test ;
model y = x;
run;
quit;
