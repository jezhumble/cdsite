---
title: Principles
---

There are five principles at the heart of continuous delivery:

* Build quality in
* Work in small batches
* Computers perform repetitive tasks, people solve problems
* Relentlessly pursue continuous improvement
* Everyone is responsible

It's easy to get bogged down in the details of implementing continuous
delivery---tools, architecture, practices, politics---if you find
yourself lost, try revisiting these principles and you may find it
helps you refocus on what's important.

###Build Quality In###

W. Edwards Deming, a key figure in the history of the Lean movement,
offered [14 key principles](https://www.deming.org/theman/theories/fourteenpoints) for management. Principle 3 states, "Cease dependence on inspection to achieve quality. Eliminate the need for inspection on a mass basis by building quality into the product in the first place."

It's much cheaper to fix problems and defects if we find them
immediately---ideally before they are ever checked into version
control, by running automated tests locally. Finding defects
downstream through inspection (such as manual testing) is
time-consuming, requiring significant triage. Then we must fix the
defect, trying to recall what we were thinking when we introduced the
problem days or perhaps even weeks ago.

Creating and evolving feedback loops to detect problems as early as
possible is essential and never-ending work in continuous delivery. If
we find a problem in our exploratory testing, we must not only fix it,
but then ask: How could we have caught the problem with an automated
acceptance test? When an acceptance test fails, we should ask: Could
we have written a unit test to catch this problem?

###Work in Small Batches###

In traditional phased approaches to software development, handoffs
from dev to test or test to IT operations consist of whole releases:
months worth of work by teams consisting of tens or hundreds of
people.

In continuous delivery, we take the opposite approach, and try and
get every change in version control as far towards release as
we can, getting comprehensive feedback as rapidly as possible.

Working in small batches has many benefits. It reduces the time it
takes to get feedback on our work, makes it easier to triage and
remediate problems, increases efficiency and motivation, and prevents
us succumbing to the sunk cost fallacy.

The reason we work in large batches is because of the large fixed cost
of handing off changes. A key goal of continuous delivery is to change
the economics of the software delivery process to make it economically
viable to work in small batches so we can obtain the many benefits of
this approach.

###Computers Perform Repetitive Tasks, People Solve Problems###

One of the earliest philosophical ideas of the Toyota tradition is
[jidoka](http://www.toyota-global.com/company/vision_philosophy/toyota_production_system/jidoka.html),
sometimes translated as "automation with a human touch." The goal is
for computers to perform simple, repetitive tasks, such as regression
testing, so that humans can focus on problem-solving. Thus computers
and people complement each other.

Many people worry that automation will put them out of a job. This is
not the goal. There will never be a shortage of work in a successful
company. Rather, people are freed up from mindless drudge-work to
focus on higher value activities. This also has the benefit of
improving quality, since humans are at their most error-prone when
performing mindless tasks.

###Relentlessly Pursue Continuous Improvement###

Continuous improvement, or _kaizen_ in Japanese, is another key idea
from the Lean movement. Taiichi Ohno, a key figure in the history
of the Toyota company, [once said](http://www.amazon.com/dp/0071808019?tag=contindelive-20),

> Kaizen opportunitites are infinite. Don't think you have made things
> better than before and be at ease... This would be like the student who becomes proud because they bested their master two times out of three in fencing. Once you pick up the sprouts of kaizen ideas, it is important to have the attitude in our daily work that just underneath one kaizen idea is yet another one.

Don't treat transformation as a project to be embarked on and then
completed so we can return to business as usual. The best
organizations are those where everybody treats improvement work as an
essential part of their daily work, and where nobody is satisfied with
the status quo.

###Everyone is Responsible###

In high performing organizations, nothing is "somebody else's
problem." Developers are responsible for the quality and stability of
the software they build. Operations teams are responsible for helping
developers build quality in. Everyone works together to achieve the
organizational level goals, rather than optimizing for what's best for
their team or department.

When people make local optimizations that reduce the overall
performance of the organization, it's often due to systemic problems
such as poor management systems such as annual budgeting cycles, or incentives that reward the wrong behaviors. A classic
example is rewarding developers for increasing their velocity or
writing more code, and rewarding testers based on the number of bugs
they find.

Most people want to do the right thing, but they will adapt their
behaviour based on how they are rewarded. Thus the importance of
creating fast feedback loops from the things that really matter: how
customers react to what we build for them, and the impact on our organization.
