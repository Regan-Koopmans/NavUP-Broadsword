# NavUP - Broadsword
A repository for the complete Broadsword implementation of NavUP

## NavUP
NavUP, at its core, is a navigational service application that is used to navigate in and around buildings of the Hatfield campus of the University of Pretoria.

## Broadsword
The development of the NavUP application has been broken up into several different streams, based on the platform of service. Our stream, codename Broadsword, focuses on the web platform.

## Integration Team
* [Regan Koopmans](https://github.com/Regan-Koopmans)
* [Marthinus Hermann](https://github.com/MarnoH)
* [Jan-Justin van Tonder](https://github.com/jan-justin)

## Module Teams
* [Access](https://github.com/KeatonPennels/COS-301-Broadsword-Access)
* [Data](https://github.com/lyle-univ/cos301-broadsword-data)
* [GIS](https://github.com/Broadsword-GIS-Org/SE_BroadSword-GIS)
* [Navigation](https://github.com/AndriesJacobus/COS301Phase3BroadswordNavigation)
* [Notification](https://github.com/wanrick/bsword-notification)
* [Users](https://github.com/TheZimbo16/COS301-Broadsword-Users)

## Implemented Technologies
* MEAN Stack
* Python
* [NSQ Messaging Service](http://nsq.io/overview/design.html)

### Reasoning
NSQ was chosen as a communication medium due to several appealing charactersitics, which include but are not limited to:

* small messaging platform that requires no build time
* supported with several official client libraries (including Python and NodeJS clients)
* horizontally scalable (no brokers, seamlessly add more nodes to the cluster)
* low-latency push based message delivery (performance)
* combination load-balanced and multicast style message routing
* excel at both streaming (high-throughput) and job oriented (low-throughput) workloads
* primarily in-memory (beyond a high-water mark messages are transparently kept on disk)
* runtime discovery service for consumers to find producers (nsqlookupd)
* transport layer security (TLS)
* data format agnostic
* few dependencies (easy to deploy) and a sane, bounded, default configuration
* simple TCP protocol supporting client libraries in any language
* HTTP interface for stats, admin actions, and producers (no client library needed to publish)
* integrates with statsd for realtime instrumentation
* robust cluster administration interface (nsqadmin)

Python and NodeJS were chosen due to them being scripting languages, which means near-zero build times and work on multiple platforms. Additionally, both have extensive support in terms libraries and otherwise.

MongoDB was the database of choice due to some of its favourable, NoSQL characteristics. It performs well with large volumes of structured, semi-structured, and unstructured data. Moreover, it implements object-oriented programming that is easy to use and flexible as well as the fact that it boasts an efficient, scale-out architecture instead of an expensive, monolithic architecture.

## Project Structure
![NavUP - Broadsword project structure](https://raw.githubusercontent.com/Regan-Koopmans/NavUP-Broadsword/master/integration_structure.png)

## Documentation
NSQ, a distributed messaging platfrom service, has been decided upon as the communication medium of choice between the various modules of the Broadsword stream. Subsequently, this means that all requests and responses are to be sent in the form of messages, therefore, an agreed upon and unified API is required. To that extent, we have produced some documentation on how we perceive communications ought to transpire between modules. Moreover, we have recommended a set of coding standards in order to manage consistency accross the various modules.

* [Communication Specification](https://paper.dropbox.com/doc/NavUP-Communications-Spec-sKIJzzByzxeo3LYm6oGld)
* [Connecting to the NSQ Messaging Platform](https://paper.dropbox.com/doc/Connecting-to-the-NSQ-Messaging-Platform-xMqpYCREAg3mKOuWPU1Z9)
* [Recommended Coding Standards](https://paper.dropbox.com/doc/NavUP-Broadsword-Coding-Standards-yKdnHfWv6CLS2yAqAxive)
