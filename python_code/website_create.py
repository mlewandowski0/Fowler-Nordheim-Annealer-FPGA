# combined.py
from manim import *
from moviepy.editor import VideoFileClip

class FPGAAndSolver(Scene):
    def construct(self):
        # 1. Load your solver video via MoviePy
        solver_clip = VideoFileClip("animation.mp4")
        solver = MoviePyClip(solver_clip).set_width(6)  # fit width to 6 units
        solver.to_edge(RIGHT)                          # push it to the right

        # 2. Load your FPGA photo as an ImageMobject
        fpga = ImageMobject("fpga.png")
        fpga.scale(1.5)        # enlarge or shrink as needed
        fpga.to_edge(LEFT)     # push it to the left

        # 3. Draw an arrow from the FPGA to the solver video
        arrow = Arrow(
            start=fpga.get_right(), 
            end=solver.get_left(), 
            buff=0.3            # small gap
        )

        # 4. Add everything into the scene
        self.add(fpga, solver, arrow)

        # 5. Let the video play out for its full duration
        self.wait(solver_clip.duration)
