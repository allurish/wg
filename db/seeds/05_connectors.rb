con1 = Connector.find_or_create_by!(code: "1061521000") do |c|
    c.shell_size = 14
    c.total_contact_amount = 1
    c.contact_type = false
    c.contacts = [{size: 32, amount: 1}]
    c.connecting_cycles = 500
    c.mean_time_to_failure = 100000
    c.storage_life = 15
    c.max_operating_voltage = 380
    c.parameters = {
        "weight": 0.01,
        "manufacturer": "Molex",
        "ferrule_material": "Ceramic",
        "color": "Silver",
        "mounting_type": "Panel Mount, Bulkhead",
        "features": "Dust Cap",
        "mode": "Singlemode/Multimode",
        "housing_material": "Polymer",
        "simplex-duplex": "simplex",
        "configuration": "Circular - круглый", 
        "max_operating_temp": 60,
        "termination_type": "Glue - вклейка",
        "mating_type": "EL Tube - трубка"
    }
    c.datasheet = @ds1
end

con2 = Connector.find_or_create_by!(code: "148.70.147") do |c|
  c.shell_size = 300
  c.total_contact_amount = 1
  c.contact_type = true
  c.contacts = [{ size: 95, amount: 1 }]
  c.connecting_cycles = 1000
  c.mean_time_to_failure = 120_000
  c.storage_life = 25
  c.max_operating_voltage = 250.00
  c.parameters = {
    code: "148.70.147",
    weight: 0.6,
    manufacturer: 'АО "НПК "УВЗ""',
    max_operating_temp: 200,
    configuration: "Power - силовой",
    mating_type: "SIP - однорядный",
    termination_type: "Hand solder - ручная пайка"
  }
  c.datasheet = @ds2
end

con3 = Connector.find_or_create_by!(code: "148.70.148") do |c|
  c.shell_size = 250
  c.total_contact_amount = 1
  c.contact_type = true
  c.contacts = [{ size: 95, amount: 1 }]
  c.connecting_cycles = 1000
  c.mean_time_to_failure = 120_000
  c.storage_life = 25
  c.max_operating_voltage = 250.00
  c.parameters = {
    code: "148.70.148",
    weight: 0.6,
    manufacturer: 'АО "НПК "УВЗ""',
    max_operating_temp: 200,
    configuration: "Power - силовой",
    mating_type: "SIP - однорядный",
    termination_type: "Hand solder - ручная пайка"
  }
  c.datasheet = @ds2
end

con4 = Connector.find_or_create_by!(code: "148.70.149") do |c|
  c.shell_size = 200
  c.total_contact_amount = 1
  c.contact_type = true
  c.contacts = [{ size: 95, amount: 1 }]
  c.connecting_cycles = 1000
  c.mean_time_to_failure = 120_000
  c.storage_life = 25
  c.max_operating_voltage = 250.00
  c.parameters = {
    code: "148.70.149",
    weight: 0.6,
    manufacturer: 'АО "НПК "УВЗ""',
    max_operating_temp: 200,
    configuration: "Power - силовой",
    mating_type: "SIP - однорядный",
    termination_type: "Hand solder - ручная пайка"
  }
  c.datasheet = @ds2
  c.is_obsolete = true
end

con5 = Connector.find_or_create_by!(code: "MC000980") do |c|
  c.shell_size = 30
  c.total_contact_amount = 1
  c.contact_type = false
  c.contacts = [{ size: 22, amount: 2 }]
  c.connecting_cycles = 500
  c.mean_time_to_failure = 100_000
  c.storage_life = 15
  c.max_operating_voltage = 100.00
  c.parameters = {
    weight: 0.005,
    max_operating_temp: 150,
    configuration: "Circular - круглый",
    termination_type: "Crimp - обжим",
    standart: "MIL-STD-348A"
  }
  c.datasheet = @ds3
end
