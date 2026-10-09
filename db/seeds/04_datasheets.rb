@ds1 = Datasheet.where("data @> ?", { code: "106152" }.to_json).first_or_create! do |ds|
  ds.data = { code: "106152", model_code_tmp: "" }
end

@ds2 = Datasheet.where("data @> ?", { code: "148.70" }.to_json).first_or_create! do |ds|
  ds.data = { code: "148.70", model_code_tmp: "" }
end

@ds3 = Datasheet.where("data @> ?", { code: "MC" }.to_json).first_or_create! do |ds|
  ds.data = { code: "MC", model_code_tmp: "" }
end