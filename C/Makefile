#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jye <marvin@42.fr>                         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/02/19 19:12:02 by jye               #+#    #+#              #
#    Updated: 2019/03/03 16:04:29 by jye              ###   ########.fr        #
#                                                                              #
#******************************************************************************#

CC = gcc

NAME1 = Sully/Sully
NAME2 = Grace/Grace
NAME3 = Colleen/Colleen

NAME = $(NAME3) $(NAME2) $(NAME1)

all: $(NAME)

$(NAME1): $(NAME1).c
	$(CC) $@.c -o $@ -D__ORIGIN

$(NAME2): $(NAME2).c
	$(CC) $@.c -o $@

$(NAME3): $(NAME3).c
	$(CC) $@.c -o $@

fclean:
	rm -rf $(NAME)

re: fclean all

.PHONY: all fclean re
