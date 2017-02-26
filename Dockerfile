FROM mokemokechicken/jupyter-tensorflow 

RUN pip install --upgrade pip ;\
    pip install beautifulsoup4 ;\
    pip install lxml ;\
    pip install chainer ;\
    pip install --user -U pip setuptools  ;\
    pip uninstall --user pyparsing ;\
    pip install --user pyparsing=="1.5.7" pydot=="1.1.0"

CMD sh start-notebook.sh
