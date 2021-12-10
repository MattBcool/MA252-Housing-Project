/* Import Data */

%web_drop_table(WORK.house);
FILENAME REFFILE '/home/u59282078/house value.csv';

PROC IMPORT DATAFILE=REFFILE
	DBMS=CSV
	OUT=WORK.house;
	GETNAMES=YES;
RUN;



/* Fix Data */

data work.house;
   set house;

   if STATEFIP = 1 then STATELBL = 'AL';
   if STATEFIP = 2 then STATELBL = 'AK';
   if STATEFIP = 4 then STATELBL = 'AZ';
   if STATEFIP = 5 then STATELBL = 'AR';
   if STATEFIP = 6 then STATELBL = 'CA';
   if STATEFIP = 8 then STATELBL = 'CO';
   if STATEFIP = 9 then STATELBL = 'CT';
   if STATEFIP = 10 then STATELBL = 'DE';
   if STATEFIP = 11 then STATELBL = 'DC';
   if STATEFIP = 12 then STATELBL = 'FL';
   if STATEFIP = 13 then STATELBL = 'GA';
   if STATEFIP = 15 then STATELBL = 'HI';
   if STATEFIP = 16 then STATELBL = 'ID';
   if STATEFIP = 17 then STATELBL = 'IL';
   if STATEFIP = 18 then STATELBL = 'IN';
   if STATEFIP = 19 then STATELBL = 'IA';
   if STATEFIP = 20 then STATELBL = 'KS';
   if STATEFIP = 21 then STATELBL = 'KY';
   if STATEFIP = 22 then STATELBL = 'LA';
   if STATEFIP = 23 then STATELBL = 'ME';
   if STATEFIP = 24 then STATELBL = 'MD';
   if STATEFIP = 25 then STATELBL = 'MA';
   if STATEFIP = 26 then STATELBL = 'MI';
   if STATEFIP = 27 then STATELBL = 'MN';
   if STATEFIP = 28 then STATELBL = 'MS';
   if STATEFIP = 29 then STATELBL = 'MO';
   if STATEFIP = 30 then STATELBL = 'MT';
   if STATEFIP = 31 then STATELBL = 'NE';
   if STATEFIP = 32 then STATELBL = 'NV';
   if STATEFIP = 33 then STATELBL = 'NH';
   if STATEFIP = 34 then STATELBL = 'NJ';
   if STATEFIP = 35 then STATELBL = 'NM';
   if STATEFIP = 36 then STATELBL = 'NY';
   if STATEFIP = 37 then STATELBL = 'NC';
   if STATEFIP = 38 then STATELBL = 'ND';
   if STATEFIP = 39 then STATELBL = 'OH';
   if STATEFIP = 40 then STATELBL = 'OK';
   if STATEFIP = 41 then STATELBL = 'OR';
   if STATEFIP = 42 then STATELBL = 'PA';
   if STATEFIP = 44 then STATELBL = 'RI';
   if STATEFIP = 45 then STATELBL = 'SC';
   if STATEFIP = 46 then STATELBL = 'SD';
   if STATEFIP = 47 then STATELBL = 'TN';
   if STATEFIP = 48 then STATELBL = 'TX';
   if STATEFIP = 49 then STATELBL = 'UT';
   if STATEFIP = 50 then STATELBL = 'VT';
   if STATEFIP = 51 then STATELBL = 'VA';
   if STATEFIP = 53 then STATELBL = 'WA';
   if STATEFIP = 54 then STATELBL = 'WV';
   if STATEFIP = 55 then STATELBL = 'WI';
   if STATEFIP = 56 then STATELBL = 'WY';

   if BEDROOMS = 1 then NUMBED = 0;
   if BEDROOMS = 2 then NUMBED = 1;
   if BEDROOMS = 3 then NUMBED = 2;
   if BEDROOMS = 4 then NUMBED = 3;
   if BEDROOMS = 5 then NUMBED = 4;
   if BEDROOMS = 6 then NUMBED = 5;
   if BEDROOMS = 7 then NUMBED = 6;
   if BEDROOMS = 8 then NUMBED = 7;
   if BEDROOMS = 9 then NUMBED = 8;

   if PROPTX99 = 2 then PROPTX = 500;
   if PROPTX99 = 3 then PROPTX = 500;
   if PROPTX99 = 4 then PROPTX = 500;
   if PROPTX99 = 5 then PROPTX = 500;
   if PROPTX99 = 6 then PROPTX = 500;
   if PROPTX99 = 7 then PROPTX = 500;
   if PROPTX99 = 8 then PROPTX = 500;
   if PROPTX99 = 9 then PROPTX = 500;
   if PROPTX99 = 10 then PROPTX = 500;
   if PROPTX99 = 11 then PROPTX = 500;
   if PROPTX99 = 12 then PROPTX = 500;
   if PROPTX99 = 13 then PROPTX = 500;
   if PROPTX99 = 14 then PROPTX = 500;
   if PROPTX99 = 15 then PROPTX = 500;
   if PROPTX99 = 16 then PROPTX = 500;
   if PROPTX99 = 17 then PROPTX = 500;
   if PROPTX99 = 18 then PROPTX = 500;
   if PROPTX99 = 19 then PROPTX = 500;
   if PROPTX99 = 20 then PROPTX = 500;
   if PROPTX99 = 21 then PROPTX = 500;
   if PROPTX99 = 22 then PROPTX = 1500;
   if PROPTX99 = 23 then PROPTX = 1500;
   if PROPTX99 = 24 then PROPTX = 1500;
   if PROPTX99 = 25 then PROPTX = 1500;
   if PROPTX99 = 26 then PROPTX = 1500;
   if PROPTX99 = 27 then PROPTX = 1500;
   if PROPTX99 = 28 then PROPTX = 1500;
   if PROPTX99 = 29 then PROPTX = 1500;
   if PROPTX99 = 30 then PROPTX = 1500;
   if PROPTX99 = 31 then PROPTX = 1500;
   if PROPTX99 = 32 then PROPTX = 2500;
   if PROPTX99 = 33 then PROPTX = 2500;
   if PROPTX99 = 34 then PROPTX = 2500;
   if PROPTX99 = 35 then PROPTX = 2500;
   if PROPTX99 = 36 then PROPTX = 2500;
   if PROPTX99 = 37 then PROPTX = 2500;
   if PROPTX99 = 38 then PROPTX = 2500;
   if PROPTX99 = 39 then PROPTX = 2500;
   if PROPTX99 = 40 then PROPTX = 2500;
   if PROPTX99 = 41 then PROPTX = 2500;
   if PROPTX99 = 42 then PROPTX = 3500;
   if PROPTX99 = 43 then PROPTX = 3500;
   if PROPTX99 = 44 then PROPTX = 3500;
   if PROPTX99 = 45 then PROPTX = 3500;
   if PROPTX99 = 46 then PROPTX = 3500;
   if PROPTX99 = 47 then PROPTX = 3500;
   if PROPTX99 = 48 then PROPTX = 3500;
   if PROPTX99 = 49 then PROPTX = 3500;
   if PROPTX99 = 50 then PROPTX = 3500;
   if PROPTX99 = 51 then PROPTX = 3500;
   if PROPTX99 = 52 then PROPTX = 4500;
   if PROPTX99 = 53 then PROPTX = 4500;
   if PROPTX99 = 54 then PROPTX = 4500;
   if PROPTX99 = 55 then PROPTX = 4500;
   if PROPTX99 = 56 then PROPTX = 4500;
   if PROPTX99 = 57 then PROPTX = 4500;
   if PROPTX99 = 58 then PROPTX = 4500;
   if PROPTX99 = 59 then PROPTX = 4500;
   if PROPTX99 = 60 then PROPTX = 4500;
   if PROPTX99 = 61 then PROPTX = 4500;
   if PROPTX99 = 62 then PROPTX = 4500;
   if PROPTX99 = 63 then PROPTX = 5500;
   if PROPTX99 = 64 then PROPTX = 5500;
   if PROPTX99 = 65 then PROPTX = 6500;
   if PROPTX99 = 66 then PROPTX = 7500;
   if PROPTX99 = 67 then PROPTX = 8500;
   if PROPTX99 = 68 then PROPTX = 9500;
   if PROPTX99 = 69 then PROPTX = 10500;

   if BUILTYR2 = 10 then BUILTYR = 2005;
   if BUILTYR2 = 11 then BUILTYR = 2006;
   if BUILTYR2 = 12 then BUILTYR = 2007;
   if BUILTYR2 = 13 then BUILTYR = 2008;
   if BUILTYR2 = 14 then BUILTYR = 2009;
   if BUILTYR2 = 15 then BUILTYR = 2010;
   if BUILTYR2 = 16 then BUILTYR = 2011;
   if BUILTYR2 = 17 then BUILTYR = 2012;
   if BUILTYR2 = 18 then BUILTYR = 2013;
   if BUILTYR2 = 19 then BUILTYR = 2014;
   if BUILTYR2 = 20 then BUILTYR = 2015;
   if BUILTYR2 = 21 then BUILTYR = 2016;
   if BUILTYR2 = 22 then BUILTYR = 2017;
   if BUILTYR2 = 23 then BUILTYR = 2018;
   if BUILTYR2 = 24 then BUILTYR = 2019;

   LNPROPTX = log(PROPTX);
   LNVALUE = log(VALUEH);
run;

/* Drop Old / Unnecessary Data */

data work.house;
	set house;
	drop BUILTYR2 BEDROOMS STATEFIP PROPTX99 PROPTX YEAR VALUEH;
run;



/* EDA */

proc print data=work.house (obs=10);
run;

proc contents data=work.house;
run;



/* Optional: Export Modified Data */
/*
proc export 
  data=work.house
  dbms=xlsx 
  outfile="U:\Private\MA 252\Final Project\Datasets\house edited.xlsx" 
  replace;
run;
*/



/* Model Building */

/* Build MLR model with 80% training split and stepwise p-value selection */
/* Note: This model was modified to test with other selection methods proposed in the paper */
proc glmselect data=house;
partition fraction(test=0.2);
class METRO STATELBL(ref='PA');
model LNVALUE=BUILTYR METRO NUMBED LNPROPTX STATELBL
@2/selection=stepwise hierarchy=single showpvals stats=all;
run;
Quit;


/*
Our best model contained the following explanatory and interaction terms
LNVALUE=BUILTYR|METRO|NUMBED|LNPROPTX|LNPROPTX*METRO|STATELBL|METRO*STATELBL|LNPROPTX*STATELBL
*/



/* Conduct ANOVA Analysis and Review Residual vs. Predicted / Normal Q-Q Plots */

proc glm data=house PLOTS(MAXPOINTS=100000 UNPACK)=DIAGNOSTICS;
class METRO STATELBL;
model LNVALUE=BUILTYR METRO NUMBED LNPROPTX LNPROPTX*METRO STATELBL METRO*STATELBL LNPROPTX*STATELBL;
output out=glm;
run;
quit;