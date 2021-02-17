using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace Okta.Xamarin.Droid
{
	public class AndroidOktaContext : OktaContext
	{
		public static void Init(Context context, Stream configStream)
		{
			Init(new AndroidOidcClient(context, AndroidOktaConfig.LoadFromXmlStream(configStream)));
		}
	}
}