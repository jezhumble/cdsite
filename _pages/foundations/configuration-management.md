---
title: Configuration Management
---

Automation plays a vital role in ensuring we can release software
repeatably and reliably. One key goal is to take repetitive manual processes like
build, deployment, regression testing and infrastructure provisioning,
and automate them. In order to achieve this, we need to version control everything
required to perform these processes, including source code, test
and deployment scripts, infrastructure and application configuration
information, and the many libraries and packages we depend upon. We
also want to make it straightforward to query the current&mdash;and historical&mdash;state of
our environments.

We have two overriding goals:

* **Reproducibility**: We should be able to provision any environment in
  a fully automated fashion, and know that any new environment
  reproduced from the same configuration is identical.
* **Traceability**: We should be able to pick any environment and be
able to determine quickly and precisely the versions of every dependency
used to create that environment. We also want to to be able to compare
previous versions of an environment and see what has changed between them.

These capabilities give us several very important benefits:

* **Disaster recovery**: When something goes wrong with one of our
  environments, for example a hardware failure or a security breach, we need
  to be able to reproduce that environment in a deterministic amount
  of time in order to be able to restore service.
* **Auditability**: In order to demonstrate the integrity of the
  delivery process, we need to be able to show the path backwards from
  every deployment to the elements it came from, including their
  version. Comprehensive configuration management, combined with
  [deployment pipelines](/implementing/patterns/), enable this. 
* **Higher quality**: The software delivery process is often
  subject to long delays waiting for development, testing and
  production environments to be prepared. When this can be done
  automatically from version control, we can get feedback on the
  impact of our changes much more rapidly, enabling us to build
  quality in to our software.
* **Capacity management**: When we want to add more capacity to our
  environments, the ability to create new reproductions of existing
  servers is essential. This capability enables the horizontal scaling
  of modern cloud-based distributed systems.
* **Response to defects**: When we discover a critical defect, or a
  vulnerability in some component of our system, we want to get a
  new version of our software released as quickly as possible. Many
  organizations have an emergency process for this type of change
  which goes faster by bypassing some of the testing and
  auditing. This presents an especially serious dilemma in
  safety-critical systems. Our goal should be to be able to use our
  normal release process for emergency fixes&mdash;which is precisely
  what continuous delivery enables, on the basis of comprehensive
  configuration management.

As environments become more complex and heterogeneous, it becomes
progressively harder to achieve these goals. Achieving perfect reproducibility and
traceability to the last byte for a complex enterprise system is
impossible (apart from anything else, every real system has state). Thus a key part of
configuration management is working to simplify our
[architecture](/implementing/architecture), environments and processes
to reduce the investment required to achieve the desired benefits.

When working to achieve the benefits, we should always start by
defining in measurable terms the goals we want to achieve. This allows
us to determine which of the possible paths to reach our goal are
likely to be the best, and to change direction or reassess our goals if we discover our
approach is going to be too expensive or take too long.

### Resources ###

* Kief Morris' entry on
  [ImmutableServer](http://martinfowler.com/bliki/ImmutableServer.html)
  in Martin Fowler's bliki is a good place to start, along with Kief's
  [forthcoming book](http://shop.oreilly.com/product/0636920039297.do).
* Tom Limoncelli _et al_'s encyclopedic book [_The Practice of Cloud System Administration: Designing and Operating Large Distributed Systems, Volume 2_](http://www.amazon.com/dp/032194318X?tag=contindelive-20) 
* [Pedro Canahuati on scaling operations at Facebook](http://www.infoq.com/presentations/scaling-operations-facebook).

### FAQ ###

*What tools should I use?*

Tool choice is a complex topic, and in many cases (unless you use
something wholly unsuitable) tool choice is not the critical factor in
success. I recommend doing some research to whittle down a shortlist
based on what technologies your team is familiar with, what has the
widest level of usage, and what is
under active development and support, and then setting a short-term goal and trying
to achieve it using each of the tools on your shortlist.

*How do containers / the cloud / virtualization technologies affect
this topic?*

The most important thing is that every new advance makes it
easier and cheaper to achieve the benefits described. However in themselves,
technologies such as containerization are not a silver bullet. For
example, it's not uncommon to see developers create "snowflake"
containers whose contents are hard to audit or reproduce. We still
need to apply the discipline of comprehensive use of version control
and the [deployment pipeline](/implementing/patterns/) in order to
achieve our goals.
