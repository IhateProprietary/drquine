#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jye <marvin@42.fr>                         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/02/19 19:12:02 by jye               #+#    #+#              #
#    Updated: 2019/02/23 11:10:22 by jye              ###   ########.fr        #
#                                                                              #
#******************************************************************************#

CC = gcc

NAME1 = Sully
NAME2 = Grace
NAME3 = Colleen

NAME = $(NAME3) $(NAME2) $(NAME1)

all: $(NAME)

$(NAME1): Sully.c
	$(CC) $@.c -o $@

$(NAME2): Grace.c
	$(CC) $@.c -o $@

$(NAME3): Colleen.c
	$(CC) $@.c -o $@

fclean:
	rm -rf $(NAME)

re: fclean all

.PHONY: all fclean re
