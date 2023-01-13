
SRCS		= ft_printf.c includes/ft_print_var.c includes/ft_convert_base.c includes/ft_print_str.c includes/ft_print_int.c

OBJS		= ${SRCS:.c=.o}

NAME		= libftprintf.a

CC			= gcc

CFLAGS		= -Wall -Wextra -Werror

.c.o:
	${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

${NAME}:	${OBJS} libft.a
			ar rc ${NAME} ${OBJS}

libft.a:
	make all -C libft
	mv libft/libft.a ./${NAME}

all:		${NAME}

clean:
			${RM} ${OBJS} ${OBJS_BONUS}
			make clean -C libft

fclean:		clean
			${RM} ${NAME}
			make fclean -C libft

re:			fclean all

.PHONY:		all clean fclean re
