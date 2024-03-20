.PHONY: content

CC = xelatex
CONTENT_DIR = content
RESUME_DIR = content/resume
CV_DIR = content/cv
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

content: $(foreach x, coverletter cv resume, $x.pdf)

resume.pdf: $(CONTENT_DIR)/resume.tex $(RESUME_SRCS)
	$(CC) -output-directory=$(CONTENT_DIR) $<

cv.pdf: $(CONTENT_DIR)/cv.tex $(CV_SRCS)
	$(CC) -output-directory=$(CONTENT_DIR) $<

coverletter.pdf: $(CONTENT_DIR)/coverletter.tex
	$(CC) -output-directory=$(CONTENT_DIR) $<

clean:
	rm -rf $(CONTENT_DIR)/*.pdf
