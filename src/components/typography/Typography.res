module TypographyStyles = {
  open CssJs

  let title = style(. [
    color(Theme.Colors.black->hex),
    fontSize(1.3->rem),
    fontWeight(500->#num),
    lineHeight(2.4->rem),
    letterSpacing(-2.0->#percent),
  ])

  let h1 = style(. [
    color(Theme.Colors.neutral->hex),
    fontSize(3.6->rem),
    fontWeight(500->#num),
    letterSpacing(-2.0->#percent),
  ])

  let h2 = style(. [
    color(Theme.Colors.neutral->hex),
    fontSize(2.8->rem),
    fontWeight(500->#num),
    letterSpacing(-2.0->#percent),
  ])

  let h3 = style(. [
    color(Theme.Colors.neutral->hex),
    fontSize(2.3->rem),
    fontWeight(500->#num),
    letterSpacing(-2.0->#percent),
  ])

  let h4 = style(. [
    color(Theme.Colors.neutral->hex),
    fontSize(1.6->rem),
    fontWeight(500->#num),
    letterSpacing(-2.0->#percent),
  ])

  let h5 = style(. [
    color(Theme.Colors.neutral->hex),
    fontSize(1.2->rem),
    fontWeight(500->#num),
    letterSpacing(-2.0->#percent),
  ])

  let h6 = style(. [
    color(Theme.Colors.neutral->hex),
    fontSize(0.9->rem),
    fontWeight(500->#num),
    letterSpacing(-2.0->#percent),
  ])

  let text1 = style(. [
    color(Theme.Colors.neutral200->hex),
    fontSize(1.2->rem),
    lineHeight(1.9->rem),
  ])

  let text2 = style(. [color(Theme.Colors.neutral200->hex), lineHeight(1.8->rem)])

  let text3 = style(. [
    color(Theme.Colors.neutral200->hex),
    fontSize(0.8->rem),
    lineHeight(1.2->rem),
  ])

  let text4 = style(. [
    color(Theme.Colors.neutral200->hex),
    fontSize(0.7->rem),
    lineHeight(1.1->rem),
  ])
}

type variant =
  | Title
  | H1
  | H2
  | H3
  | H4
  | H5
  | H6
  | Text1
  | Text2
  | Text3
  | Text4

@react.component
let make = (~children: string, ~variant) => {
  open TypographyStyles

  switch variant {
  | Title => <h1 className=title> <Text> children </Text> </h1>
  | H1 => <h1 className=h1> <Text> children </Text> </h1>
  | H2 => <h2 className=h2> <Text> children </Text> </h2>
  | H3 => <h3 className=h3> <Text> children </Text> </h3>
  | H4 => <h4 className=h4> <Text> children </Text> </h4>
  | H5 => <h5 className=h5> <Text> children </Text> </h5>
  | H6 => <h6 className=h6> <Text> children </Text> </h6>
  | Text1 => <span className=text1> <Text> children </Text> </span>
  | Text2 => <span className=text2> <Text> children </Text> </span>
  | Text3 => <span className=text3> <Text> children </Text> </span>
  | Text4 => <span className=text4> <Text> children </Text> </span>
  }
}
