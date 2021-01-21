# polyglot-emf

> Making the *Eclipse Modeling Framework* (**EMF**) polyglot.


## Overview

The Eclipse Modeling Framework (although it'd be equally valid to call it the "Ed Merks Framework") is an Eclipse project (written in Java) that provides lower-level capabilities and facilities that help with implementing modeling languages, environments, and tools.

EMF's main capabilities/facilities are:

1. _A runtime for the JVM to manage models in-memory_.
	Objects in any EMF model are instantiations of `EObject`s, meta typed as instantiations of `EClass`es.

2. _A serialization to, and deserialization from [XML Metadata Interchange](https://en.wikipedia.org/wiki/XML_Metadata_Interchange) (**XMI**)_.

3. _A meta meta model, called **Ecore**_.
	Ecore is described by Ed Merks as "[...] the de facto reference implementation of [OMG](https://en.wikipedia.org/wiki/Object_Management_Group)'s [https://en.wikipedia.org/wiki/Meta-Object_Facility](EMOF) (Essential Meta-Object Facility)".
	Basically, Ecore is precisely enough to meta model "anything".

4. _A generator from Ecore to Java classes sub typing `EObject`_.

Some features are:

* A Ecore model (which specifies a meta model) is itself an EMF model, so items 3 and 4 re-use items 1 and 2.
* An EMF model can be either "dynamic" (using `DynamicEObjectImpl`) or "static" (meaning that each concept/`EClass` is reified through an implementing sub type of `EObject`).


## Motivation

EMF is a JVM-only framework.
This is a pity because EMF works extremely well (as proven by it being used as "middleware" in numerous modeling tools and environments), and is the _only_ reference implementation of EMOF that I know of.

This Git repository is intended to collaborate on proposals to make EMF polyglot.
It'd be very useful to be able to use capabilities/faciliteis from the list above in, and across various languages.
This has been done to some degree for JavaScript and Python, but:

* It's unclear to _which_ extent because of a lack of a specification for EMF other than its implementation and the documentation for that.
* EMF has an internal test suite, but this is coupled to Java/the JVM pretty tightly.


## Links

For the EMF project itself:

* [Entrypoint for the EMF project](https://www.eclipse.org/modeling/emf/).
* [Entrypoint for the official high-level documentation](https://www.eclipse.org/modeling/emf/docs/).
* [Git repository](https://github.com/eclipse/emf).
* [Wikipedia entry](https://en.wikipedia.org/wiki/Eclipse_Modeling_Framework).

For relevant OMG standards:

* [EMOF = Essential Meta-Object Facility - see chapter 12](https://www.omg.org/spec/MOF/2.4.1/PDF).
* [XMI = XML Metadata Interchange](https://www.omg.org/spec/XMI).

For re-implementations or "inspired by" implementations in other languages:

* [ecore.js](https://emfjson.github.io/projects/ecorejs/latest/) (JavaScript).
* [PyEcore](https://github.com/pyecore) (Python).

Various:

* [Thread on the _Strumenta Community_ that spawned this](https://d.strumenta.community/t/polyglot-modeling-metamodeling-formats-and-frameworks/1071).

