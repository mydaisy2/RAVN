from RAVN import client

class TestRavnClient:
	def test_initilization(self):
		ws_server = 
		ravn_client = client.RavnClient('ws://localhost:9000/', protocols=['http-only', 'chat'])
		assert ravn_client.ravn == {
            "mode": "",
            "location": {
                "lat": 0.0,
                "lng": 0.0,
                "alt": 0,
            },
            "attitude": {
                "roll": 0.0,
                "pitch": 0.0,
                "yaw": 0.0
            },
            "velocity": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
            },
            "armed": False,
            "airspeed": 0.0,
            "groundspeed": 0.0,
        }
        assert ravn_client.wp_reached == False
        assert ravn_client.takeoff == False
        assert ravn_client.land == True
        assert ravn_client.buffer == []
