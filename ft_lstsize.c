/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstsize.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ael-most <ael-most@student.1337.ma>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/10/25 17:35:42 by ael-most          #+#    #+#             */
/*   Updated: 2024/10/29 11:13:21 by ael-most         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int	ft_lstsize(t_list *lst)
{
	size_t	list_len;
	t_list	*temp;

	list_len = 0;
	temp = lst;
	while (temp != NULL)
	{
		list_len++;
		temp = temp->next;
	}
	return (list_len);
}
