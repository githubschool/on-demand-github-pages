from __future__ import absolute_import
import yaml
import pprint

try:
    Loader = yaml.CSafeLoader
except AttributeError:  # System does not have libyaml
    Loader = yaml.SafeLoader


def parse_file(file_name):
    with open(file_name) as f:
        theYAML = list(yaml.load_all(f, Loader=Loader))
        try:
            theYAML.remove(None)
        except ValueError:
            pass
        return theYAML
