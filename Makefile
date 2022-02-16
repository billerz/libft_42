SRCS = ft_*.c		

NAME = libft.a

OBJS = $(SRCS:.c=.o)

OBJSB = $(OBJS) $(SRCSB:.c=.o)

CC = gcc

CC_FLAGS = -c -Wall -Wextra -Werror

$(NAME): $(OBJS)
	$(CC) $(SRCS) libft.h $(CC_FLAGS)
	ar rcs $(NAME) $(OBJS)

all: $(NAME)

clean:
	-rm -f $(OBJSB)
	-rm *.gch 

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re bonus