/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   strrchr.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ael-most <ael-most@student.1337.ma>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/10/22 01:42:31 by ael-most          #+#    #+#             */
/*   Updated: 2024/10/24 23:44:02 by ael-most         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strrchr(const char *s, int c)
{
	char	*ptr;
	char	target;

	target = (char)c;
	ptr = NULL;
	while (*s)
	{
		if (*s == target)
			ptr = (char *)s;
		s++;
	}
	if (target == '\0')
		return ((char *)s);
	return (ptr);
}