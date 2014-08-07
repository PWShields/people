People
======
Grails application 2.3.7

Experimenting with how to store information about people and organisations based on my experience with previous aggregation tools.

Looking at expanding to allow records to be added via this application and via ingest from XML formats such as EAC-CPF. Concentrating on People to begin with but will expand to include Organisations, Events and Places.  Also want to add drop and drag functionality at some point so that records for the same person from different contributors can be manually combined with an elegant interface.

An Identity is a person built from various records, the theory being there will be 1 true Identity for each person which aggregates information from one or more sources.

Decisions
=========

NAMES
These are tricky as each person can have multiple variations of their name and each variation can be displayed in different ways.
The alternatives were to split a name into nameparts or not. I decided to keep it simple and rely on good design to capture the
variety. I chose an anglo base system for field names, but added the Culture field to give us a way of accommodating the way differenet cultures 
treat names, note also my expanation of the field name choices in the javadoc.

Where we have fields that can contain multiple values, such as middle names or titles I chose a simple String type instead of 
a collection or custom object, again to keep it simple and because I couldn't make it work with collections in an elegant manner.
If this proves too simple a solution we may have to spend more time on pursueing the alternatives later.

Features to Add
===============
1. Spring Security
2. Drag and Drop
3. XML record ingest
4. A Person will consist of a name, existence details, biographical information, relations to other people and places, administrative details relating to this record and an Identity. These components need to be added.



