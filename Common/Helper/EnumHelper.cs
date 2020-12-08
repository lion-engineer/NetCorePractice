using Common.Enum;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Reflection;
using System.Text;

namespace Common.Helper
{
    public static class EnumHelper
    {
        public static string GetEnumDisplayName(this UserTypeEnum userTypeEnum)
        {
            return userTypeEnum.GetType().GetMember(userTypeEnum.ToString())
                           .First()
                           .GetCustomAttribute<DisplayAttribute>()
                           .Name;
        }
    }
}
