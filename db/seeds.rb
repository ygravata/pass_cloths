# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning Database.."

PassCloth.destroy_all
Phrase.destroy_all
Cattle.destroy_all

bolsominion = Cattle.create(
  cattle_name: "Bolsominion",
  politician: "Bolsonaro",
  cattle_type: 1
)

puts "Creating #{bolsominion.cattle_name.capitalize}!"

petista = Cattle.create(
  cattle_name: "Petista",
  politician: "Lula",
  cattle_type: 2
)

puts "Creating #{petista.cattle_name.capitalize}!"

common_sentences = [
  "A Globo tá de sacaganagem, sabotando o governo",
  "Também, com esse judiciário e congresso quem consegue governar?",
  "Tá reclamando do que? Se muda do país"
]

bolso_sentences = [
  "Deixa o homem trabalhar!",
  "Nosso presidente tá fazendo o que é necessário pro país dar certo!",
  "Se não faz politicagem, vocês reclamam! Se faz, vocês reclamam!",
  "Ele tá fazendo isso porque teve que deixar o inimigo agir pra poder mostrar ao que veio!",
  "Rachadinha todo mundo faz, mas só pegam no pé porque é filho dele.",
  "Bom era na época do PT né?"
]

bolso_sentences.each do |sentence|
  phrase = Phrase.create(
    text: sentence
  )

  pass_cloth = PassCloth.create(
    cattle_id: bolsominion.id,
    phrase_id: phrase.id
  )

  puts "Phrase #{phrase.id} created!"

end

common_sentences.each do |sentence|
  phrase = Phrase.create(
    text: sentence
  )

  pass_cloth = PassCloth.create(
    cattle_id: bolsominion.id,
    phrase_id: phrase.id
  )

  pass_cloth = PassCloth.create(
    cattle_id: petista.id,
    phrase_id: phrase.id
  )

  puts "Phrase #{phrase.id} created!"

end
