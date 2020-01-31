report2019.pdf: report.dvi
	dvipdfmx -p a4 report.dvi

report.dvi: report.tex 1_intro.tex 2_model.tex 3_methods.tex 4_results.tex\
	Figs/fig1.eps \
       	Figs/fig2.eps \
       	Figs/fig3.eps \
       	Figs/fig4.eps \
       	Figs/fig5.eps \
       	Figs/fig6.eps \
       	Figs/fig7.eps \
       	Figs/fig8.eps \
       	Figs/fig9.eps \
       	Figs/fig10.eps \
       	Figs/fig11.eps 
	platex  report.tex

Figs/fig1.eps: Figs/model1.svgz
	inkscape -z -f Figs/model1.svgz -E Figs/fig1.eps
Figs/fig2.eps: Figs/model2.svgz
	inkscape -z -f Figs/model2.svgz -E Figs/fig2.eps
Figs/fig3.eps: Figs/var1.svgz
	inkscape -z -f Figs/var1.svgz -E Figs/fig3.eps
Figs/fig4.eps: Figs/var2.svgz
	inkscape -z -f Figs/var2.svgz -E Figs/fig4.eps
Figs/fig5.eps: Figs/md2xrd.svgz
	inkscape -z -f Figs/md2xrd.svgz -E Figs/fig5.eps
Figs/fig6.eps: Figs/xrds.svgz
	inkscape -z -f Figs/xrds.svgz -E Figs/fig6.eps
Figs/fig7.eps: Figs/rdfs.svgz
	inkscape -z -f Figs/rdfs.svgz -E Figs/fig7.eps
Figs/fig8.eps: Figs/rhoxs.svgz
	inkscape -z -f Figs/rhoxs.svgz -E Figs/fig8.eps
Figs/fig9.eps: Figs/Palphs.svgz
	inkscape -z -f Figs/Palphs.svgz -E Figs/fig9.eps
Figs/fig10.eps: Figs/rhox_snap1.svgz
	inkscape -z -f Figs/rhox_snap1.svgz -E Figs/fig10.eps
Figs/fig11.eps: Figs/rhox_snap2.svgz
	inkscape -z -f Figs/rhox_snap2.svgz -E Figs/fig11.eps
