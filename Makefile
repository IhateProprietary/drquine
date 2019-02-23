#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jye <marvin@42.fr>                         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/02/19 18:48:02 by jye               #+#    #+#              #
#    Updated: 2019/02/23 11:13:03 by jye              ###   ########.fr        #
#                                                                              #
#******************************************************************************#

ASMPATH = ASM
CPATH = C

all:
	make -C $(CPATH)
	make -C $(ASMPATH)

clean:
	make -C $(ASMPATH) clean

fclean: clean
	make -C $(CPATH) fclean
	make -C $(ASMPATH) fclean

re: fclean all

.PHONY: all clean fclean re
