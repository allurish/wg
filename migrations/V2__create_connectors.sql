create table datasheets (
    id serial primary key,
    data jsonb not null
);

create table connectors (
    id int primary key,
    shell_size int not null,
    total_contacts_amount int not null,
    contact_type bool not null,
    contacts jsonb not null,
    max_operating_voltage int not null,
    connecting_cycles int not null,
    mean_time_to_failure int not null,
    storage_life int not null,
    env_hardness bool not null,
    parameters jsonb not null,
    is_obsolete bool default false,
    datasheet int references datasheets(id),
    created_at timestamp default now(),
    updated_at timestamp default now()
);