GREEN = \033[38;5;2m
NORMAL = \033[38;5;255m
RED = \033[38;5;1m
BLUE = \033[38;5;4m
BRIGHTGREEN = \033[38;5;118m

SRCS = 		ft_atoi.c \
			ft_bzero.c \
			ft_calloc.c \
			ft_isalnum.c \
			ft_isalpha.c \
			ft_isascii.c \
			ft_isdigit.c \
			ft_isprint.c \
			ft_itoa.c \
			ft_memchr.c \
			ft_memcmp.c \
			ft_memcpy.c \
			ft_memmove.c \
			ft_memset.c \
			ft_putchar_fd.c \
			ft_putendl_fd.c \
			ft_putnbr_fd.c \
			ft_putstr_fd.c \
			ft_split.c \
			ft_strchr.c \
			ft_strdup.c \
			ft_striteri.c \
			ft_strjoin.c \
			ft_strlcat.c \
			ft_strlcpy.c \
			ft_strlen.c \
			ft_strmapi.c \
			ft_strncmp.c \
			ft_strnstr.c \
			ft_strrchr.c \
			ft_strtrim.c \
			ft_substr.c \
			ft_tolower.c \
			ft_toupper.c 		

NAME = libft.a

OBJS = $(SRCS:.c=.o)

CC = gcc

CC_FLAGS = -Wall -Wextra -Werror

%.o: %.c
	@echo "$(GREEN)Compiling: $(BRIGHTGREEN)$<$(NORMAL)"
	@${CC} ${CC_FLAGS} -c $< -o $@ 

$(NAME): $(OBJS)
	@echo "$(BLUE)Adding to library...$(NORMAL)"
	@ar rcs $(NAME) $(OBJS)
	@echo "$(GREEN)Successfully added to library!"

all: $(NAME)

clean:
	@echo "$(RED)Removing all object files...$(NORMAL)"
	@rm -f $(OBJS)
	@echo "$(GREEN)Succesfully removed all object files!"

fclean: clean
	@echo "$(RED)Removing libft.a...$(NORMAL)"
	@rm -f $(NAME)
	@echo "$(GREEN)Successfully removed libft.a!"

re: fclean all

.PHONY: all clean fclean re