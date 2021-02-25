import importlib
import random
from random import randrange
from datetime import date


class CommonFunction(object):
  def check_iso_8601(self, time_val):
      '''Keyword for check iso 8601'''
      try:
        datetime.fromisoformat(time_val)
      except:
         raise AssertionError(
              "Datetime {0} bukan berformat iso 8601".format(time_val))
      return True





