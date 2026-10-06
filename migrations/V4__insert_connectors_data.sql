insert into datasheets(data)
({
    "code": "LC", 
    "model_code_tmp": "",
}),
({
    "code": "F1207", 
    "model_code_tmp": "",
})
({
    "code": "106152", 
    "model_code_tmp": "",
})
;

insert into connectors
(
    461285,
    10,
    1,
    true,
    {"size": 127, "amount": 1},
    1000,
    xxx,
    xxx,
    xxx,
    {
        "shell_type": "LC", 
        "polish_type": "PC",
        "weight": 0.007,
        "ferrule_material": "Zirconia",
        "ferrule_diameter": 1.25,
        "configuration": "Rectangular - прямоугольный",
        "mating_type": "SIP - однорядный",
        "termination_type": "Spring contact - контакт источника",
        "boot_diameter": 2
    },
    1
),
(
    461283,
    5,
    1,
    true,
    {"size": 127, "amount": 1},
    xxx,
    xxx,
    xxx,
    true,
    {
        "shell_type": "FC",
        "polish_type": "PC",
        "weight": 0.005
        "configuration": "Circular - круглый",
        "mating_type": "SIP - однорядный",
        "termination_type": "Spring contact - контакт источника"
    },
    2
),
(
    49209,
    xxx,
    4,
    null,
    {},
    500,
    xxx,
    20,
    xxx,
    {
        "polish_type": "UPC",
        ""
    },

)


(
    67876, 
    12, 
    1, 
    true, 
    {[{"size": 16, "amount": 1},]},
    500,
    200000,
    25,
    true,
    {
        "configuration": "Circular - круглый", 
        "max_operating_temp": 70, 
        "max_storage_temp": 70, 
        "min_operating_temp": -50, 
        "min_storage_temp": -60
    },
    
),
(
    758744,
    14,
    1,
    false,
    {[{"size": 32, "amount": 1},]},
    500,
    xxx,
    xxx,
    xxx,
    {
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
    },
    
)

;
