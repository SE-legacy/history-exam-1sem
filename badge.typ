#let badge(size: 5cm) = {
  let ring = size * 0.06
  let inner = size - 2 * ring
  box(
    width: size,
    height: size,
    radius: 50%,
    inset: ring,
    fill: gradient.linear(white, luma(150), luma(235), luma(120), angle: 60deg),
    stroke: 0.5pt + luma(90),
    box(
      width: inner,
      height: inner,
      radius: 50%,
      clip: true,
      stroke: 1pt + luma(80),
      fill: gradient.radial(rgb("#4fc3cf"), rgb("#239dad"), rgb("#14606b")),
      align(center + horizon, {
        set text(
          font: "Noto Sans",
          weight: 900,
          stretch: 75%,
          size: inner * 0.15,
          fill: black,
          stroke: (paint: white, thickness: inner * 0.008),
          tracking: -0.02em,
        )
        set par(leading: 0.15em, first-line-indent: 0pt)
        move(dy: inner * 0.04, upper[Полностью\ на языке\ #text(size: inner * 0.22)[Typst]])
      }),
    ),
  )
}
