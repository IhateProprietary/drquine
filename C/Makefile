#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jye <marvin@42.fr>                         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/02/19 19:12:02 by jye               #+#    #+#              #
#    Updated: 2019/02/19 19:41:12 by jye              ###   ########.fr        #
#                                                                              #
#******************************************************************************#

CC = gcc

NAME1 = Sully
NAME2 = Grace
NAME3 = Colleen

NAME = $(NAME3) $(NAME2) $(NAME1)

all: $(NAME)

$(NAME1):
	$(CC) $@.c -o $@

$(NAME2):
	$(CC) $@.c -o $@

$(NAME3):
	$(CC) $@.c -o $@

fclean:
	rm -rf $(NAME)

re: fclean all

.PHONY: all fclean re
