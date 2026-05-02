from pathlib import Path
import sqlite3

from build_data import rebuild_showcase


if __name__ == "__main__":
    rebuild_showcase()
    print("Rebuilt EMR showcase database.")
