import json 
import numpy as np
import os

class CONFIG:
    def __init__(self, config_path):
        with open(config_path, 'r') as config_file:
            config = json.load(config_file)
        
        self.DTYPE = getattr(np, config["DTYPE"])
        self.MAX_ITER = config["MAX_ITER"]
        self.PROBLEM_PATH = config["PROBLEM_PATH"]
        
        self.THLD_MAX = config["THLD_MAX"]
        self.THLD_DELTA = config["THLD_DELTA"]
        
        self.LOG_FILE = config["LOG_FILE"]
        
        self.EXTENSION = config["EXTENSION"]
        self.RNG_APPROX_SELECTION = config["RNG_APPROX_SELECTION"]
        self.RNG_APPROX_CALC = config["RNG_APPROX_CALC"]
        self.LOG_APPROX = config["LOG_APPROX"]
        
        self.RNG_APPROX_SELECTION_BITS = config["RNG_APPROX_SELECTION_BITS"]
        self.RNG_APPROX_SELECTION_SEED = config["RNG_APPROX_SELECTION_SEED"]

        self.RNG_APPROX_CALC_BITS = config["RNG_APPROX_CALC_BITS"]
        self.RNG_APPROX_CALC_SEED = config["RNG_APPROX_CALC_SEED"]
        
        self.UNITS = config["UNITS"]
        
        print(config)
        if "TAYLOR_ORDER" in config:
            self.TAYLOR_ORDER = config["TAYLOR_ORDER"]

        if "PADE_ORDER" in config:
            self.PADE_ORDER = config["PADE_ORDER"]


if __name__ == "__main__":
    cfg = CONFIG(os.path.join("configs", "config_test.json"))
    