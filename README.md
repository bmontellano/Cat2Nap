# <p style= 'color: blue'>Cat 2 Nap</p>
This is my project#2 Ruby on Rails app hosted on Heroku!</br>
<!--<a href='https://bmontellano.github.io/hangBoat/'>https://bmontellano.github.io/hangBoat/</a>-->

Click here to go to Cat2Nap! ---> <a href='https://cat2nap.herokuapp.com/'>Cat2Nap </a>

Trello link ---> <a href='https://trello.com/b/NlT5vBTc/project-2-katknapp'>Trello </a>

## Kudos
I want to give thanks to all my classmates and instructors who helped me with this app. Special thanks to the GA Santa Monica peeps: </br>
* <b>Philippe</b> for that sweet amazon web services tutorial. </br>
* <b>Yanny</b> and <b>Conrad</b> for spending a TON of time helping us.
</br>
* <b>Jimmy</b> for his help in getting AWS to work.
</br>
* <b>Ira</b> for helping me figure out edit/post authentication. </br>
* <b>Matt</b> for his styling specialty skills.

## Technologies and Approach
Ruby on rails was used to create an online application for users. HTML, CSS, and embedded Ruby were used to frame, style, and add functionality to the app, respectively.  </br>


## Startup Instructions and functionality
Two models are used in this app.  </br></br> The first model is the users. Note that the second cat, belongs to users in interest, therefore these users, which are cat owners, have many cats. Users have the ability to sign up as owners to post cats, for individuals interesting in sitting the cats. </br> </br>
The second model is the cats. This model belongs to the user, in other words, when a cat owner is logged in, the cats posted by the user belong to said user. These cats are posted by users and contain the following cat info: </br> Name, age, description, gender, and cat pic.  </br> </br>
The app has full <i><b>CRUD</i></b>(Create, Read, Update, Delete) and complete RESTful routing containing the <i><b>Golden Seven</i></b>: Index, Show, Create, New, Edit, Update, Destroy.

Once cats are posted, interested sitters can click on the cat pictures in the homepage and see cats profiles with user contact information, to set up Cat Naps! </br> </br> 

## <p style= 'color: #5f0f82'>Bugs and future additions</p>
BUGS: </br> 
1. Pictures don't line up in columns.</br>
2. Pictures don't generate in Heroku app. </br>
</br>
DREAM ADDITIONS: </br>
1. Use a third model called Events which belongs to the cats. Each event will have a "Date from" and "Date to", which the cat owners can add to designate desired dates for cat-sitting. These events should also automatically disappear once "Date from" is passed. 
