# -*- coding: utf-8 -*-
#
# reStructuredText Refactor documentation 

import sys
import os
import shlex
import sphinx_rtd_theme
sys.path.insert(0, os.path.abspath('.'))

# -- General configuration ------------------------------------------------

extensions = [
    'sphinx.ext.pngmath',
    'tut.sphinx',
]

templates_path = ['_templates']
source_suffix = '.rst'
source_encoding = 'utf-8-sig'
master_doc = 'index'

# General information about the project.
project = u'reStructuredText Refactor'
copyright = u'2015, Roie R. Black'
author = u'Roie R. Black'

version = '0.1'
release = '0.1'

language = None

today_fmt = '%B %d, %Y'
exclude_patterns = ['_build', '_venv']
pygments_style = 'sphinx'
todo_include_todos = False

# -- Options for HTML output ----------------------------------------------

html_theme = 'sphinx_rtd_theme'
html_theme_path = [sphinx_rtd_theme.get_html_theme_path()]
html_title = 'rstRefactor'
html_logo = '_static/images/ACClogo.png'
#html_favicon = None
html_static_path = ['_static']
html_last_updated_fmt = '%b %d, %Y'
html_show_sourcelink = True
html_show_sphinx = True
html_show_copyright = True

# -- Options for LaTeX output ---------------------------------------------

latex_elements = {
'papersize': 'letterpaper',
'pointsize': '11pt',
#'figure_align': 'htbp',
}

latex_documents = [
  (master_doc, 'rstRefactor.tex', u'reStructuredText Refactor',
   u'Roie R. Black', 'manual'),
]

latex_logo = '_static/images/ACClogo.png'
