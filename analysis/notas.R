qualPlot(
  list("untrimmed"=s.fastq,
       "trimmed"=s.trimmed.fastq)
  )

qualPlot(
  list("trimmed"=s.trimmed.fastq,
       "untrimmed"=s.fastq)
  )

ggplot(
  getQual(s.fastq)) +

  geom_linerange(
    aes(
      x=position,
      ymin=lower,
      ymax=upper,
      color=mean)) +

  scale_color_gradient(
    "mean quality",
    low="red",
    high="green") +

  scale_y_continuous("quality")

