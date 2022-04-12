open JsxUtils
open Typography

module Author = {
  module Style = {
    let container = "flex mt-12"
    let authorInitial = "flex items-center justify-center w-12 h-12 bg-primary mr-4 text-white text-xl font-medium rounded-full"
    let authorName = "font-medium"
    let publishedAt = "text-sm text-neutral-500"
    let flexColumn = "flex flex-col"
  }

  @react.component
  let make = () => {
    <div className=Style.container>
      <span className=Style.authorInitial> {"M"->s} </span>
      <div className=Style.flexColumn>
        <span className=Style.authorName> {"Marcos Oliveira"->s} </span>
        <span className=Style.publishedAt> {"November 18, 2021"->s} </span>
      </div>
    </div>
  }
}

module Style = {
  let contentContainer = "container py-12 mx-auto"
  let title = "text-4xl"
  let summary = "mt-4"
  let mainContent = "flex flex-col gap-4 mt-12"
}

@react.component
let make = () => {
  <Page>
    <div className=Style.contentContainer>
      <Title className=Style.title> "Learn Anything Faster By Using The Feynman Technique" </Title>
      <p className=Style.summary>
        {"Over 100 implementations have been created using several languages, libraries, and frameworks."->s}
      </p>
      <Author />
      <div className=Style.mainContent>
        <p>
          {"Richard Phillips Feynman (/ˈfaɪnmən/; May 11, 1918 – February 15, 1988) was an American theoretical physicist, known for his work in the path integral formulation of quantum mechanics, the theory of quantum electrodynamics, the physics of the superfluidity of supercooled liquid helium, as well as his work in particle physics for which he proposed the parton model. For contributions to the development of quantum electrodynamics, Feynman received the Nobel Prize in Physics in 1965 jointly with Julian Schwinger and Shin'ichirō Tomonaga."->s}
        </p>
        <p>
          {"Feynman developed a widely used pictorial representation scheme for the mathematical expressions describing the behavior of subatomic particles, which later became known as Feynman diagrams. During his lifetime, Feynman became one of the best-known scientists in the world. In a 1999 poll of 130 leading physicists worldwide by the British journal Physics World, he was ranked the seventh-greatest physicist of all time.[2]"->s}
        </p>
        <p>
          {"He assisted in the development of the atomic bomb during World War II and became known to a wide public in the 1980s as a member of the Rogers Commission, the panel that investigated the Space Shuttle Challenger disaster. Along with his work in theoretical physics, Feynman has been credited with pioneering the field of quantum computing and introducing the concept of nanotechnology. He held the Richard C. Tolman professorship in theoretical physics at the California Institute of Technology."->s}
        </p>
        <p>
          {"Feynman was a keen popularizer of physics through both books and lectures, including a 1959 talk on top-down nanotechnology called There's Plenty of Room at the Bottom and the three-volume publication of his undergraduate lectures, The Feynman Lectures on Physics. Feynman also became known through his autobiographical books Surely You're Joking, Mr. Feynman! and What Do You Care What Other People Think?, and books written about him such as Tuva or Bust! by Ralph Leighton and the biography Genius: The Life and Science of Richard Feynman by James Gleick."->s}
        </p>
      </div>
    </div>
  </Page>
}
