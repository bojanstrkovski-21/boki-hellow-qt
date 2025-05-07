import subprocess


from PySide6.QtCore import QObject
from PySide6.QtUiTools import QUiLoader

loader = QUiLoader()
# -e ./UPacman.sh


def append_repos():
    subprocess.run("alacritty -e ./scripts/append_repo.sh", shell=True)


def uaur():
    subprocess.run("./scripts/UAur.sh", shell=True)


def upacman():
    subprocess.run("./scripts/UPacman.sh", shell=True)


def uflatpak():
    subprocess.run("./scripts/UFlatpak.sh", shell=True)


def mirrors_upd():
    subprocess.run("alacritty -e ./scripts/mirrors_upd.sh", shell=True)


def fix_keys():
    subprocess.run("alacritty -e ./scripts/fix_keys.sh", shell=True)


def refresh_keys():
    subprocess.run("alacritty -e ./scripts/refresh_keys.sh", shell=True)


class UserInterface(QObject):
    def __init__(self):
        super().__init__()
        self.ui = loader.load("BokiHellow.ui", None)
        self.ui.btn_uarch.clicked.connect(upacman)
        self.ui.btn_uaur.clicked.connect(uaur)
        self.ui.btn_uflatpak.clicked.connect(uflatpak)
        self.ui.btn_append_repos.clicked.connect(append_repos)
        self.ui.btn_umirrors.clicked.connect(mirrors_upd)
        self.ui.btn_fix_keyring.clicked.connect(fix_keys)
        self.ui.btn_refresh_keys.clicked.connect(refresh_keys)

    def show(self):
        self.ui.show()
