---
title: Architecture
---

In the context of enterprise architecture there are typically multiple attributes we are concerned about, for example availability, security, performance, security, usability and so forth. In continuous delivery, we introduce two new architectural attributes: testability and deployability.

In a testable architecture, we design our software such that most defects can (in principle, at least) be discovered by developers by running automated tests on their workstations. We shouldn't need to depend on complex, integrated environments in order to do the majority of our acceptance and regression testing.

In a deployable architecture, deployments of a particular product or service can be performed independently and in a fully automated fashion, without the need for significant levels of orchestration. Deployable systems can typically be upgraded or reconfigured with zero or minimal downtime.

Where testability and deployability are not prioritized, we find that much testing requires the use of complex, integrated environments, and deployments are "big bang" events that require that many services are released at the same time due to complex interdependencies. These "big bang" deployments require many teams to work together in a carefully orchestrated fashion with many hand-offs, and dependencies between hundreds or thousands of tasks. Such deployments typically take many hours or even days, and require scheduling significant downtime.

Designing for testability and deployability starts with ensuring our products and services are composed of loosely-coupled, well-encapsulated components or modules (in the context of object-oriented programming, such systems follow the principles of [SOLID design](https://en.wikipedia.org/wiki/SOLID_(object-oriented_design))). 

We can define a well-designed modular architecture as one in which it is possible to test or deploy a single component or service on its own, with any dependencies replaced by a suitable [test double](http://martinfowler.com/bliki/TestDouble.html), which could be in the form of a virtual machine, a stub, or a mock. Each component or service should be deployable in a fully automated fashion on developer workstations, test environments, or in production. In a well-designed architecture, it is possible to get a high level of confidence the component is operating properly when deployed in this fashion.

In order to aid the independent deployment of components, we will also invest in creating versioned APIs which have backwards compatibility. Ensuring backwards compatibility for APIs adds complexity to our systems, but the flexibility we gain in terms of ease of deployment will pay this off many times over.

Any true service-oriented architecture _should_ have these properties---but unfortunately many do not. However the microservices movement has explicitly prioritized these architectural properties.

### Evolutionary architecture ###

Of course, many organizations are living in a world where services are distinctly hard to test and deploy. Rather than re-architecting everything, we recommend an iterative approach to improving the design of enterprise system, sometimes known as [evolutionary architecture](http://www.ibm.com/developerworks/library/j-eaed1/). In the evolutionary architecture paradigm, we accept that [successful products and services will require re-architecting](http://www.ustream.tv/recorded/61479577) during their lifecycle due to the changing requirements placed on them.

One pattern that is particularly valuable in this context is the [strangler application](http://www.martinfowler.com/bliki/StranglerApplication.html). In this pattern, we iteratively replace a monolithic architecture with a more componentized one by ensuring that new work is done following the principles of a service-oriented architecture, while accepting that the new architecture may well delegate to the system it is replacing. Over time, more and more functionality will be performed in the new architecture, and the old system being replaced is "strangled".

<img src="/images/strangler.png" />

### Resources ###

* A 30m talk in which I give an overview of [architecting for continuous delivery](https://www.youtube.com/watch?v=_wnd-eyPoMo).
* Paul Hammant provides a series of [strangulation case studies](http://paulhammant.com/2013/07/14/legacy-application-strangulation-case-studies/).
* An episode of software engineering radio in which Rebecca Parsons discusses [evolutionary architecture](http://www.se-radio.net/2015/08/se-radio-episode-236-rebecca-parsons-on-evolutionary-architecture/).
* Another technique for incremental architectural change while working on trunk: [branch by abstraction](/2011/05/make-large-scale-changes-incrementally-with-branch-by-abstraction/)
* Sam Newman's canonical book on [microservices](http://www.amazon.com/dp/1491950358?tag=contindelive-20).
