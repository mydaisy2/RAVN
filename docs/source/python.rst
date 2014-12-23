Python API
==========

Initialization
--------------

To interface with the drone and control it, you need to initialize
the drone using the ravn.Drone object


.. code-block:: python

    from ravn import Drone

    myDrone = Drone()

Drone.takeoff(alt)
------------------

This function allows you to takeoff the drone to a desired altitude.

+-----------+-------------------------------------+---------+
| Keywords  | Function                            | Default |
+===========+=====================================+=========+
| alt       | Desired altitude to takeoff to      | 1 meter |
+-----------+-------------------------------------+---------+
| async     | Wait until the command is executed  | False   |
+-----------+-------------------------------------+---------+

Example:
^^^^^^^^
.. code-block:: python

    myDrone.takeoff(alt=5)

Drone.land()
------------

This command allows you to land the drone at the current location.

+-----------+----------------------------------------+---------+
| Keywords  | Function                               | Default |
+===========+========================================+=========+
| async     | Wait until the command is executed     | False   |
+-----------+----------------------------------------+---------+

Example:
^^^^^^^^
.. code-block:: python

    myDrone.land()


Drone.goto(lat, lng, alt, async)
--------------------------------

This function allows you to send the drone to a desired location.

+-----------+----------------------------------------+---------+
|Keywords   |function                                | Default |
+===========+========================================+=========+
| lat       | Desired latitude                       | None    |
+-----------+----------------------------------------+---------+
| lng       | Desired longtitude                     | None    |
+-----------+----------------------------------------+---------+
| alt       | Desired altitude                       | 1 meter |
+-----------+----------------------------------------+---------+
|async      | Wait until the command is executed     | False   |
+-----------+----------------------------------------+---------+

Example:
^^^^^^^^
.. code-block:: python

    myDrone.goto(25.2252425, 22.252425, 10)

Drone.gotoalt(alt, async)
-------------------------

This function allows you to send the drone to a desired altitude.

+-----------+----------------------------------------+---------+
|Keywords   |function                                | Default |
+===========+========================================+=========+
|alt        | Desired altitude                       |10 meters|
+-----------+----------------------------------------+---------+
|async      | Wait until the command is executed     | False   |
+-----------+----------------------------------------+---------+

Example:
^^^^^^^^
.. code-block:: python

    myDrone.gotoalt(alt=15)

Drone.is_armed()
----------------

This function returns the ARMED state of the drone.

+-----------+----------------------------------------+
|Return     |Description                             |
+===========+========================================+
|True       |Drone is armed                          |
+-----------+----------------------------------------+
|False      |Drone is unarmed, and motors are stopped|
+-----------+----------------------------------------+

Example:
^^^^^^^^
.. code-block:: python

    if not myDrone.is_armed():
        myDrone.takeoff()