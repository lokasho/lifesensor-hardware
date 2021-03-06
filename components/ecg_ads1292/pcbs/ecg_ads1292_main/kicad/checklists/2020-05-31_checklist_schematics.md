    # hints
1. All paths are refered to the kicad project directory.

# check list

- [x] this file is a copy of ./YYYY-MM-DD_checklist_schematics.md with YYYY-MM-DD replaced by todays date.
- [x] All subschematic names do not contain blank spaces (both sheet name and subschematic file name)
- [x] The date of all schematic pages info is the the date of the last schematic edit
- [x] The ERC report has been saved to ../manufacture/schematics/ecg_ads1292_main.erc
- [x] All remaining error messages in the ERC report are followed by a line starting with "Accepted: ... ", explaining why the error/warning can be ignored.
- [x] The design revision has been incremented compared to the last release or is 0 if at prototyping stage (last: -, now: 0)
- [ ] The library cache ecg_ads1292_main-cache.lib has been copied to lib_schematics/ecg_ads1292_main.lib after the schematic was saved the last time.
      **Note: This step was made according to https://hackaday.com/2017/05/18/kicad-best-practises-library-management/. As it is outdated, the method described there is no longer applicable**
- [x] The schematics have been plotted to ../manufacure/schmeatics/ecg_ads1292_main.pdf after the last edit.

# change log

| date       | revision | author (github name) | description                                |
|:-----------|:---------|:---------------------|:-------------------------------------------|
| 2020-04-26 | 1        | lokash               | Created checklist                          |
| 2020-04-27 | 2        | lokash               | Improve error report checks and add hints  |
| 2020-04-28 | 3        | lokash               | Improved schematics plotted check          |