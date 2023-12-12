/* Author: Belen Chavez 
     Stata Heart Code 
     Happy Valentine's Day <3 */ 

clear all
set obs 463
gen t = . 
local c = 1  
forv i = 0(0.05)`=2`c(pi)''{
        replace t = `i' in `c'
        local ++c
}

gen x = 16*sin(t)^3
gen y = 13*cos(t)-5*cos(2*t)-2*cos(3*t)-cos(4*t)
gen mlab = "<3"
graph3d x y t , colorscheme(cr) scale(3) markeroptions(mlab(mlab)) 