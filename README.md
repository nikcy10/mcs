# FORMULAS: 

## For EXP 1A:
Given: Pr(d0), d0, d.

FIND: Pr(d)

Formula: Pr(d) = Pr(d0) + 20log(d0/d) 

## For EXP 1B: 
Given: TxPow/Pt/Pt(d0) , Pr(d), Pr(d0), d, d0. 

FIND: np OR n

Formula: Pt(d0) - Pr(d) = Pt(d0) - Pr(d0) + 10 .np. log10(d/d0)

## EXP 1C: 
Given: n, TxPow/Pt, hTx, hRx, d, Pr. 

FIND: 1. PL(d) 2. Fc

Formula:
1. PL(d) = Pt - Pr(d)
2. PL(d) = 10. np. log10(d) + 7.8 - 18.log(hTx) - 18.log(hRx) + 20.log10(Fc)

## EXP 1D: 
Given: Fc, TxPow/Pt, hTx, d, Pr, n

FIND: 1. PL(d) 2. hRx

Formula 
1. PL(d) = Pt - Pr(d)
2. PL(d) = 10. np. log10(d) + 7.8 - 18.log(hTx) - 18.log(hRx) + 20.log10(Fc)


## EXP 1E: 
Given: Fc, TxPow/Pt, hRx, d, Pr, n

FIND: 1. PL(d) 2. hTx

Formula 
1. PL(d) = Pt - Pr(d)
2. PL(d) = 10. np. log10(d) + 7.8 - 18.log(hTx) - 18.log(hRx) + 20.log10(Fc)

# EXP 5 - Frequency selective fading (GRAPH WALA

Formulas: 
Mean excess delay(MED): tow(bar) = Σ P(tow.i) . tow.i
                                   -----------------------
                                     Σ P(tow.i) 

2. Root mean square(RMS): σtow = √ tow(bar)^2 - (MED)^2


    tow(bar)^2 = Σ P(tow.i) . (tow.i)^2
                 -----------------------
                      Σ P(tow.i) 



3.Bc(>0.5) =     1   
            ------------
             5*σtow(RMS)


4.Bc(>0.9) =     1   
            ------------
             50*σtow(RMS)

5. Tow(max) = x-axis ka max value





ALL
