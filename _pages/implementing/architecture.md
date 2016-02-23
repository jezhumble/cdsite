---
title: Architecture
---

In the context of enterprise architecture there are typically multiple attributes we are concerned about, for example availability, security, performance, security, usability and so forth. In continuous delivery, we introduce two new architectural attributes: testability and deployability.

In a testable architecture, we design our software such that most defects can (in principle, at least) be discovered by developers by running automated tests using their workstations. We shouldn't need to depend on complex, integrated environments in order to do the majority of our acceptance and regression testing.

In a deployable architecture, deployments of a particular product or service can be performed independently and in a fully automated fashion, without the need for significant levels of orchestration. Deployable systems can typically be upgraded or reconfigured with zero or minimal downtime.

Many enterprises do not have services that are designed to be testable or deployable. Most real testing requires the use of complex, integrated environments, and deployments are "big bang" events that require that many services are released at the same time due to runtime dependencies between them. These "big bang" deployments require many teams to work together in a carefully orchestrated fashion with many hand-offs, and dependencies between hundreds or thousands of tasks. Such deployments typically take many hours or even days, and require scheduling significant downtime.

Designing for testability and deployability starts with ensuring our products and services are composed of loosely-coupled, well-encapsulated components or modules (in the context of object-oriented programming, such systems follow the principles of [SOLID design](https://en.wikipedia.org/wiki/SOLID_(object-oriented_design)). 

We can define a well-designed modular architecture as one in which it is possible to test or deploy a single component or service on its own, with any dependencies replaced by a suitable [test double](http://martinfowler.com/bliki/TestDouble.html), which could be in the form of a virtual machine, a stub, or a mock. Each component or service should be deployable in a fully automated fashion on developer workstations, test environments, or in production. In a well-designed architecture, it is possible to get a high level of confidence the component is operating properly when deployed in this fashion.

In order to aid the independent deployment of components, we will also invest in creating versioned APIs which have backwards compatibility. Ensuring backwards compatibility for APIs adds complexity to our systems, but the flexibility we gain in terms of ease of deployment will pay this off many times over.

Any true service-oriented architecture _should_ have these properties---but unfortunately many do not. However the microservices movement has explicitly prioritized these architectural properties.

### Evolutionary architecture ###

Of course, many organizations are living in a world where services are distinctly hard to test and deploy. Rather than re-architecting everything, we recommend an iterative approach to improving the design of enterprise system, sometimes known as [evolutionary architecture](http://www.ibm.com/developerworks/library/j-eaed1/). In the evolutionary architecture paradigm, we accept that there is no such thing as a perfect end-state to be achieved. Rather, as technology and markets continue to change, so will the needs served by our architecture and the solutions available to satisfy those needs.

<img src="/images/test-quadrant.png" />
