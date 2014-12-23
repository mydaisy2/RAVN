"""
RAVN Smart Drone Platform
Copyright (C) 2014 RaptorBird Robotics Inc.
<http://www.raptorbird.com/>

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; Version 2

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
"""

from time import sleep
from droneapi.lib import VehicleMode, Location
from pymavlink import mavutil

# Connect to droneapi
api = local_connect()
v = api.get_vehicles()[0]

# Print Out Telemetry
print "Mode: %s" % v.mode
print "Location: %s" % v.location
print "Attitude: %s" % v.attitude
print "Velocity: %s" % v.velocity
print "GPS: %s" % v.gps_0
print "Armed: %s" % v.armed
print "groundspeed: %s" % v.groundspeed
print "airspeed: %s" % v.airspeed