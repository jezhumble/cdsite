---
permalink: /
title: What is Continuous Delivery?
---

Continuous Delivery is the ability to get changes of all
types---including new features, configuration changes, bug
fixes and experiments---into production, or into the hands of users, _safely_ and
_quickly_ in a _sustainable_ way.

Our goal is to make deployments&mdash;whether of a large-scale
distributed system, a complex production environment, an embedded system, or
an app&mdash;predictable, routine affairs that can be performed
on demand.

We achieve all this by ensuring our code is _always_ in a deployable state,
even in the face of teams of thousands of developers making changes on
a daily basis. We thus completely eliminate the integration, testing and
hardening phases that traditionally followed "dev complete", as well
as code freezes.

### Why continuous delivery?

It is often assumed that if we want to deploy software more
frequently, we must accept lower levels of stability and reliability
in our systems. In fact, [peer-reviewed research](/evidence-case-studies/#research) shows that this is not
the case---high performance teams consistently deliver services faster
_and_ more reliably than their low performing competition. This is
true even in highly regulated domains such as [financial services](https://www.youtube.com/watch?v=eMS97X5ZTGc) and
[government](https://www.youtube.com/watch?v=QwHVlJtqhaI). This capability provides an incredible competitive advantage for
organizations that are willing to invest the effort to pursue it. 

The practices at the heart of continuous delivery help us achieve
several important benefits:

* __Low risk releases__. The primary goal of continuous
delivery is to make software deployments painless, low-risk events
that can be performed at any time, on demand. By applying [patterns](/implementing/patterns/) such as
[blue-green deployments](http://martinfowler.com/bliki/BlueGreenDeployment.html) it is relatively straightforward to achieve
zero-downtime deployments that are undetectable to users.

* __Faster time to market__. It's not uncommon for the integration
  and test/fix phase of the traditional phased software delivery lifecycle to
  consume weeks or even months. When teams work together to automate
  the build and deployment,  environment  provisioning, and regression
  testing processes, developers can incorporate integration and
  regression testing into their daily work and completely remove
  these phases. We also avoid the large amounts of re-work that plague
  the phased approach.

* __Higher quality__. When developers have automated tools that
  discover regressions within minutes, teams are freed to focus their
  effort on user research and higher level testing activities such as exploratory
  testing, usability testing, and performance and security testing. By
  building a [deployment pipeline](/foundations/test-automation/), these activities can be performed
  continuously throughout the delivery process, ensuring quality is
  built in to products and services from the beginning.

* __Lower costs__. Any successful software product or service will
  evolve significantly over the course of its lifetime. By investing
in build, test, deployment and environment automation, we
  substantially reduce the cost of making and delivering incremental
  changes to software by eliminating many of the fixed costs
  associated with the release process. 
  
* __Better products__. Continuous delivery makes it economic to work
  in small batches. This means we can get feedback from users
  throughout the delivery lifecycle based on working
  software. Techniques such as [A/B testing](http://www.infoq.com/presentations/controlled-experiments) enable us to take a
  [hypothesis-driven approach to product development](https://www.thoughtworks.com/insights/blog/how-implement-hypothesis-driven-development) whereby we can
  test ideas with users before building out whole features. This
  means we can avoid the [2/3 of features we build that deliver zero or
  negative value](http://stanford.io/130uW6X) to our businesses.

* __Happier teams__. [Peer-reviewed research](/evidence-case-studies/#research) has shown continuous
  delivery makes releases less painful and reduces team
  burnout. Furthermore, when we release more frequently, software
  delivery teams can engage more actively with users, learn which
  ideas work and which don't, and see first-hand the outcomes of the
  work they have done. By removing the low-value painful activities
  associated with software delivery, we can focus on what we care
  about most---continuously delighting our users.

If this sounds too good to be true, bear in mind: continuous delivery is not
magic. It's about continuous, daily improvement---the constant discipline of
pursuing higher performance by following the heuristic "if it hurts,
do it more often, and bring the pain forward."
