# Import Yamale and make a schema object:
import yamale
schema = yamale.make_schema('./schema.yaml')

# Create a Data object
data = yamale.make_data('./_pages/')

# Validate data against the schema. Throws a ValueError if data is invalid.

for datum in data:
    yamale.validate(schema, datum)
