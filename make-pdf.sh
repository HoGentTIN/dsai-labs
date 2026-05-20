#! /usr/bin/env bash
#
# Generate a pdf of all the theory notebooks using nbconvert.
#
# Prerequisites:
#
# - nbmerge and jupyter nbconvert (e.g. in a Python venv)
# - xelatex (for converting to pdf)
#
# Warning: I now changed the template to use Montserrat, Fira Code and Fira Math
# fonts. This part is not automated.

# Configuration
readonly pdf_dir=pdf
readonly output_file=dsai-2526-theory

mkdir -p "${pdf_dir}"

# First, merge all notebooks in one big notebook
#  The "theory" notebooks all start with a number
nbmerge ./*/[1-7]*.ipynb >| "${pdf_dir}/${output_file}.ipynb"

# Replace the lightbulb emoji with a symbol that is present in Montserrat
sed -i 's/💡/¤/g' "${pdf_dir}/${output_file}.ipynb"

# Then, convert the merged notebook to pdf
set -x
jupyter nbconvert --to pdf \
  --debug \
  --output "${output_file}.pdf" \
  "${pdf_dir}/${output_file}.ipynb" 
{ set +x; } 2>/dev/null