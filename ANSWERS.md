# Q0: Why is this error being thrown?
We are missing a Pokemon model.
# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
They are appearing because of HomeController#index, which will grab Pokemon (without trainers) at random. The possible Pokemons are all trainerless, that is they do not belong to any trainers.
# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
This creates a button that, when clicked, redirects to the capture path with the @pokemon id as the parameter, and sends a patch request.
# Question 3: What would you name your own Pokemon?
Lil Dil
# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed in the path /trainers/:id. which requires the id of the trainer who's profile page we want to return to.
# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
The validations in the Pokemon model will add errors to errors.fulul_messages, which is an array of errors. to_sentence will convert errors.full_messages into a readable sentence. This will be displayed in the view due to line 18 in view/layouts/application.html.erb
# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
https://railsdecalpokemon.herokuapp.com/