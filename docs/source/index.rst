RAVN: Easy to Develop Drone Platform
====================================

Note: RAVN is currently in beta and only has functions working. The IDE has not been released yet.

RAVN is the next generation of drone developer platform,
provides developers with an abstract way to easily control
a drone. A drone can be a quadrotor, airplane, car, or even boats.

RAVN connects to the drone's flight controller through the mavlink
protocol used by the PIXHAWK class of controllers. This API
enables the developer to send the drone GPS Cordinates and headings,
read the realtime telemetry data, and easily do basic functions like
takeoff or landing with a single line of code.

Contents
--------
.. toctree::
   :maxdepth: 2

   getting-started
   python

Here's an example of how easy it is to use:

.. code-block:: python

    from ravn import Drone
    # Get your stuff done
    myDrone = Drone()
    myDrone.takeoff()
    myDrone.goto(29.52525, 29.52525, 30)
    myDrone.land()

Features
--------

* Automatic Takeoff and Landing
* Navigation and Control
* Asynchronous & Synchronous API

Installation
------------

Install RAVN by running:

.. code-block:: bash

    wget -q -O - http://git.io/tq6wvw | bash

Contribute
----------

- `Issue Tracker`_
- `Source Code`_

Support
-------

If you are having issues,
please let us know through our `Forum`_.

License
-------

The project is licensed under the Apache Licence v2

Indices and tables
==================

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`


.. _Source Code: http://source.ravndrone.com/
.. _Issue Tracker: http://issues.ravndrone.com/
.. _Forum: http://discuss.ravndrone.com/
