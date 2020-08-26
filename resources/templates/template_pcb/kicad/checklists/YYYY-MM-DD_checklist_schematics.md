# hints
1. All paths are refered to the kicad project directory.

# check list

- [ ] this file is a copy of ./YYYY-MM-DD_checklist_schematics.md with YYYY-MM-DD replaced by todays date.
- [ ] No subschematic name contains blank spaces (both sheet name and subschematic file name)
- [ ] the date of all schematic pages info is the the date of the last schematic edit
- [ ] the command `python ../../../../../resources/scripts/archive_symbols.py COMPONENT_VARIANT_PCBNAME.pro` has been run to move all schematic symbols to the local library
- [ ] The design revision has been incremented compared to the last release (last: , now: )
- [ ] The ERC report has been saved to ../manufacture/schematics/COMPONENT_VARIANT_PCBNAME.erc
- [ ] All remaining error messages in the ERC report are followed by a line starting with "Accepted: ... ", explaining why the error/warning can be ignored.
- [ ] The schematics have been plotted into ../manufacture/schematics/COMPONENT_VARIANT_PCBNAME.pdf after the last edit.


# change log

| date       | revision | author (github name) | description                                |
|:-----------|:---------|:---------------------|:-------------------------------------------|
| 2020-04-26 | 1        | lokash               | Created checklist                          |
| 2020-04-27 | 2        | lokash               | Improved error report checks and add hints |
| 2020-04-28 | 3        | lokash               | Improved schematics plotted check          |
| 2020-04-29 | 4        | lokash               | Fixed project name templates               |
| 2020-08-25 | 5        | lokash               | include experiences from ecg_ads1292       |