using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;

namespace Common.Helper
{
    public class AssemblyHelper
    {
		public static List<Assembly> GetAssemblies(string path, List<string> filterEndsWithDlls)
		{
			var assemblies = new List<Assembly>();
			var allfiles = Directory.GetFiles(path, "*.dll", SearchOption.TopDirectoryOnly).AsEnumerable();
			var files = new List<string>();
			foreach (var filterEndsWithDll in filterEndsWithDlls)
			{
				files.AddRange(allfiles.Where(a => a.EndsWith(filterEndsWithDll)));
			}

			foreach (var file in files)
			{
				assemblies.Add(Assembly.LoadFrom(file));
			}
			return assemblies;
		}
	}
}
