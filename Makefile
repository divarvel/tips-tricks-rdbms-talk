all: slides.html

slides.html: slides.md template.html
	pandoc -t dzslides \
		   --self-contained \
		   --template template.html \
	       -s slides.md \
		   -o slides.html

standalone: slides.md template.html
	pandoc -t dzslides \
		   --template template.html \
	       -s slides.md \
		   -o slides-light.html

clean:
	-rm slides.html
