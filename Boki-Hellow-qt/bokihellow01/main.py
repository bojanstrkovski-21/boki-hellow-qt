import sys

from PySide6 import QtWidgets
from boki_hellow import BokiHellow

app = QtWidgets.QApplication(sys.argv)

window = BokiHellow()
window.show()

app.exec()
