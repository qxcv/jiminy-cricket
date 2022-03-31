from setuptools import find_packages, setup

setup(
    name="jiminy-cricket",
    version="0.0.1",
    description="Jiminy Cricket Environment (NeurIPS 2021)",
    python_requires=">=3.6.0",
    packages=find_packages("src"),
    package_dir={"": "src"},
    install_requires=["jericho==3.0.*"],
)
