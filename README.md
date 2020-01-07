# PlantUMLDiagrams

This project is able to create two kinds of uml like diagrams from the dynamic state of the image.

- Object diagrams. You pass a root from which to investigate, 
  and a diagram is created based on reachability from that root, but *filtered* by a custom filter.
- Sequence diagrams. Based on a block, the block is run and based on the call tally, a sequence diagram is created. 
  The tally is filtered to allow you to focus on certain aspects of the call sequence.
  
The two diagrams are ment as a tool for investigating code and object structures 
when you as developer is trying to understand the undocumented architecture of legacy code.

You can load the tools using:

```smalltalk
Metacello new
   baseline: 'PlantUMLDiagrams';
   repository: 'github://kasperosterbye/PlantUMLDiagrams';
   load.
```
There are examples in the two classes `ObjDiaModel` and `SeqPlantUMLFromTally`.

### Filters
#### Object diagrams
There are two filters `buildFilter` and `presentationFilter`. The build filter is used to delimit the transitive closure from the root. The filtering algorithms are in `ObjDiaFilter`. They have some hardwireing, and then *inclusion* filters which tells what to include, and some *exclusion* filters applied after the inclusive. The *category* filtes work by comparing the category of the object (`object class category`) to the prefix given to `include/excludeCategory:`. This allows you to include a broad category, and then remove specific sub-categories.

#### Sequence Diagrams
The filtering mechanism is not so generic here. But you can give a list of category prefixes to include, and specific selectors not to include.

### in-word image or webbrowser svg

It is possible to let the tools either produce an image which can be viewed in-image, 
or a svg file which is shown in an external webbrowser. The svg has a few advantages

- the images do not fill up the image
- they load faster
- they are not restricted to 2000x2000 pixels
- they are zoomable

The both tools use the <https://plantuml.com> as the background rendering tool. 
In particular it used a bridge from smalltalk to plantuml originally written by 
C. Furmann (<https://github.com/fuhrmanator/PlantUMLPharoGizmo>).

