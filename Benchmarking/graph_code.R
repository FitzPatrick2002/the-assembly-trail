library(ggplot2)

ExeTimes <- read.csv("benchmark.csv")

# ggplot(ExeTimes, aes(x = Rolls)) +
#   geom_line(aes(y = Cpp, color = "C++")) +
#   geom_line(aes(y = Masm, color = "MASM")) +
#   geom_point(aes(y = Cpp, color = "C++")) +
#   geom_point(aes(y = Masm, color = "MASM")) +
#   labs(
#     title = "MASM vs C++ Execution Times Benchmark",
#     x = "Number of Rolls",
#     y = "Execution Time (nanoseconds)"
#   ) +
#   coord_cartesian(ylim = c(50,300)) +
#   theme_minimal()

ggplot(ExeTimes, aes(x = Rolls)) +
  geom_line(aes(y = Cpp, color = "C++")) +
  geom_line(aes(y = Masm, color = "MASM")) +
  geom_point(aes(y = Cpp, color = "C++")) +
  geom_point(aes(y = Masm, color = "MASM")) +
  labs(
    title = "MASM vs C++ Execution Times Benchmark - 1000 Rolls comparison",
    x = "Number of Repeated Rolls",
    y = "Execution Time (nanoseconds)"
  ) +
  coord_cartesian(ylim = c(50,200)) +
  theme_minimal()

