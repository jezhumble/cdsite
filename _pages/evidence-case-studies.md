---
title: Evidence and case studies
---

Continuous Delivery is mainly associated with the DevOps movement and
the practice of continuous deployment. There are many case studies
that fall into this sweet spot, from John Allspaw and Paul Hammond's
canonical 2009 Velocity talk [10+ Deploys Per Day: Dev and Ops
Cooperation at Flickr](https://www.youtube.com/watch?v=LdOe18KhtT4) to Ken Exner's talk on [transforming
software development at Amazon](https://www.youtube.com/watch?v=YCrhemssYuI). If you want to see more
traditional companies talk about their journey, check out the videos
from the DevOps Enterprise Summit [2014](https://www.youtube.com/user/DOES2014) and [2015](https://www.youtube.com/channel/UCkyYEVVmT9vQ4yPBR4ciFUA/feed).
There are also a number of case studies presented in the various sections of
this website.

Steve Smith and Matthew Skelton have published an excellent and comprehensive set of Continuous
Delivery and DevOps experience reports in a book entitled [Build
Quality In](https://leanpub.com/buildqualityin). 70% of profits go to Code Club, a not-for-profit
organisation that runs a UK-wide network of free volunteer-led
after-school coding clubs for children aged 9-11, so there's no excuse
not to buy it.

I also recorded a number of interviews with experts in this space,
including Eric Ries, John Allspaw, Elisabeth Hendrickson, Jesse
Robbins and Gary Gruver,
published by Pearson as [Continuous Delivery Expert
Interviews](http://bit.ly/jez-cd-interviews). All royalties go to Black Girls Code.

It's important to note that while continuous delivery has been widely
adopted by web companies, the techniques described on this site can be used in all sorts of
domains---essentially, anywhere where your software development
capability is considered a [strategic
asset](http://continuousdelivery.com/2011/01/strategic-vs-utility-services/). Thus I want to highlight two case studies I wrote about in
_Lean Enterprise_: the HP FutureSmart case study, and another case
study from the world of mainframes in financial services.

### The HP FutureSmart Case Study ###

HP's LaserJet Firmware division builds the firmware that runs all their scanners, printers, and multifunction devices. The team consists of 400 people distributed across the USA, Brazil, and India. In 2008, the division had a problem: they were moving too slowly. They had been on the critical path for all new product releases for years, and were unable to deliver new features: "Marketing would come to us with a million ideas that would dazzle the customer, and we’d just tell them, `Out of your list, pick the two things you’d like to get in the next 6–12 months.'" They had tried spending, hiring, and outsourcing their way out of the problem, but nothing had worked. They needed a fresh approach.

The targets set by the HP LaserJet leadership were to improve developer productivity by a factor of 10, so as to get firmware off the critical path for product development and reduce costs. They had three high-level goals:

* Create a single platform to support all devices 
* Increase quality and reduce the amount of stabilization required prior to release
* Reduce the amount of time spent on planning

A key element in achieving these goals was implementing continuous
delivery, with a particular focus on:

* The practice of [continuous integration](/foundations/configuration-management/)
* Significant investment in [test automation](/foundations/test-automation/)
* Creating a hardware simulator so that tests could be run on a virtual platform
* Reproduction of test failures on developer workstations

After three years of work, the HP LaserJet Firmware division changed the economics of the software delivery process by adopting continuous delivery, comprehensive test automation, an iterative and adaptive approach to program management, and a more agile planning process.

_Economic Benefits of HP FutureSmart's Agile Transformation_

* Overall development costs were reduced by ~40%.
* Programs under development increased by ~140%.
* Development costs per program went down 78%.
* Resources driving innovation increased eightfold.

The most important point to remember from this case study is that the enormous cost savings and improvements in productivity were only possible on the basis of a large and ongoing _investment_ made by the team in test automation and continuous integration. Even today, many people think that Lean is a management-led activity and that it's about simply _cutting costs_. In reality, it requires _investing_ to remove waste and reduce failure demand—it is a worker-led activity that, ultimately, can continuously drive down costs and improve quality and productivity.

For more on this case study, watch Gary Gruver, Director of
Engineering for the FutureSmart program,
[presenting at FlowCon 2013](https://www.youtube.com/watch?v=Trqjj3d3lhQ). You
can also read about the transformation in his book, [A Practical Approach to Large-Scale Agile Development: How HP Transformed LaserJet FutureSmart Firmware](http://www.amazon.com/dp/0321821726?tag=contindelive-20)


### The Suncorp Simplification Program ###

_By Scott Buckley and John Kordyback, originally published in_ Lean
Enterprise: How High Performance Organizations Innovate at Scale,
_pp280-281._

Australia’s Suncorp Group has ambitious plans to decommission their legacy general insurance policy systems, improve their core banking platform, and start an operational excellence program. “By decommissioning duplicate or dated systems, Suncorp aims to reduce operating costs and reinvest those savings in new digital channels,” says Matt Pancino, now CEO of Suncorp Business Systems.

Lean practices and continuous improvement are necessary strategies to deliver the simplification program. Suncorp is investing successfully in automated testing frameworks to support developing, configuring, maintaining, and upgrading systems quickly. These techniques are familiar to people using new technology platforms, especially in the digital space, but Suncorp is successfully applying agile and lean approaches to the “big iron” world of mainframe systems.

In their insurance business, Suncorp is combining large and complex insurance policy mainframe systems into a system to support common business processes across the organization and drive more insurance sales through direct channels. Some of the key pieces were in place from the "building blocks" program which provided a functional testing framework for the core mainframe policy system, agile delivery practices, and a common approach to system integration based on web services.

During the first year of the simplification program, testing was extended to support integration of the mainframe policy system with the new digital channels and the pricing systems. Automated acceptance criteria were developed while different systems were in development. This greatly reduced the testing time for integrating the newer pricing and risk assessment system with multiple policy types. Automated testing also supported management and verification of customer policies through different channels, such as online or call center.

Nightly regression testing of core functionality kept pace with development and supported both functional testing and system-to-system integration. As defects were found in end-to-end business scenarios, responsive resolutions were managed in hours or days, not weeks typical for larger enterprise systems.

In the process, Suncorp has reduced 15 complex personal and life insurance systems to 2 and decommissioned 12 legacy systems. Technical upgrades are done once and rolled out across all brands. They have a single code base for customer-facing websites for all their different brands and products. This enables faster response to customer needs and makes redundant separate teams each responsible for one website. 

From a business point of view, the simpler system has allowed 580 business processes to be redesigned and streamlined. Teams can now provide new or improved services according to demand, instead of improving each brand in isolation. It has reduced the time to roll out new products and services, such as health cover for API customers or roadside assistance for AAMI customers.

The investment in simplification and management of Suncorp’s core systems means they can increase their investment in all their touch points with customers. In both technology and business practices, Suncorp increased their pace of simplification, with most brands now using common infrastructure, services, and processes. 

Suncorp's [2014 annual report](http://bit.ly/1v73OC3) notes that "simplification has enabled the Group to operate a more variable cost base, with the ability to scale resources and services according to market and business demand. Simplification activity is anticipated to achieve savings of $225 million in 2015 and $265 million in 2016.

For more on this case study, check out John Kordyback's 30m
presentation [From Mainframes to Continuous Delivery in 1,000 Easy Steps](https://www.youtube.com/watch?v=eMS97X5ZTGc).

### Research ###

Nicole Forsgren, Gene Kim and I have a [research program](http://devops-research.com/) investigating
IT performance and the factors that contribute to it. We've gathered
data for several years as part of the annual PuppetLabs / DevOps
Research and Assessment State of DevOps Report. The
[2014](http://bit.ly/2015-devops-report) and
[2015](http://bit.ly/2015-devops-report) reports are free to download
(registration required). Key results include:

* Firms with high-performing IT organizations were twice as likely to
exceed their profitability, market share and productivity goals.
* High performers achieved higher levels of both throughput _and_ stability.
* The use of continuous delivery practices including version control,
  continuous integration, and test automation predicts higher IT
  performance.
* Culture is measurable and predicts job satisfaction and
organizational performance.
* Continuous Delivery measurably reduces both deployment pain and
team burnout.

Some of the research has been published in the form of peer-reviewed
conference papers, with further papers in the works. Current
publications to date are listed below:

* Forsgren, N., J. Humble (2016). ["DevOps: Profiles in ITSM Performance and Contributing Factors."](http://ssrn.com/abstract=2681906) In the Proceedings of the Western Decision Sciences Institute (WDSI) 2016, Las Vegas, NV.
* Forsgren, N., J. Humble (2016). ["The Role of Continuous Delivery in IT and Organizational Performance."](http://ssrn.com/abstract=2681909) In the Proceedings of the Western Decision Sciences Institute (WDSI) 2016, Las Vegas, NV.


