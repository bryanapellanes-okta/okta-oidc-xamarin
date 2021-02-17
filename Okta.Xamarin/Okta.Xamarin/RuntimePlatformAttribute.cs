using System;
using System.Collections.Generic;
using System.Text;

namespace Okta.Xamarin
{
	public class RuntimePlatformAttribute : Attribute
	{
		public RuntimePlatformAttribute(string name)
		{
			this.Name = name;
		}

		public string Name{ get; set; }
	}
}
