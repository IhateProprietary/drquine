#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jye <marvin@42.fr>                         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/02/19 19:14:55 by jye               #+#    #+#              #
#    Updated: 2019/03/02 20:53:59 by jye              ###   ########.fr        #
#                                                                              #
#******************************************************************************#

CC = gcc

ASMC = nasm
ASMFLAGS = -fmacho64

NAME1 = Sully/Sully
NAME2 = Grace/Grace
NAME3 = Colleen/Colleen

NAME = $(NAME3) $(NAME2) $(NAME1)

all: $(NAME)

$(NAME1): Sully/Sully.s
	$(ASMC) $@.s $(ASMFLAGS) -D__ORIGIN
	$(CC) $@.o -o $@
	rm -rf Sully/Sully.o

$(NAME2): Grace/Grace.s
	$(ASMC) $@.s $(ASMFLAGS)
	$(CC) $@.o -o $@
	rm -rf Grace/Grace.o

$(NAME3): Colleen/Colleen.s
	$(ASMC) $@.s $(ASMFLAGS)
	$(CC) $@.o -o $@
	rm -rf Colleen/Colleen.o

clean:

fclean: clean
	rm -rf $(NAME)

re: fclean all

.PHONY: all clean fclean re
