# Builder

Is a creational pattern.

Intent: Simplify the construction of an object.

We'll use this when we want to be able to create multiple representations of the object that is constructed.

High level: We'll create a Builder class to convert the object. Subclasses of the Builder class and convert to different formats.

Four vocab words:

* **builder** - is abstract object for converting
* **concreate builder** - subclass of builder
* **director** - the object that is being converted
* **products** - the new converted objects
