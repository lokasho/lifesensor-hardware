# check list
- [ ] this file is a copy of ./YYYY-MM-DD_checklist_pcb.md with YYYY-MM-DD replaced by todays date.
- [ ] All remaining open connections are accepted (For each connection explain why it is accepted in a list.)
- [ ] The board revision major is equal to the design revision of the schematics
- [ ] The board revision minor has been incremented compared to the last board release (last: ..., now: ...)
- [ ] The DRC report has been saved to ../manufacture/gerbers/COMPONENT_VARIANT_PCBNAME.drc
- [ ] All remaining error messages in the DRC report are followed by a line starting witht "Accepted: ... ", explaining why the error/warning can be ignored.
- [ ] this file is a copy of ./YYYY-MM-DD_checklist_pcb.md with YYYY-MM-DD replaced by todays date.
- [ ] the footprints have been archived to ../lib_footprint.pretty after the pcb has been edited the last time (FILE -> Archive Footprints -> Archive Footprints to Existing Library)

# change log
| date       | revision | author (github name) | description                  |
|:-----------|:---------|:---------------------|:-----------------------------|
| 2020-04-26 | 1        | lokash               | Created checklist            |
| 2020-04-27 | 2        | lokash               | Improved error report checks |