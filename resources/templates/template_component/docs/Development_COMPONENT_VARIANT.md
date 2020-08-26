# Development lifesensor COMPONENT_VARIANT

This document describes the development process of the COMPONENT_VARIANT component.
From the paragraphs below the suggested design procedure can be derived.
But it is not a must follow. More important is a good documentation of each step.

Also important is the design revision number for PCBs, so that no one gets confused:
It consists of two numbers separated by a decimal dot, for example `0.1`.
The second number `1` is the minor. It is increased after a layout was released (i.e. a pcb was manufactured).
The first number `0` is the major. It is increased only if the schematic has been changed after the last release.
As the release number on the PCB must be adapted, increasing the major always requires also increasing the minor!
Both numbers are counting zero based, so the first released/manufactured prototype should have the revision `0.0`.



## Requirements and Constraints
This section describes the requirements and constraints for this component.
They might be derived from the objectives written in the README.md next to this file.



## Subcomponents
Explanation of how and why this component is split into subcomponents (With references to
the corresponding folders in the repo).
Ideally a diagram of all subcomponents is given, too.



## PCB COMPONENT_VARIANT_BOARDNAME Rev. 0
This section describes the design procedure of a single PCB for this component.
It should be repeated with all its subsections for every major revision of the PCB 
(i.e. when the schematic changed after a release).

### Schematics
This section should describe in detail how circuits where designed and how components 
where selected.
It also should highlight hints/constraints that will later be needed for the layout 
(For example when a high speed opamp needs the ground plane removed around it).

### Layout Rev. 0.1
This section should describe the layout decisions and confirm constraints from
the schematics or for the placement of certain components.

### Start-up of first prototypes Rev. 0.1
This section describes the start up procedure and findings of the first prototypes of this design revision.



