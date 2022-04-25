NAME = libft.a

all: $(NAME)

$(NAME): ft_*.o libft.h
	ar r $(NAME) ft_*.o

ft_*.o: ft_*.c
	gcc -Wall -Wextra -Werror -c ft_*.c

clean:
	/bin/rm -f *.o

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all

bonus: ft_*.o libft.h
	ar r $(NAME) ft_*.o
