# SPDX-FileCopyrightText: © 2025 Leo Moser <leo.moser@pm.me>
# SPDX-License-Identifier: Apache-2.0

import pya
import argparse

def merge_fill(input_gds, fill_gds, output_gds, offset=(0, 0)):

    # Read greyhound
    layout = pya.Layout()
    layout.read(input_gds)
    top = layout.top_cell()

    # Read fill
    layout.read(fill_gds)

    # Insert fill
    fill_pattern = layout.cell("greyhound_ihp_top_fill_pattern")
    top.insert(pya.DCellInstArray(fill_pattern.cell_index(), pya.DTrans(pya.DTrans.R0, pya.DPoint(offset[0], offset[1]))))

    # Write layout
    layout.write(output_gds)

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Insert the fill pattern into the layout.')

    parser.add_argument('input_gds')
    parser.add_argument('fill_gds')
    parser.add_argument('output_gds')
    
    args = parser.parse_args()
    
    merge_fill(args.input_gds, args.fill_gds, args.output_gds, offset=(0, 0))
