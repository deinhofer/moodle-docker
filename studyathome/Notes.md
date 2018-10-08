# Notes about moodle evaluation

Should be integrated in overall evaluation.

## Problems with moodle hub functionality

* The [moodle hub](https://docs.moodle.org/33/en/Hub_administration) functionality was removed from moodle core. There is still a plugin local_hub on github which works for moodle 3.3.
    * Setup of hub and site registration has/had several problems
        * Hub and site should run on ports 80, 443 only
        * Hub and site should not be on localhost (even not for testing, for being online of course it would not work) --> commented out requirement in source code. Set external IP for moodle instances.
        * Uses a bit outdated technology (xml-rpc, security??)
        * registration requires usage of a mailing list (e.g. sendy): This is probably to easily inform involved contacts (e-mail adresses of different site administrators)
        * Finally it still did not work due to "wrong token error". --> Maybe this is because of previous tries.
    * Generally the question is if the hub functionality is really needed. Maybe a simple listing of links and some additional information would be sufficient.

## Simplest possible workflow of listing

The simplest solution would be to only refer to a public course by a link. The teacher or somebody of studyathome internationally edits the listing and adds the course including some meta information (tags, keywords, uni name, topic, ECTS, moderated|MOOC, Time|always, .... But nothing is automated. Either use static site generation or simple db.
--> Do we need account synchronization? (Short term: **no**, Long term: **yes**) Grade synchronization?? (Short term: **no**, Long term: **yes**) Must teachers be allowed to publish their course themselves from within moodle? (probably **not**)

1. Add course to central listing (e.g. by adding file+static site generator+git repo? or by adding entry via form to DB)
2. Search in listing
3. Go to course link
4. Enrolment
    a. Manual: Student sends e-mail to contact (Admin of partner)
5. Student participates in course
6. Student gets grade in shared course
7. Local lecturer requests grade of student by name/id (eduroam?) or also has account at partner uni and access to the course.
8. Local lecturer adds grad to local course

### Enrolement options

1. Manually
2. Self-enrolment turned on
3. Account connecting allowed: OAuth (e.g. of github, facebook, eduroam)

#### Eduroam

* International eduroam: https://www.eduroam.org/
* Austrian Eduroam: https://www.aco.net/eduroam.html
* OCAD: https://www.canarie.ca/identity/institutions/
* CSULB: https://www.incommon.org/participants/
* CVUT Praha?: https://www.eduroam.cz/cs/pripojene_organizace
* Uni Skopje?: http://www.eduroam.mk/
* WIT: http://www.eduroam.ie/
* Technikum Wien?: There is local wifi hotspot but no registration of the institution??

### Grade synchronization

1. Manually
2. Peer2Peer synchronization (LTI,...)

### Course search

* Search for course by keywords, name, topics, number of allowed students,...
* Get permalink for search (filter)

## Virtual project teams

* Listing of project ideas (filterable)
* Students should be able to declare interest (add contact)?
* Students should be able to assign themselves to topic.
* Lecturers should be able to moderate/edit topics. Decide assignment
* Repository for project outcomes (manual, automated)
* Common virtual presentation? Blog about their solution?

## Data privacy

* Define data sets
* Agreement between partners about data privacy handling.

## Cooperation agreement

* Set up agreement between partners
* At least long term goal: During evaluation phase, current setup should be sufficient, but as soosn as the continuation of the cooperation is decided, this should be signed by partners.

## Personas / Epics / Requirements

* Define personas (stakeholders).
* Define epics / user stories.

## Workflows / Processes (activity diagrams?)

Define selected workflows in more details e.g. using activity diagrams,...

## Next partner meeting

**Date:** 22.10.-24.10., 29.-31.10, 6.11. 17:30h, 7.11. 16h

* Objectives:
  * Organisation
  * get input (requirements)
  * Inform about technical evaluations
* Agenda
  * Data repositories, accounts
  * Discuss about concept documents (focus on requirements, epics, workflows) --> Write concept unitl 16.10.
  * Prototype

  ## iMoox
  https://imoox.at

  ## moodle TW
  Ask about doc about IT, administration: Stefan Weber