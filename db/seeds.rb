# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


muscles = Muscle.create([name: "Abs", image_url: ""])
muscles = Muscle.create([name: "Biceps", image_url: ""])
muscles = Muscle.create([name: "Chest", image_url: ""])
muscles = Muscle.create([name: "Triceps", image_url: ""])
muscles = Muscle.create([name: "Traps", image_url: ""])
muscles = Muscle.create([name: "Quadriceps", image_url: ""])
muscles = Muscle.create([name: "Lats", image_url: ""])
muscles = Muscle.create([name: "Calves", image_url: ""])
muscles = Muscle.create([name: "Glutes", image_url: ""])
muscles = Muscle.create([name: "Hamstrings", image_url: ""])
muscles = Muscle.create([name: "Shoulder", image_url: ""])
muscles = Muscle.create([name: "Forearms", image_url: ""])



exercise = Exercise.create([name: "Push Up", description: "Very common chest exercise", equipment: "", muscle_primary: "", muscle_secondary: ""])
exercise = Exercise.create([name: "Hammercurls", description: "Hold two dumbbells and sit on a bench with a straight back, the shoulders are slightly rolled backwards. Your pals point to your body. Bend the arms and bring the weight up with a fast movement. Don't rotate your hands, as with the curls. Without any pause bring the dumbbell down with a slow, controlled movement.

  Don't swing your body during the exercise, the biceps should do all the work here. The elbows are at your side and don't move.", equipment: "", muscle_primary: "", muscle_secondary: ""])
exercise = Exercise.create([name: "Arnold Shoulder Press", description: "Very common shoulder exercise.

 

  As shown here: https://www.youtube.com/watch?v=vj2w851ZHRM
  
  ", equipment: "", muscle_primary: "", muscle_secondary: ""])




# me = MuscleExercise.create(muscle_id: , exercise_id: )
# me = MuscleExercise.create(muscle_id: , exercise_id: )
# me = MuscleExercise.create(muscle_id: , exercise_id: )
# me = MuscleExercise.create(muscle_id: , exercise_id: )
