import os
from sensorhub import create_app

instance_path = os.environ.get("FLASK_INSTANCE_PATH")
app = create_app(instance_path=instance_path)