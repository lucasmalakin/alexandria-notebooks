from setuptools.command.develop import develop
from setuptools.command.install import install
from setuptools import setup, find_packages

setup(
        name='alexandria.notebooks',
        version='0.0.1',
        packages=find_packages('src'),
        package_dir = {'': 'src'},
        namespace_packages = ['alexandria.notebooks']
)	
