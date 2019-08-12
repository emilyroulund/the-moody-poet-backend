# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)





Tag.create(name: "Relationships")
Tag.create(name: "Living")
Tag.create(name: "Love")
Tag.create(name: "Death")
Tag.create(name: "First Love")
Tag.create(name: "Heartache")
Tag.create(name: "Loss")




Poem.create(period: "Romantic", region: "England", year: "1804",reference: "https://www.poetryfoundation.org/poems/45521/i-wandered-lonely-as-a-cloud",
  classification: "lyric", title: "I Wandered Lonely as a Cloud", author: "William Wordsworth",
  text: "I wandered lonely as a cloud
    That floats on high o'er vales and hills,
    When all at once I saw a crowd,
    A host, of golden daffodils;
    Beside the lake, beneath the trees,
    Fluttering and dancing in the breeze.

    Continuous as the stars that shine
    And twinkle on the milky way,
    They stretched in never-ending line
    Along the margin of a bay:
    Ten thousand saw I at a glance,
    Tossing their heads in sprightly dance.

    The waves beside them danced; but they
    Out-did the sparkling waves in glee:
    A poet could not but be gay,
    In such a jocund company:
    I gazed—and gazed—but little thought
    What wealth the show to me had brought:

    For oft, when on my couch I lie
    In vacant or in pensive mood,
    They flash upon that inward eye
    Which is the bliss of solitude;
    And then my heart with pleasure fills,
    And dances with the daffodils."
)


Poem.create(author: "Emily Bronte", classification: "Rhymed Stanza", period: "Victorian",
text: "Cold in the earth—and the deep snow piled above thee,
Far, far removed, cold in the dreary grave!
Have I forgot, my only Love, to love thee,
Severed at last by Time's all-severing wave?

Now, when alone, do my thoughts no longer hover
Over the mountains, on that northern shore,
Resting their wings where heath and fern-leaves cover
Thy noble heart forever, ever more?

Cold in the earth—and fifteen wild Decembers,
From those brown hills, have melted into spring:
Faithful, indeed, is the spirit that remembers
After such years of change and suffering!

Sweet Love of youth, forgive, if I forget thee,
While the world's tide is bearing me along;
Other desires and other hopes beset me,
Hopes which obscure, but cannot do thee wrong!

No later light has lightened up my heaven,
No second morn has ever shone for me;
All my life's bliss from thy dear life was given,
All my life's bliss is in the grave with thee.

But, when the days of golden dreams had perished,
And even Despair was powerless to destroy,
Then did I learn how existence could be cherished,
Strengthened, and fed without the aid of joy.

Then did I check the tears of useless passion—
Weaned my young soul from yearning after thine;
Sternly denied its burning wish to hasten
Down to that tomb already more than mine.

And, even yet, I dare not let it languish,
Dare not indulge in memory's rapturous pain;
Once drinking deep of that divinest anguish,
How could I seek the empty world again?",
reference: "http://www.poetryfoundation.org/poem/172970",
region:"England", title: "Remebrance", year: "1846")



PoemTag.create(tag_id: 1, poem_id: 2)
PoemTag.create(tag_id: 2, poem_id: 2)
PoemTag.create(tag_id: 3, poem_id: 2)
PoemTag.create(tag_id: 4, poem_id: 2)
PoemTag.create(tag_id: 5, poem_id: 2)
PoemTag.create(tag_id: 6, poem_id: 2)
PoemTag.create(tag_id: 1, poem_id: 3)
PoemTag.create(tag_id: 2, poem_id: 3)
PoemTag.create(tag_id: 3, poem_id: 3)
PoemTag.create(tag_id: 4, poem_id: 3)
