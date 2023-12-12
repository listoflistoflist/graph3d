clear
use "budget_graphs3d.dta"

graph3d lab_income_m y_Status_Quo lab_income_f, cuboid innergrid wire colorscheme(cr) xlab("Primary") ylab("Monthly Household Disposable Income") zlab("Secondary") xlang(355) ylang(90) zlang(28) xlpos(2) ylpos(2) zlpos(12) xang(10) yang(292) blv coord(4 5 7 8) format("%12.0fc") mark equi markeroptions(msize(1))
graph export "budget_graph_Status_Quo.eps", replace
graph3d lab_income_m y_Employment lab_income_f, cuboid innergrid wire colorscheme(cr) xlab("Primary") ylab("Monthly Household Disposable Income") zlab("Secondary") xlang(355) ylang(90) zlang(30) xlpos(2) ylpos(2) zlpos(12) xang(10) yang(292) blv coord(4 5 7 8) format("%12.0fc") mark equi markeroptions(msize(1))
graph export "budget_graph_Employment.eps", replace
graph3d lab_income_m y_Full_Time lab_income_f, cuboid innergrid wire colorscheme(cr) xlab("Primary") ylab("Monthly Household Disposable Income") zlab("Secondary") xlang(355) ylang(90) zlang(28) xlpos(2) ylpos(2) zlpos(12) xang(10) yang(292) blv coord(4 5 7 8) format("%12.0fc") mark equi markeroptions(msize(1))
graph export "budget_graph_Full_Time.eps", replace
graph3d lab_income_m y_Basic_Income_Flat_Tax lab_income_f, cuboid innergrid wire colorscheme(cr) xlab("Primary") ylab("Monthly Household Disposable Income") zlab("Secondary") xlang(355) ylang(90) zlang(30) xlpos(2) ylpos(2) zlpos(12) xang(10) yang(292) blv coord(4 5 7 8) format("%12.0fc") mark equi markeroptions(msize(1))
graph export "budget_graph_Basic_Income_Flat_Tax.eps", replace
