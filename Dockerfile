FROM gcc:latest

RUN apt-get update && apt-get install -y \
	make neovim sudo universal-ctags
RUN useradd -m -s /bin/bash pawn
RUN echo 'export HISTFILE=~/.bash_history' >> /home/pawn/.bashrc && \
	echo 'source ~/.bash_pref' >> /home/pawn/.bashrc
USER pawn
RUN touch ~/.bash_hist && \
	touch ~/.bash_pref && \
	touch ~/.entrypoint.sh
WORKDIR /home/pawn
