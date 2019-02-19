#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jye <marvin@42.fr>                         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/02/19 18:48:02 by jye               #+#    #+#              #
#    Updated: 2019/02/19 19:23:34 by jye              ###   ########.fr        #
#                                                                              #
#******************************************************************************#

ASMPATH = ASM
CPATH = C

NAME = Sully Grace Colleen

NAMEC = $(addprefix $(CPATH)/, $(NAME))
NAMEASM = $(addprefix $(ASMPATH)/, $(NAME))

all: $(NAMEC) $(NAMEASM)

$(NAMEC):
	make -C $(CPATH)

$(NAMEASM):
	make -C $(ASMPATH)

clean:
	make -C $(ASMPATH) clean

fclean: clean
	make -C $(CPATH) fclean
	make -C $(ASMPATH) fclean

re: fclean all

.PHONY: all clean fclean re
