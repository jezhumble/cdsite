---
title: Architecture
---

In the context of enterprise architecture, there are several attributes we are concerned about, such as availability, security, performance, security, usability and so forth. In continuous delivery, we introduce two new key attributes: testability and deployability.

In a testable architecture, most defects can (in principle, at least) be discovered by developers by running automated tests using their workstations. We shouldn't need to depend on complex, integrated environments in order to do the majority of our acceptance and performance testing.

In a deployable architecture, deployments of a particular product or service can be performed independently and in a fully automated fashion, without the need for significant levels of orchestration. Deployable systems can typically be upgraded or reconfigured with zero or minimal downtime.

For many enterprises this is not the case---most real testing requires the use of complex, integrated environments, and deployments are "big bang" events that require that many services are released at the same time due to dependencies between them. These "big bang" deployments require many teams to work together in a carefully orchestrated fashion with many hand-offs and dependencies between hundreds or thousands of tasks. Such deployments typically take many hours or even days, and require scheduling significant downtime.

Designing for testability and deployability starts with ensuring our products and services are composed of loosely-coupled, well-encapsulated components or modules. In the context of object-oriented programming, such systems follow the principles of SOLID design---that is, 
