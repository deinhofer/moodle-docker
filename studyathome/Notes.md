# Notes about moodle evaluation

Should be integrated in overall evaluation.

## Problems with moodle hub functionality

* The moodle hub functionality was removed from moodle core. There still a plugin local_hub on github which works for moodle 3.3.
    * Setup of hub and site registration has/had several problems
        * Hub and site should run on ports 80, 443 only
        * Hub and site should not be on localhost (even not for testing, for being online of course it would not work) --> commented out requirement in source code. Set external IP for moodle instances.
        * Uses a bit outdated technology (xml-rpc, security??)
        * registration requires usage of a mailing list (e.g. sendy): This is probably to easily inform involved contacts (e-mail adresses of different site administrators)
        * Finally it still did not work due to "wrong token error". --> Maybe this is because of previous tries.
    * Generally the question is if the hub functionality is really needed. Maybe a simple listing of links and some additional information would be sufficient.

## Simplest possible workflow of listing

The simplest solution would be to only refer to a public course by a link. The teacher or somebody of studyathome internationally edits the listing and adds the course including some meta information (tags, keywords, uni name, topic, ECTS, moderated|MOOC, Time|always, .... But nothing is automated. Either use static site generation or simple db.
--> Do we need account synchronization? Grad synchronization?? Must teachers be allowed to publish their course themselves?

1. Add course to central listing (e.g. by adding file+static site generator+git repo? or by adding entry via form to DB)
2. Search in listing
3. Go to course link
4. Enrolment
    a. Manual: Send e-mail to contact (Admin of partner)
5. Student participates in course
6. Student gets grade in shared course
7. Local lecturer requests grade of student by name/id or also has account at partner uni and access to the course.
8. Local lecturer adds grad to local course

### Enrolement options

1. Manually
2. Self-enrolment turned on
3. Account connecting allowed: OAuth (e.g. of github, facebook, eduroom)

### Grad synchronization

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
* Common virtual presentation?
