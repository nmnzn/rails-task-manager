puts "Reset tasks..."
Task.destroy_all

titles = [
  "Faire les courses",
  "Aller courir",
  "Lire un livre",
  "Appeler un ami",
  "Ranger le bureau",
  "Regarder un film",
  "Faire du sport",
  "Préparer le repas",
  "Apprendre un truc",
  "Nettoyer la voiture"
]

details_list = [
  "Ne pas oublier.",
  "À faire tranquillement.",
  "Important mais pas urgent.",
  "Peut attendre un peu.",
  "À terminer aujourd’hui.",
  "Petite tâche rapide.",
  "Prendre son temps.",
  "Juste 30 minutes suffisent."
]

5.times do
  Task.create!(
    title: titles.sample,
    details: details_list.sample,
    completed: [true, false].sample
  )
end

puts "Done! #{Task.count} tasks created."
