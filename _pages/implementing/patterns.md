---
title: Patterns
---

Linda Rising [defines](http://www.informit.com/articles/article.aspx?p=459617) a pattern as "a named strategy for solving a recurring problem". The concept of patterns comes from the work of architect Christopher Alexander, who [observes](http://www.amazon.com/dp/0195019199?tag=contindelive-20) "Each pattern describes a problem that occurs over and over again in our environment and then describes the core of the solution to that problem in such a way that you can use this solution a million times over without ever doing it the same way twice."

### The Deployment Pipeline ###

The key pattern introduced in continuous delivery is the _deployment pipeline_. This pattern emerged from several ThoughtWorks projects where we were struggling with complex, fragile, painful manual processes for preparing testing and production environments and deploying builds to them. We'd already worked to automate a significant amount of the regression and acceptance testing, but it was taking weeks to get builds to integrated environments for full regression testing, and we were spending whole weekends performing deployments to production.

We wanted to industrialize the process of taking changes from version control to production. Our goal was to make deployment to any environment a fully automated, scripted process that could be performed at the push of a button. We wanted to be able to configure testing and production environments purely from configuration files stored in version control. The apparatus we used to perform these tasks (usually in the form of a bunch of scripts in bash or ruby) became known as _deployment pipelines_, which Dan North, Chris Read and I wrote up in [a paper presented at the Agile 2006 conference](http://continuousdelivery.com/wp-content/uploads/2011/04/deployment_production_line.pdf).

With the advent of infrastructure as code, it has became possible to use deployment pipelines to create a fully automated process for taking all kinds of changes---including database and infrastructure changes---from version control into production in a controlled, repeatable and auditable way. This pattern [has also been successfully applied](/evidence-case-studies/) in the context of user-installed software (including apps), firmware, and mainframes. In [The Practice of Cloud System Administration](http://www.amazon.com/dp/032194318X?tag=contindelive-20) the resulting system is known as a _software delivery platform_.

Deployment pipelines are described at length in Chapter 5 of the [Continuous Delivery](http://amzn.to/1QBJM7k) book, which is [available for free](http://www.informit.com/articles/article.aspx?p=1621865). I introduce them on this site in the context of [continuous testing](/foundations/test-automation/).

Deployment pipelines tie together configuration management, continuous integration and test and deployment automation in a holistic, powerful way that works to improve software quality, increase stability, and reduce the time and cost required to make incremental changes to software, whatever domain you're operating in.

However in the context of web-based systems there are a number of patterns for infrastructure architecture that can be applied to further reduce the risk of deployments. Michael Nygard also describes a number of important software design patterns which are instrumental in creating resilient large-scale systems in his book [Release It!](http://www.amazon.com/dp/0978739213?tag=contindelive-20)

### Patterns for Low-Risk Releases ###

The four key principles that enable low-risk releases (along with many of the following patterns) are described in my article [Four Principles of Low-Risk Software Releases](http://www.informit.com/articles/article.aspx?p=1833567). The principles are:

1. **Low-risk Releases are Incremental**. Our goal is to [architect](/implementing/architecture/) our systems such that we can release individual changes (including [database changes](https://web.archive.org/web/20130917140352/http://exortech.com/blog/2009/02/01/weekly-release-blog-11-zero-downtime-database-deployment)) independently, rather than having to orchestrate big-bang releases due to tight coupling between multiple different systems. This typically requires building versioned APIs and implementing patterns such as [circuit breaker](http://martinfowler.com/bliki/CircuitBreaker.html).
2. **Decouple Deployment and Release**. 

#### Blue-Green Deployment ####

#### Canary Releasing ####

#### Dark Launching ####
