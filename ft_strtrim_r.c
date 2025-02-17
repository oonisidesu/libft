/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strtrim_r.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ootsuboyoshiyuki <ootsuboyoshiyuki@stud    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/12/10 16:41:25 by ootsuboyosh       #+#    #+#             */
/*   Updated: 2024/12/10 16:42:12 by ootsuboyosh      ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strtrim_r(char const *s1, char const *set)
{
	char	*new_str;
	size_t	start;
	size_t	end;
	size_t	len;

	if (s1 == NULL || set == NULL)
		return (NULL);
	start = 0;
	end = ft_strlen(s1);
	while (end > start && ft_strchr(set, s1[end - 1]) != NULL)
		end--;
	len = end - start;
	new_str = (char *)malloc((len + 1) * sizeof(char));
	if (new_str == NULL)
		return (NULL);
	ft_strlcpy(new_str, s1 + start, len + 1);
	return (new_str);
}
