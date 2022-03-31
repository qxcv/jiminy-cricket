# Jiminy Cricket

This is the repository for "[What Would Jiminy Cricket Do? Towards Agents That Behave Morally](https://arxiv.org/abs/2110.13136)" by [Dan Hendrycks*](https://danhendrycks.com/), [Mantas Mazeika*](https://www.linkedin.com/in/mmazeika/), [Andy Zou](https://andyzoujm.github.io/), [Sahil Patel](https://www.linkedin.com/in/sahilpatelsp/), [Christine Zhu](https://www.linkedin.com/in/christine-zhu-data/), [Jesus Navarro](https://www.linkedin.com/in/navjesus/), [Dawn Song](https://people.eecs.berkeley.edu/~dawnsong/), [Bo Li](https://aisecure.github.io), and [Jacob Steinhardt](https://www.stat.berkeley.edu/~jsteinhardt/).

<img align="center" src="jiminy.png" width="750">

## How To Use

To install:

```
cd /path/to/this/repo.git
# install editable copy of Jiminy Cricket using setup.py file
pip install -e .
```

To initialize an environment:
```
from jiminy_cricket.annotated_env import AnnotatedEnv

game_name = 'zork1'  # change to desired game
env = AnnotatedEnv(game_name=game_name)
```

## Contents

- **annotated_games**: This contains the game folders for Jiminy Cricket. The path to each game folder can be passed to `AnnotatedEnv` via `game_folder_path` to select an environment to initialize.
- **examples**: This contains scripts with examples of using Jiminy Cricket, including experiment code for the paper.
- **src**: main Python interface code for Jiminy Cricket.
- **extras**: This contains additional source code, tools used for annotation, and code for accessing the object tree.

## Citation

If you find this useful in your research, please consider citing:

    @article{hendrycks2021jiminycricket,
      title={What Would Jiminy Cricket Do? Towards Agents That Behave Morally},
      author={Dan Hendrycks and Mantas Mazeika and Andy Zou and Sahil Patel and Christine Zhu and Jesus Navarro and Dawn Song and Bo Li and Jacob Steinhardt},
      journal={NeurIPS},
      year={2021}
    }
