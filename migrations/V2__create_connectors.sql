create table datasheets (
    id serial primary key,
    data jsonb not null
);

create table connectors (
    id int primary key,
    shell_size int,
    total_contacts_amount int,
    contact_type bool,
    contacts jsonb,
    connecting_cycles int,
    mean_time_to_failure int,
    storage_life int,
    env_hardness bool,
    parameters jsonb not null,
    datasheet int references datasheets(id) not null,
    is_obsolete bool default false,
    created_at timestamp default now(),
    updated_at timestamp default now()
);