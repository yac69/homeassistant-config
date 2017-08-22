"""
This component provides HA lock support for Abode Security System.

For more details about this platform, please refer to the documentation at
https://home-assistant.io/components/lock.abode/
"""
import logging

from custom_components.abode import (
    AbodeDevice, ABODE_CONTROLLER)
from homeassistant.components.lock import LockDevice
from homeassistant.const import (STATE_LOCKED, STATE_UNLOCKED)

DEPENDENCIES = ['abode']

_LOGGER = logging.getLogger(__name__)


def setup_platform(hass, config, add_devices, discovery_info=None):
    """Set up Abode lock devices."""
    sensors = []
    for sensor in ABODE_CONTROLLER.get_devices():
        _LOGGER.debug('Sensor type %s', sensor.type)
        if sensor.type == 'Door Lock':
            sensors.append(AbodeLock(hass, ABODE_CONTROLLER, sensor))

    _LOGGER.debug('Adding %d sensors', len(sensors))
    add_devices(sensors)


class AbodeLock(AbodeDevice, LockDevice):
    """Representation of a Vera lock."""

    def __init__(self, hass, controller, device):
        """Initialize the Abode device."""
        AbodeDevice.__init__(self, hass, controller, device)

    def lock(self, **kwargs):
        """Lock the device."""
        self._device.lock()

    def unlock(self, **kwargs):
        """Unlock the device."""
        self._device.unlock()

    @property
    def is_locked(self):
        """Return true if device is on."""
        return self._device.is_locked
