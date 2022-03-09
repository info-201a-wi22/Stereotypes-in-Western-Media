source("server1.R")
source("htmltest.R")

firstPage <- tabPanel(
  "Introduction",
  p("Stereotypes regarding race and gender are a big issue in western media. Not only does this affect the youth and their growing perspectives on people in society, it also encourages adults to continue to stereotype. Due to the spread of misinformation through the media, there have been multiple incidences where these stereotypes have been used against many individuals. There are multiple examples of shows targeting the youth which have many stereotypes. One example of this is the show Jessie on Disney Channel. The show includes four kids who are adopted and live with a nanny. There is an Indian boy, an African American girl, a white boy, and a blonde girl. The Indian boy is shown as weak and nerdy with an Indian accent. The African American girl is shown as rebellious and sassy. The white boy is shown as athletic and the blonde girl is shown as dumb and boy obsessed."),
  p("Racial stereotypes have existed long before the film industry due to colonialism. Many depictions of non-white characters on film were root in racial biases and cultural ignorance. There was even a time where non-white characters were nearly always played by white actors who would be in blackface, yellowface, or redface makeup. Which was common practice in Hollywood where production teams were reluctant to hire minority actors of any kind, so they would use white actors in their place. This is because Hollywood originally made movies for a white audience. They have found that prejudices break down when people of various ethnic groups have increased contact with each other. A sociologist by the name of Nancy Wang Yuen said that \"Racism, in the form of job exclusion and racially stereotyped roles, has defined the Hollywood film industry since its birth in the early 1900s\"."),
  img(src = "https://variety.com/wp-content/uploads/2017/11/sexual-harassment-at-hollywood-talent-agencies-illustration-placeholder.jpg?w=681&h=383&crop=1", height = 191.5, width = 340.5),
  img(src = "https://www.hollywoodreporter.com/wp-content/uploads/2016/10/hollywoodoverlords_-_h_-_2016.jpg?w=681&h=383&crop=1", height = 191.5, width = 340.5),
  p("https://www.hollywoodreporter.com/movies/movie-news/hollywood-illusion-control-942384/"),
  p("https://variety.com/2018/film/news/hollywood-diversity-falls-short-ucla-report-1202711370/")
)

secondPage <- tabPanel(
  "First Plot", 
  sidebarLayout(
    sidebarPanel(
      selectInput(
        inputId = "type_input",
        label = "Variable",
        choices = c("Age", "Income", "Ethnicity", "Ideo")
      )
    ),
    mainPanel(
      plotlyOutput(outputId = "pie_chart")
    ))
)

thirdPage <- tabPanel(
  "Second Plot", 
  sidebarLayout(
    sidebarPanel(
      selectInput(
        inputId = "color_input",
        label = "Color",
        choices = c("Black", "Blue", "Red", "Green", "Orange")
      )
    ),
    mainPanel(
      plotlyOutput(outputId = "scatter")
    ))
)

fourthPage <- tabPanel(
  "Third Plot",
  sidebarLayout(
    sidebarPanel(
      selectInput(
        inputId = "type",
        label = "Importance Level",
        choices = c("Very Important" = "very_important", "Somewhat Important" = "somewhat_important")
        ),
      selectInput(
        inputId = "color_choice",
        label = "Color Options",
        choices = c("Blue", "Red", "Yellow", "Green", "Purple")
      )
    ),
    mainPanel(
      plotlyOutput(outputId = "bar"),
    ))
)

fifthPage <- tabPanel(
  "Summary Takeaways",
  p("Multiple individuals of all different backgrounds and identities in America, feel that western media and the characters within media are not portraying individuals properly. Stereotypes in media can cause multiple negative effects socially. Three major takeaways which have been gathered from our data and analysis are that people of different identities don't feel their identities are properly represented in media; the race of characters are overly stereotyped; individuals also feel that the media should work towards avoiding stereotypes. Through analysis and through the data we gathered we believe that it is important for Hollywood to bring in more diversity in the writing rooms because getting point of view from multiple individuals of different backgrounds is incredibly important. The term \"privilege hazard\" can be used in this situation as having individuals of one race, one gender, and one sexuality writing media for an audience of diverse individuals can create multiple negative effects. The effects of stereotypes in media range from influencing children to adults. Stereotypes can cause individuals, including individuals of different races, genders, and sexualities, to be bullied or discriminated against, due to the way characters who share their same identities are portrayed."),
  img(src = "https://static.dw.com/image/47568208_7.png", width = 192, height = 310.5),
  img(src = "https://static.dw.com/image/47568260_7.png", width = 192, height = 234.1),
  img(src = "https://static.dw.com/image/47568316_7.png", width = 192, height = 234.9),
  p("https://www.dw.com/en/hollywood-movies-stereotypes-prejudice-data-analysis/a-47561660")
)

ui1 <- navbarPage(
  theme = shinytheme("united"),
  "Stereotypes in Media",
  firstPage,
  secondPage,
  thirdPage,
  fourthPage,
  fifthPage,
  sixthPage
)