---
title: "README"
author: Gregory B. Egloff
date: 03. September 2026
---

# GENERAL INFORMATION

1. Project title:
River revitalisation promotes wild bees through habitat heterogeneity.


2. Authors:
Gregory B. Egloff (a), Delphine Clara Zemp (a), Christophe Praz (a,b)

Institutions and addresses:
(a) Laboratory of Conservation Biology, Institute of Biology, University of Neuchâtel, Rue Emile-Argand 11, 2000 Neuchâtel, Switzerland. 
(b) info fauna, Avenue de Bellevaux 51, 2000 Neuchâtel, Switzerland

Correspondence: Gregory B. Egloff. Laboratory of Conservation Biology, Institute of Biology, University of Neuchâtel, Rue Emile-Argand 11, 2000 Neuchâtel, Switzerland. Email: gregory.egloff@unine.ch


3. Linked publication (join DOI if possible):


4. Date of publication:


5. Discipline: 
Conservation Biology


6. Topic keywords: 


7. Funding:
Federal Office for the Environment (FOEN;  00-5203.PZ / 27D898C55)
University of Neuchâtel


## DATA OVERVIEW
1. Number of file and datasets:     
                                                          
Directory: ./data/raw

1) beedata.csv
- dataset containing bees surveyed in the study. Each row represents the metadata for the plot survey as well as the species name and Red List status.

2) mappingdata.csv
- dataset containing habitat characterization mapping. Each row represents the metadata for the plot survey followed by the habitat variables.


Directory: ./scripts                                                                                          
01_load_data.Rmd
- loads locally saved original datasets (not needed for external user)

02_clean_data.Rmd
- clean data to prepare for analysis

03_descriptive_analysis.Rmd
- data exploration, not needed for publications figures/tables

04_venndiagram.Rmd
- Venn Diagram of species composition by site type

05_bee_rarefaction.Rmd
- rarefaction of bee data

06_site_unimodel.Rmd
- Models to investigate the effect of site type on bee communities

07_habvariables_multimodel.Rmd
- Models to investigate the effect of habitat variables on wild bee communities

08_plot_heterogeneity_PCA.Rmd
- PCA to understand the relation of plot heterogeneity to other habitat variables

10_bee_specieslist.Rmd
- Appendix material - list of all bee species recorded

11_site_habitatanalysis.Rmd
- Appendix material - habitat types surrounding each site to show similarities between sites of the same region


### METHODOLOGICAL INFORMATION
Study design: The study was conducted in four regions in the western Swiss lowlands in 2025. Each region consisted of a focal revitalised river siteand a pseudo-control channelised river site. Sites were selected according to the following criteria: focal sites must have been revitalised along a length of at least 200 m. Control sites were built-up or channelised river stretches which had not been revitalised. They were located at least 1 km (2.73 ± 0.72 km) away from the respective focal site or any other revitalised river to guarantee their independence. The rivers of focal and control sites were of similar discharge, as well as within a similar landscape mosaic of urban, forest, and agricultural area. Within each site, eight 6 x 6 m plots were randomly placed within a 200 m stretch in open landscape, avoiding water and forested areas, prior to a first field visit.

Plots were visited in five surveys spanning the season. During each survey, bees were collected (for preparation and idenitification in lab), and the habitat characterised.

1. Date of data collection (precise if specific to each file):
March - August 2025

2. Geographic location of data collection (Swiss coordinate system LV95/ CH1905+)
	1) Aire (focal site: 2'495'452 / 1'113'801; control site: 2'492'616 / 1'116'342)
	2) Thièle (focal site: 2'537'662 / 1'180'204; control site: 2'535'296 / 1'178'127)
	3) Scheulte (focal site: 2'595'414 / 1'245'997; control site: 2'597'653 / 1'244'582)
	4) Schwarzbach (focal site: 2'608'127 / 1'193'254; control site: 2'609'968 / 1'193'095)

3. Methods used for collection and/or generation of data: 
Bees were collected during a 20 min active sampling window for each plot, with time being stopped for handling and killing. 
Plots were mapped as well during each survey.

4. Methods used to process the data: 
Raw field data were compiled and cleaned in R (version 4.5.2). Bee abundance and richness were calculated per plot survey. Floral and habitat variables were standardised to mean zero and unit variance prior to modelling. Plot heterogeneity was scored in the field using an ordinal index (0–3) combining floral resources, bareground nesting habitat, and structural heterogeneity (see Methods/Appendix B for the full protocol). For plot-level analyses, data were pooled across visits and standardised via coverage-based rarefaction (target coverage = 0.85) and, as a robustness check, size-based rarefaction (target sample size = 11 individuals), using the iNEXT package.

5. Instrument and/or software needed to read and handle the data: 
All analyses were conduction on RStudio version 4.5.2.


#### DATAFILE-SPECIFIC INFORMATION: FILE beedata.csv
Each column name and description

| Column | Description |
|---------|-------------|
| *#* | Individual ID corresponding to `number`, but without prefix "GE". |
| *number* | Individual ID used to cross-link bee labels in collection to metadata sheet. Composed of "GE" (collector Gregory Egloff) and a number in ascending order. |
| *plot* | Plot number within site (1-8). |
| *site* | Site type reflecting river stretch condition: "focal" = revitalised, "control" = channelised. |
| *region* | Region name (Aire, Thièle, Scheulte, Schwarzbach) corresponding to the name of the revitalised focal river. |
| *Xcoord* | X coordinate of plot in Swiss coordinate system LV95 / CH1903+. |
| *Ycoord* | Y coordinate of plot in Swiss coordinate system LV95 / CH1903+. |
| *Zcoord* | Elevation of plot. |
| *canton* | Swiss canton in which each region is located (Aire = Geneva GE, Thièle = Vaud VD, Scheulte = Jura JU, Schwarzbach = Bern BE). |
| *date* | Date of plot survey. |
| *visit* | Survey visit number (1-5). |
| *surveyID* | Code derived from site type ("F" = focal, "C" = control), region name (first two letters), canton abbreviation, visit number and plot number. |
| *observer* | Name abbreviation of observer (GE = Gregory Egloff). |
| *municipality* | Municipality name in which site is located. |
| *Nummer* | Equal to `number` column. |
| *municipality2* | Equal to `municipality` column. |
| *Lokalität* | Left empty. |
| *Subquadrat* | Left empty. |
| *Coordx* | Equal to `Xcoord` column. |
| *Coordy* | Equal to `Ycoord` column. |
| *Höhe* | Equal to `Zcoord` column. |
| *Präzision* | Precision scale (1-6) according to radius of certainty for each coordinate: <10 m = 6; 10-50 m = 5; 50-250 m = 4; 1 km² = 3; 9 km² = 2; 100 km² = 1. |
| *Tag* | Day of survey date. |
| *Monat* | Month of survey date. |
| *M (Römisch)* | Month in Roman numerals for collection labels; allows clear differentiation between month and day. |
| *Jahr* | Year of survey date. |
| *Gattung* | Genus name. |
| *Art* | Species name. `cf.` indicates uncertain identification. |
| *Weibchen* | Female or *Bombus* queen. |
| *Arbeiterin* | Only for *Bombus*; worker or uncertain whether queen or worker. |
| *Männchen* | Male. |
| *Legit* | Name of collector/identifier. |
| *geprüft durch* | Name of collection corrector. |
| *usage notes* | Notes on specimens displaced from collection. |
| *Sammlung* | Left empty. |
| *ACU-Nummer* | Left empty. |
| *Species name* | Combination of genus and species name to allow cross-linking with lookup tables for Red List status. |
| *RLstatus* | Red List status according to Müller & Praz (2024). For species with `cf.`, species names were manually adjusted to enable cross-linking. |


#### DATAFILE-SPECIFIC INFORMATION: FILE mappingdata.csv
Each column name and description

| Column | Description |
|---------|-------------|
| *plot* | Plot number within site (1-8). |
| *site* | Site type reflecting river stretch condition: "focal" = revitalised, "control" = channelised. |
| *region* | Region name (Aire, Thièle, Scheulte, Schwarzbach) corresponding to the revitalised focal river. |
| *Xcoord* | X coordinate of plot in Swiss coordinate system LV95 / CH1903+. |
| *Ycoord* | Y coordinate of plot in Swiss coordinate system LV95 / CH1903+. |
| *Zcoord* | Elevation of plot. |
| *canton* | Swiss canton in which each region is located (Aire = Geneva GE, Thièle = Vaud VD, Scheulte = Jura JU, Schwarzbach = Bern BE). |
| *date* | Date of plot survey. |
| *visit* | Survey visit number (1-5). |
| *surveyID* | Code derived from site type ("F" = focal, "C" = control), region name (first two letters), canton abbreviation, visit number and plot number. |
| *observer* | Name abbreviation of observer (GE = Gregory Egloff). |
| *municipality* | Municipality in which site is located. |
| *bareground* | Approximation of the percentage of the plot consisting of exposed ground. Bareground was subdivided into sand, gravel, cobble, and stone cover. The sum of these subcategories equals bareground cover. |
| *vegcover* | Approximation of the percentage of the plot overgrown with vegetation. |
| *vegheight* | Median vegetation height within the plot, visually estimated and measured using a tape measure. |
| *herb* | Approximation of vegetation cover consisting of herbaceous plants. |
| *woody* | Approximation of vegetation cover consisting of shrubs and trees. |
| *sand* | Approximation of exposed sandy substrate (< 2 mm diameter). |
| *gravel* | Approximation of exposed gravel substrate (2-20 mm diameter). |
| *cobble* | Approximation of exposed cobbles (21-200 mm diameter). |
| *stone* | Approximation of exposed stones (> 200 mm diameter). |
| *wood* | Approximation of exposed deadwood cover. |
| *soil* | Approximation of exposed soil cover. |
| *flat* | Proportion of plot with slope < 30°. |
| *sloped* | Proportion of plot with slope 30-60°. |
| *steep* | Proportion of plot with slope > 60°. |
| *canopy* | Approximation of canopy cover directly above the plot. |
| *standingdeadwood* | Number of standing deadwood pieces ≥ 7 cm diameter. |
| *lyingdeadwood* | Number of fallen deadwood pieces ≥ 7 cm diameter. |
| *branchpile* | Number of branch accumulations within the plot. Only structures with minimum 1 m² base area and 30 cm height were considered. |
| *stonepile* | Number of stone accumulations within the plot. Only structures with minimum 1 m² base area and 30 cm height were considered. |
| *patchiness* | Index based on co-occurrence of floral resources, bareground nesting habitat, and structural heterogeneity. See Appendix C for details. |
| *comment* | Field survey comments on plot mapping. |
| *achillea-vicia* | Flowering plant genera recorded in each plot. All flowering plants were identified to genus level and assigned a relative abundance value from 1-5. Only *sum_genuses* was used in analyses. Recorded genera: achillea, aegopodium, agrimonia, alliaria, allium, anacamptis, anemone, angelica, anthriscus, anthyllis, arctium, artemisia, ajuga, barbarea, bellis, bunias, capsella, cardamine, calystegia, campanula, carex, centaurea, cerastium, chenopodium, cirsium, clinopodium, convolvulus, conyza, coronilla, cornus, corydalis, crataegus, crepis, daucus, dianthus, dipsacus, echium, euonymus, erigeron, erucastrum, epilobium, eupatorium, euphorbia, equisetum, eschscholzia, filipendula, fragaria, frangula, fraxinus, galeopsis, galium, geranium, geum, glechoma, globularia, heracleum, helianthemum, hippocrepis, hypericum, hypochaeris, impatiens, iris, jacobaea, knautia, lamium, lapsana, lathraea, lathyrus, leontodon, lepidium, leucanthemum, lonicera, lotus, ligustum, linaria, lysimachia, lythrum, malva, medicago, melilotus, mentha, muscari, myosotis, nasturtium, oenothera, onobrychis, orchis, origanum, ornihtogalum, papaver, pastinaca, persicaria, picris, pilosella, pimpinella, plantago, potentilla, primula, prunella, prunus, ranunculus, rapistrum, rhinanthus, rosa, rubus, rumex, sanguisorba, salix, salvia, saponaria, scabiosa, scilla, scrophularia, sedum, senecio, silene, solanum, sonchus, spinaea, stachy, taraxacum, thymus, torilis, tragopogon, trifolium, tussilago, valeriana, veronica, verbena, viburnum, and vicia. |
| *sum_genuses* | Total number of flowering plant genera recorded within a plot. |
| *comment4* | Field survey comments on floral surveys. |
| *temp* | Local temperature reported by MétéoSuisse at the start of the bee survey. |
| *wind* | Local wind conditions reported by MétéoSuisse at the start of the bee survey. |
| *cloud* | Approximation of the percentage of sky covered by clouds at the start of the bee survey. |
| *shade* | Approximation of the percentage of the plot in shade at the start of the bee survey. |
| *distwater* | Distance to the nearest body of water. |
| *timestart* | Bee survey start time. |
| *timestop* | Bee survey end time. |
| *comment2* | Field survey comments on bee surveys. |
| *bb1-bb11* | Count of individuals belonging to bumblebee morphospecies groups 1-11 observed during surveys and not collected. |
| *bbunID* | Count of bumblebees that could not be assigned to a morphospecies group and were not collected. |
| *xylocopa* | Count of *Xylocopa* sp. observed and not collected. |
| *fieldIDsum* | Total number of bees identified visually and not collected during the survey. |
| *sitebareground-siteviburnum* | Site-level equivalents of the plot-level habitat variables above, assessed across the entire 200 m river stretch. |
| *sitecomment* | Field survey comments on site mapping. |
| *siteacer-siteviburnum* | Tree and shrub genera assessed across the 200 m river stretch and assigned relative abundance values from 1-5. These variables were not used in analyses. Recorded genera: acer, cornus, crataegus, euonymus, frangula, fraxinus, ligustrum, lonicera, prunus, rosa, salix, sambucus, and viburnum. |

##### SHARING/ACCESS INFORMATION

1. Licence of reuse:

License information: CC BY 4.0

2. Special considerations regarding data reuse (if any):


3. If the data shared is of second use (ie, derived from data pre-existing the project), link to the primary data:


4. Recommended citation for the dataset: 


5. Data repository where the data is stored:


