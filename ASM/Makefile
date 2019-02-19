#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jye <marvin@42.fr>                         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/02/19 19:14:55 by jye               #+#    #+#              #
#    Updated: 2019/02/19 19:42:02 by jye              ###   ########.fr        #
#                                                                              #
#******************************************************************************#

CC = gcc

ASMC = nasm
ASMFLAGS = -fmacho64

NAME1 = Sully
NAME2 = Grace
NAME3 = Colleen

NAME = $(NAME3) $(NAME2) $(NAME1)

all: $(NAME)

$(NAME1):
	$(ASMC) $@.s $(ASMFLAGS)
	$(CC) $@.o -o $@

$(NAME2):
	$(ASMC) $@.s $(ASMFLAGS)
	$(CC) $@.o -o $@

$(NAME3):
	$(ASMC) $@.s $(ASMFLAGS)
	$(CC) $@.o -o $@

clean:
	rm -rf $(addsuffix .o, $(NAME))

fclean: clean
	rm -rf $(NAME)

re: fclean all

.PHONY: all clean fclean re
