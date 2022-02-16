SRCS = ft_*.c		

NAME = libft.a

OBJS = $(SRCS:.c=.o)

CC = gcc

CC_FLAGS = -c -Wall -Wextra -Werror

$(NAME): $(OBJS)
	$(CC) $(SRCS) libft.h $(CC_FLAGS)
	ar rcs $(NAME) $(OBJS)

all: $(NAME)

clean:
	-rm --force $(OBJS)
	-rm --force *.gch 

fclean: clean
	rm --force $(NAME)

re: fclean all

.PHONY: all clean fclean re