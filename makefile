report2019.pdf: report.dvi
	dvipdfmx -p a4 report.dvi

report.dvi: report.tex 1_intro.tex 2_model.tex 3_methods.tex \
	Figs/fig1.eps \
       	Figs/fig2.eps \
       	Figs/fig3.eps \
       	Figs/fig4.eps 
	platex  report.tex

Figs/fig1.eps: Figs/model1.svgz
	inkscape -z -f Figs/model1.svgz -E Figs/fig1.eps
Figs/fig2.eps: Figs/model2.svgz
	inkscape -z -f Figs/model2.svgz -E Figs/fig2.eps
Figs/fig3.eps: Figs/var1.svgz
	inkscape -z -f Figs/var1.svgz -E Figs/fig3.eps
Figs/fig4.eps: Figs/var2.svgz
	inkscape -z -f Figs/var2.svgz -E Figs/fig4.eps
