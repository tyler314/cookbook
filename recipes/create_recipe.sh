#!/bin/bash

# Check if filename argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename>"
    echo "Example: $0 recipe"
    exit 1
fi

# Get the filename from the first argument
filename="$1"

# Create the .tex file with the specified content
cat > "${filename}.tex" << 'EOF'
Ingredients

\begin{itemize}
	\item ...
	\item ...
	\item ...
\end{itemize}

\noindent
Directions
\newline

Directions here...
EOF

echo "Created ${filename}.tex"
