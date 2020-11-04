
# Maze Generation: Eller's Algorithm


This postscript program implements Eller's maze generation algorithm.
The algorithm is extremely memory efficient as it only needs space
proportional to a row; as opposed to holding space for the whole maze.

The algorithm thus allows for generation of infinite perfect mazes.
Also, it is capable of adding bias (horizontal/vertical passages).

Generating a maze on multiple A4 pages was WIP, but it was put on hold.
See `init-state`, `serialize`, `deserialize`.

## Quickstart

```
make ellers.pdf
```

## Useful resources

<http://www.neocomputer.org/projects/eller.html>

<https://weblog.jamisbuck.org/2010/12/29/maze-generation-eller-s-algorithm>

