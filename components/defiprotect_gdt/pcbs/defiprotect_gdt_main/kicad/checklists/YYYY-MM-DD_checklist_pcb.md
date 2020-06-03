# check list
- [ ] this file is a copy of ./YYYY-MM-DD_checklist_pcb.md with YYYY-MM-DD replaced by todays date.
- [ ] Updating the PCB from the schematic does not introduce changes. If errors/warnings can be ignored, list them here with a reason why.
- [ ] The DRC report has been saved to ../manufacture/gerbers/defiprotect_gdt_main.rpt
- [ ] All remaining unconnected items in the DRC report are followed by a line starting witht "Accepted: ... ", explaining why the connection can be ignored.
- [ ] All remaining error messages in the DRC report are followed by a line starting witht "Accepted: ... ", explaining why the error/warning can be ignored.
- [ ] The full board name equals the .kicad_pcb file name without the extension and is visibly placed on one outer copper layer.
- [ ] The board revision is visibly placed on one outer copper layer.
- [ ] The board revision major is equal to the design revision of the schematics
- [ ] The board revision minor has been incremented compared to the last board release or is one if this is the first release (last: , now: )
- [ ] The footprints have been archived to ../lib_footprint.pretty after the pcb has been edited the last time (FILE -> Archive Footprints -> Archive Footprints to Existing Library. Then choose lib_footprint)
- [ ] The drill and drill map files have been saved to ../manufacture/gerbers
- [ ] The gerber files of all necessary layers have been plotted to ../manufacture/gerbers
- [ ] The board has been exported as .svg file to ../manufacture/images with the following settings:
    - select all layers that are exported es gerber files
    - Print Mode: Color
    - svg page size: "Board area only"
    - Pagination: All layers in a single file

# change log
| date       | revision | author (github name) | description                  |
|:-----------|:---------|:---------------------|:-----------------------------|
| 2020-04-26 | 1        | lokash               | Created checklist            |
| 2020-04-27 | 2        | lokash               | Improved error report checks |
| 2020-04-27 | 3        | lokash               | Export layout as svg         |
