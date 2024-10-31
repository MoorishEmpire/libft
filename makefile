# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ael-most <ael-most@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/24 15:21:00 by ael-most          #+#    #+#              #
#    Updated: 2024/10/29 19:28:10 by ael-most         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

###############
## VARIABLES ##
###############

NAME = libft.a
#CC_STANDARD = gnu89
CC_WARNINGS = -Wall -Werror -Wextra #-Wpedantic
CC = cc
CCFLAGS = $(CC_WARNINGS) #-std=$(CC_STANDARD)
CC_COMPILER_CALL = $(CC) $(CCFLAGS)
RM = rm -f

###################
#### MANDATORY ####
###################

SRC = 	ft_isalpha.c ft_isdigit.c ft_isascii.c \
		ft_isprint.c ft_strlen.c ft_memset.c \
		ft_bzero.c ft_memcpy.c ft_memmove.c \
		ft_strlcpy.c ft_strlcat.c ft_toupper.c \
		ft_tolower.c ft_strchr.c ft_strrchr.c \
		ft_strncmp.c ft_memchr.c ft_memcmp.c \
		ft_isalnum.c ft_strnstr.c ft_atoi.c \
		ft_calloc.c ft_strdup.c ft_substr.c \
		ft_strjoin.c ft_strtrim.c ft_split.c \
		ft_itoa.c ft_strmapi.c ft_striteri.c \
		ft_putchar_fd.c ft_putstr_fd.c \
		ft_putendl_fd.c ft_putnbr_fd.c

OBJ = $(SRC:.c=.o) 

###############
#### BONUS ####
###############

BONUS_SRC =	ft_lstnew.c ft_lstadd_front.c \
			ft_lstadd_back.c ft_lstdelone.c \
			ft_lstclear.c ft_lstiter.c \
			ft_lstmap.c ft_lstlast.c \
			ft_lstsize.c

BONUS_OBJ = $(BONUS_SRC:.c=.o)

#############
## TARGETS ##
#############

all: $(NAME)

$(NAME): $(OBJ)
	ar rcs $(NAME) $(OBJ)

bonus: $(BONUS_OBJ)
	ar rcs $(NAME) $(BONUS_OBJ)

clean:
	$(RM) $(OBJ) $(BONUS_OBJ)

fclean: clean
	$(RM) *~ $(NAME)

re: fclean all

################
### PATTERNS ###
################

%.o : %.c libft.h
	$(CC_COMPILER_CALL) -c $< -o $@

###############
#### PHONY ####
###############

.PHONY: all clean fclean re bonus


