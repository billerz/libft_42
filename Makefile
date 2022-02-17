SRCS = *.c		

NAME = libft.a

OBJS = $(SRCS:.c=.o)

CC = gcc

CC_FLAGS = -c -Wall -Wextra -Werror

$(NAME): $(OBJS)
	$(CC) $(SRCS) $(CC_FLAGS)
	ar rcs $(NAME) $(OBJS)

all: $(NAME)

clean:
	-rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re