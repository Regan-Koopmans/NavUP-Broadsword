# NavUP - Broadsword

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

## Documentation
NSQ, a distributed messaging platfrom service, has been decided upon as the communication medium of choice between the various modules of the Broadsword stream. Subsequently, this means that all requests and responses are to be sent in the form of messages, therefore, an agreed upon and unified API is required. To that extent, we have produced some documentation on how we perceive communications ought to transpire between modules. Moreover, we have recommended a set of coding standards in order to manage consistency accross the various modules.

* [Communication Specification](https://paper.dropbox.com/doc/NavUP-Communications-Spec-sKIJzzByzxeo3LYm6oGld)
* [Connecting to the NSQ Messaging Platform](https://paper.dropbox.com/doc/Connecting-to-the-NSQ-Messaging-Platform-xMqpYCREAg3mKOuWPU1Z9)
* [Recommended Coding Standards](https://paper.dropbox.com/doc/NavUP-Broadsword-Coding-Standards-yKdnHfWv6CLS2yAqAxive)
