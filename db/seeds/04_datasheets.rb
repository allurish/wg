ds1 = Datasheet.find_or_create_by!("data ->> 'code'": "106152") do |ds|
    ds.data = {
        model_code_tmp: ""
    }
end
ds2 = Datasheet.find_or_create_by!("data ->> 'code'": "148.70") do |ds|
    ds.data = {
        model_code_tmp: ""
    }
end
ds3 = Datasheet.find_or_create_by!("data ->> 'code'": "MC") do |ds|
    ds.data = {
        model_code_tmp: ""
    }
end