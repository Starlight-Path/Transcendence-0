FROM perl:latest
RUN apt-get update && apt-get install -y texlive texlive-latex-extra latexmk
WORKDIR /app
COPY . .
VOLUME /app/output
CMD ["sh", "-c", "cd V1 && latexmk -pdf v1.tex && cp v1.pdf /app/output"]
