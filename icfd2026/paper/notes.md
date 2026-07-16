# Notes

## Mechanims 
### Nakamura mech
- updates mainly for N2Hx chemistry beacause N2Hx species expected from NH2+NH2 at low temp
- predicts NH3, O2 and H2O profiles well
- good prediction of NO and N2O before reaction zone (weak flame)
    -  overestimation in reaction zone
    - weakness of this mech are these profiles
- sens analysis used for identifying importance of N2Hx chemistry in reaction zone

- based on nitrogen chemistry of Miller and Bowman (1989)
- 4 steps of improvement:
    1. H2/NHx/N2O/NO2/NNH chemistry from Mathieu and Petersen (2015)
    1. N2Hx chemistry from Konnov (2009) without NNH
    1. accurate and consistent thermochemical ppt by Bugler et al. (2016)
    1. updated N2Hx rate constants


At varying hydrogen concentrations, this H2 recovery mechanism is significantly affected prioritzing the production of
either H radicals or H2. Modelling this mechanism accurately results in better representation of NHx and N2Hx species as
they dependant on the H and H2 from this mechanism \cite{gotamaMeasurement2022}. This could result in better LBV
modelling for NH3/H2/Air flames.

(B Mei 2019)
- NH3/Air LBV prediction good for lean to stoic conditions
- overpredicts LBV of O2-enriched flames
(Nakamura 2017)
- accurate NH3, O2, H2O profiles from NH3/Air flame
- validated for flame speed and IDT
- inaccuracies observed in NO and N2O profiles
(B Cosway 2026)
- reliable flame speed prediction of NH3/H2, especially when phi=1.1-1.4 


### Gotama mech
- accurate LBV for intermediate xh2 at varying phi
- discovers "H2 recovery mechanism" where H2 recovered in NH3/H2 reaction pathways
    - H2->H but H2 recovery mechanism consumes H; significant at rich conditions
    - H2 recovery mechanism contributes to H radical pool
- higher xh2 -> h2 recovered increase ->  reduces n2hx reaction pathway importance

At varying hydrogen concentrations, this H2 recovery mechanism is significantly affected prioritzing the production of
either H radicals or H2. Modelling this mechanism accurately results in better representation of NHx and N2Hx species as
they dependant on the H and H2 from this mechanism \cite{gotamaMeasurement2022}. This could result in better LBV
modelling for NH3/H2/Air flames.

(Gotama 2022)
- LBV accurate for NH3/H2/Air for xH2 around 0.5 at various equivalence ratios
- good H2/Air performance at various equivalence ratios

### Okafor reduced mech
(WS Chai 2021)
- NH3/CH4/Air combustion described well by mech
- predicts NH3/H2/Air flames LBV well
- In NH3/H2/Air, CO emissions were predicted under fuel-lean condition
- In NH3/CH4/Air, CO emissions predictions were accurate
(B Mei 2019)
- NH3/Air prediction accurate for lean/stoic/rich conditions
(R Li 2019)
- Over-predicts IDT for lean/stoic/rich conditions

### Mathieu and Petersen mech
- improved predictions on IDT of diluted NH3/O2/Ar at high temp


## N2Hx motivation
- ammonia/air flame contains high conc of NHx radicals -> recombination reactions forming N2Hx 
- ^ presumed to be significant in ammonia/air ignition (Nakamura (2017))
