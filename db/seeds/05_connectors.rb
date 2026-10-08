con1 = Connector.find_or_create_by!(id: 758744) do |c|
    c.shell_size = 14
    c.total_contact_amount = 1
    c.contact_type = false
    c.contacts = {[{"size": 32, "amount": 1}],}
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
    c.datasheet = ds1
end
