## Rails API - Advice!

### Assignment
There are two parts

### Part 1: Make a Quotes API
Make a quotes API!  Your API should have full CRUD functionality :  `GET /quotes` should return all the quotes, `GET /quotes/:id` should return a quote by ID, `POST /quotes` to add a new quote to the database, and `PUT /quotes/:id` should edit the quote at that ID.


To get started, create a new rails api called `quotes_api`, configured to use `postgresql` for the database.  Then use the following data for the seed:

```ruby
[
  {
    content: "Sometimes you win, sometimes you learn.",
    author: "Unknown",
    category: "motivational"
  },
  {
    content: "Do or do not, there is no try.",
    author: "Yoda",
    category: "motivational"
  },
  {
    content: "A simple 'Hello' could lead to a million things.",
    author: "Unknown",
    category: "motivational"
  },
  {
    content: "The expert at anything was once a beginner.",
    author: "Helen Hayes",
    category: "education"
  },
  {
    content: "You are never too old to get a new goal or dream a new dream!",
    author: "CS Lewis",
    category: "motivational"
  },
  {
    content: "If you want something you never had, you have to do something you've never done!",
    author: "Unknown",
    category: "motivational"
  },
  {
    content: "Getting to know a problem is a bit like getting to know a person: it's a gradual process that requires patience, and there is no state of completion. You can never know the full of a problem, because there is never comprehensive information available. You have to simply draw the line somewhere and make up the rest as you go along.",
    author: "Frank Chimero",
    category: "design"
  },
  {
    content: "Others have seen what is and asked why. I have seen what could be and asked why not?",
    author: "Pablo Picasso",
    category: "design"
  },
  {
    content: "Who are we, who is each one of us, if not a combinatoria of experiences, information, books we have read, things imagined?",
    author: "Italo Calvino",
    category: "literary"
  },
  {
    content: "Who are only undefeated / Because we have gone on trying",
    author: "T.S. Eliot",
    category: "poetry"
  },
  {
    content: "In search of the difficulty rather than in its clutch. The disquiet of him who lacks an adversary.",
    author: "Samuel Beckett",
    category: "literary"
  },
  {
    content: "When the going gets weird, the weird turn pro.",
    author: "Hunter S. Thompson",
    category: "gonzo"
  },
  {
    content: "Truth suffers from too much analysis.",
    author: "Frank Herbert",
    category: "philosophical"
  },
  {
    content: "Over and over again, a thousand voices shout: No Image! No Message!",
    author: "Max Bruinsma",
    category: "design"
  },
  {
    content: "A circle looks at a square and sees a badly made circle.",
    author: "Jeff VanderMeer",
    category: "design"
  },
  {
    content: "The aspects of things that are most important for us are hidden because of their simplicity and familiarity.",
    author: "Ludwig Wittgenstein",
    category: "philosophical"
  },
  {
    content: "All struggle is against impermanence.",
    author: "lord krunkington iii",
    category: "philosophical"
  },
  {
    content: "All language is mystification, and everything is fiction.",
    author: "Brion Gysin",
    category: "literary"
  },
  {
    content: "A place where the unknown past and the emergent future meet in a vibrating soundless hum.",
    author: "William Burroughs",
    category: "philosophical"
  },
  {
    content: "A slow-fade into the silent, imperceptible, ceaseless procession of the stars.",
    author: "Fractalontology",
    category: "poetry"
  },
  {
    content: "Nodes, clusters, trackbacks, memes... truth follows bandwidth, as sure as use follows invention.",
    author: "Richard Powers",
    category: "technology"
  },
  {
    content: "The feeling that one is on the edge of many things: that there are many worlds from which we are separated by only a film; that a flick of the wrist, a turn of the body another way will bring us to a new world.",
    author: "Theodore Roethke",
    category: "philosophical"
  },
  {
    content: "Reality is as thin as paper and betrays with all its cracks its imitative character.",
    author: "Bruno Schulz",
    category: "philosophical"
  }
]
```
### Things to think about:
Do you need to add anything else to your seed file in order for this data to be seeded?
What model should you create?  What properties should your model have?  
What routes do you need?
How do you generate the controller for this model?
What methods are needed in your controller?

As a challenge:
Time yourself!  See how quickly you can build an API in rails.  If you do time yourself, post your best time in the pull request for your homework submission.


### Part 2: Reading
Tomorrow we are going to talk about tables with relationships!  Get ready by skimming over the [Rails Docs on Associations](https://guides.rubyonrails.org/association_basics.html).  No need to read the whole doc, but see if you can get a general feeling for how relationships work before we go into this tomorrow.
