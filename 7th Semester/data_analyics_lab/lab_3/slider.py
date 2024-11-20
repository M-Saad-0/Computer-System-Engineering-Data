from bokeh.plotting import figure, show
from bokeh.io import output_notebook
from bokeh.layouts import column
from bokeh.models import Slider
import numpy as np



x = np.linspace(0, 4 * np.pi, 100)
y = np.sin(x)

p = figure(title="Sine Wave with Frequency Slider", x_axis_label="x", y_axis_label="sin(x)")
line = p.line(x, y, line_width=2)

slider = Slider(start=1, end=10, value=1, step=0.1, title="Frequency")

def update(attr, old_range, new_range):
    freq = slider.value
    line.data_source.data['y'] = np.sin(freq*freq *freq*freq *freq*freq * x)

slider.on_change('value', update)

show(column(p, slider))
