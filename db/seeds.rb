# User.create(name: "Shane Williams", email: "shanewilliams@gmail.com", password: "password", phone_number: "6145554444", image_url: "")
# User.create(name: "Nuke DaFarta", email: "nuke@gmail.com", password: "password", phone_number: "6146664444", image_url: "")
# User.create(name: "Eva DaGoon", email: "eva@gmail.com", password: "password", phone_number: "6145553333", image_url: "")

# Patient.create(name: "Johnny", user_id: 1, notes: "Take meds with orange juice", image_url: "")
# Patient.create(name: "Chrissy", user_id: 2, notes: "Take meds with grape juice", image_url: "")
# Patient.create(name: "Melanie", user_id: 2, notes: "Dont speak too loudly", image_url: "")
# Patient.create(name: "Barb", user_id: 3, notes: "Administer meds with FOOD", image_url: "")
# Patient.create(name: "Dani", user_id: 1, notes: "Dislikes orange juice. ", image_url: "")
# Patient.create(name: "Rob", user_id: 3, notes: "Take meds with orange juice", image_url: "")

Drug.create(name: "Advil", description: "Pain reliever", image_url: "", frequency: "As Needed", notes: "Dont mix with Haldol", patient_id: 1)
Drug.create(name: "Haldol", description: "Agitation", image_url: "", frequency: "As Needed", notes: "", patient_id: 2)
Drug.create(name: "Tylenol", description: "Pain reliever", image_url: "", frequency: "As Needed", notes: "", patient_id: 2)
Drug.create(name: "Morphine", description: "Pain reliever", image_url: "", frequency: "As Needed", notes: "", patient_id: 1)
Drug.create(name: "Seraquil", description: "Anxiety", image_url: "", frequency: "As Needed", notes: "", patient_id: 3)
Drug.create(name: "Pepto", description: "Pink in color.Acid Reducer, helps with the runs", image_url: "", frequency: "As Needed", notes: "", patient_id: 4)



