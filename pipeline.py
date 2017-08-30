import gi
gi.require_version("Gst", "1.0")
from gi.repository import Gst

Gst.init(None)
dm = Gst.DeviceMonitor()
dm.start()
for device in dm.get_devices():
    if device.get_device_class() == "Audio/Sink":
        props = device.get_properties()
        element = device.create_element(None)
        type_name = element.get_factory().get_name()
        device_name = element.props.device
        print "%s device=%r" % (type_name, device_name)
dm.stop()
