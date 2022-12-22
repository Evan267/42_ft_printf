/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isdigit.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: eberger <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/05 12:51:00 by eberger           #+#    #+#             */
/*   Updated: 2022/11/05 12:51:02 by eberger          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int	ft_isdigit(int chr)
{
	int	value;

	value = 1;
	if (chr < 48 || chr > 57)
		value = 0;
	return (value);
}