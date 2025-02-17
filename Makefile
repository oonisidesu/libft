CC = cc
CFLAGS = -Wall -Wextra -Werror
NAME = libft.a
SRCS = ft_atoi.c \
		ft_calloc.c \
		ft_isalpha.c \
		ft_isdigit.c \
		ft_memchr.c \
		ft_memcpy.c \
		ft_memset.c \
		ft_strdup.c \
		ft_strlcat.c \
		ft_strlen.c \
		ft_strnstr.c \
		ft_tolower.c \
		ft_bzero.c \
		ft_isalnum.c \
		ft_isascii.c \
		ft_isprint.c \
		ft_memcmp.c \
		ft_memmove.c \
		ft_strchr.c \
		ft_strjoin.c \
		ft_strlcpy.c \
		ft_strncmp.c \
		ft_strrchr.c \
		ft_substr.c \
		ft_toupper.c \
		ft_strtrim.c \
		ft_putchar_fd.c \
		ft_putstr_fd.c \
		ft_putendl_fd.c \
		ft_putnbr_fd.c \
		ft_itoa.c \
		ft_strmapi.c \
		ft_striteri.c \
		ft_split.c \
		ft_atoi_int.c \
		ft_atoi_long.c \
		ft_pow.c \
		ft_strtrim_r.c \
		ft_strtrim_l.c
OBJS  = $(SRCS:.c=.o)
BONUS = ft_lstnew.c \
		ft_lstadd_front.c \
		ft_lstsize.c \
		ft_lstlast.c \
		ft_lstadd_back.c \
		ft_lstdelone.c \
		ft_lstclear.c \
		ft_lstiter.c \
		ft_lstmap.c
BONUS_OBJS  = $(BONUS:.c=.o)
ifdef BONUS_FLAG
	OBJS += $(BONUS_OBJS)
endif
all: $(NAME)
$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)
clean:
	rm -f $(OBJS) $(BONUS_OBJS)
fclean: clean
	rm -f $(NAME)
re: fclean all
bonus:
	@make BONUS_FLAG=1
.PHONY: all clean fclean re bonus