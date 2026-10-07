insert into datasheets(data)
('{
    "code": "LC", 
    "model_code_tmp": "",
}'),
('{
    "code": "F1207", 
    "model_code_tmp": "",
}'),
('{
    "code": "АрПОК1", 
    "model_code_tmp": "",
}'),
('{
    "code": "ОСРБ53", 
    "model_code_tmp": "",
}'),
('{
    "code": "ОСРБ58А", 
    "model_code_tmp": "",
}'),
('{
    "code": "106152", 
    "model_code_tmp": "",
}'),
('{
    "code": "148.70", 
    "model_code_tmp": "",
}'), --?????????????????????
('{
    "code": "MC", 
    "model_code_tmp": "",
}'),
('{
    "code": "2РТ", 
    "model_code_tmp": "",
}'),
('{
    "code": "ШР", 
    "model_code_tmp": "",
}'),
('{
    "code": "2РМДТ", 
    "model_code_tmp": "",
}'),
;

insert into connectors
(
    461285,
    10,
    1,
    true,
    '{[{"size": 127, "amount": 1}, ]}',
    1000,
    xxx,
    xxx,
    xxx,
    '{
        "shell_type": "LC", 
        "polish_type": "PC",
        "weight": 0.007,
        "ferrule_material": "Zirconia",
        "ferrule_diameter": 1.25,
        "configuration": "Rectangular - прямоугольный",
        "mating_type": "SIP - однорядный",
        "termination_type": "Spring contact - пружинный контакт",
        "boot_diameter": 2
    }',
    1
),
(
    461283,
    5,
    1,
    true,
    '{[{"size": 127, "amount": 1}, ]}',
    xxx,
    xxx,
    xxx,
    true,
    '{
        "shell_type": "FC",
        "polish_type": "PC",
        "weight": 0.005
        "configuration": "Circular - круглый",
        "mating_type": "SIP - однорядный",
        "termination_type": "Spring contact - пружинный контакт"
    }',
    2
),
(
    49209,
    xxx,
    4,
    null, --вилка И розетка
    '{}',
    500,
    xxx,
    20,
    xxx,
    '{
        "polish_type": "UPC",
        "configuration": "Circular - круглый",
        "termination_type": "Glue - вклейка"
    }',
    3
),
(
    67876, 
    12, 
    1, 
    true, 
    '{[{"size": 16, "amount": 1}, ]}',
    500,
    200000,
    25,
    true,
    '{
        "configuration": "Circular - круглый", 
        "max_operating_temp": 70, 
        "max_storage_temp": 70, 
        "min_operating_temp": -50, 
        "min_storage_temp": -60,
        "termination_type": "Glue - вклейка"
    }',
    4
),
(
    67877, 
    25, 
    2, 
    false, 
    '{[{"size": 16, "amount": 2}, ]}',
    500,
    200000,
    25,
    true,
    '{
        "configuration": "Circular - круглый", 
        "max_operating_temp": 70, 
        "max_storage_temp": 70, 
        "min_operating_temp": -50, 
        "min_storage_temp": -60,
        "termination_type": "Glue - вклейка"
    }',
    5
),
(
    758744,
    14,
    1,
    false,
    '{[{"size": 32, "amount": 1},]}',
    500,
    xxx,
    xxx,
    xxx,
    '{
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
        "termination_type": "Glue - вклейка"
        "mating_type": "EL Tube - трубка"
    }',
    6
),
(
    777524,
    300,
    1,
    true,
    '{[{"size": 95, "amount": 1},]}',
    xxx,
    xxx,
    xxx,
    '{
        "code": "148.70.147",
        "weight": 0.6,
        "manufacturer": "АО \"НПК \"УВЗ\"\"",
        "max_operating_temp": 200,
        "configuration": "Power - силовой", 
        "mating_type": "SIP - однорядный",
        "termination_type": "Hand solder - ручная пайка"
    }',
    7
),
(
    777525,
    250,
    1,
    true,
    '{[{"size": 95, "amount": 1},]}',
    xxx,
    xxx,
    xxx,
    '{
        "code": "148.70.148",
        "weight": 0.6,
        "manufacturer": "АО \"НПК \"УВЗ\"\"",
        "max_operating_temp": 200,
        "configuration": "Power - силовой", 
        "mating_type": "SIP - однорядный",
        "termination_type": "Hand solder - ручная пайка"
    }',
    7
),
(
    777526,
    200,
    1,
    true,
    '{[{"size": 95, "amount": 1},]}',
    xxx,
    xxx,
    xxx,
    '{
        "code": "148.70.149",
        "weight": 0.6,
        "manufacturer": "АО \"НПК \"УВЗ\"\"",
        "max_operating_temp": 200,
        "configuration": "Power - силовой", 
        "mating_type": "SIP - однорядный",
        "termination_type": "Hand solder - ручная пайка"
    }',
    7
),
(
    213364,
    --SMA??,
    1,
    false,
    '{[{"size": 22, "amount": 2}, ]}',
    xxx,
    xxx,
    xxx,
    xxx,
    '{
        "weight": 0.005,
        "max_operating_temp": 150,
        "configuration": "Circular - круглый", 
        "termination_type": "Crimp - обжим",
        
    }',
    8
),
(
    2,
    20,
    2,
    false,
    '{[{"size": 20, "amount": 2}, ]}',
    xxx,
    xxx,
    xxx,
    xxx,
    '{
        "configuration": "Circular - круглый", 
        "termination_type": "Hand solder - ручная пайка"
    }',
    9
),
(
    20149,
    28,
    7,
    false,
    '{[{"size": 18, "amount": 7}, ]}',
    xxx,
    xxx,
    xxx,
    xxx,
    '{
        "configuration": "Circular - круглый", 
        "termination_type": "Hand solder - ручная пайка"
    }',
    10
),
(
    20170,
    36,
    20,
    false,
    '{[{"size": 18, "amount": 20}, ]}',
    xxx,
    xxx,
    xxx,
    xxx,
    '{
        "configuration": "Circular - круглый", 
        "termination_type": "Hand solder - ручная пайка",
        "shell_type": "Приборный",
        
    }',
    11
),

;
