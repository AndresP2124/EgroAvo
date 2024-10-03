; ModuleID = 'obj\Debug\130\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [236 x i32] [
	i32 27860520, ; 0: EvoAgro.Android.dll => 0x1a91e28 => 0
	i32 32687329, ; 1: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 72
	i32 34715100, ; 2: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 101
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 96
	i32 101534019, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 86
	i32 120558881, ; 5: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 86
	i32 165246403, ; 6: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 53
	i32 182336117, ; 7: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 87
	i32 209399409, ; 8: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 51
	i32 230216969, ; 9: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 67
	i32 230752869, ; 10: Microsoft.CSharp.dll => 0xdc10265 => 10
	i32 232815796, ; 11: System.Web.Services => 0xde07cb4 => 109
	i32 261689757, ; 12: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 56
	i32 278686392, ; 13: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 71
	i32 280482487, ; 14: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 65
	i32 318968648, ; 15: Xamarin.AndroidX.Activity.dll => 0x13031348 => 43
	i32 321597661, ; 16: System.Numerics => 0x132b30dd => 32
	i32 330147069, ; 17: Microsoft.SqlServer.Server => 0x13ada4fd => 20
	i32 342366114, ; 18: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 69
	i32 369342918, ; 19: EvoAgro.dll => 0x1603b9c6 => 6
	i32 385762202, ; 20: System.Memory.dll => 0x16fe439a => 31
	i32 441335492, ; 21: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 55
	i32 442521989, ; 22: Xamarin.Essentials => 0x1a605985 => 95
	i32 450948140, ; 23: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 64
	i32 465846621, ; 24: mscorlib => 0x1bc4415d => 22
	i32 469710990, ; 25: System.dll => 0x1bff388e => 27
	i32 476646585, ; 26: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 65
	i32 485463106, ; 27: Microsoft.IdentityModel.Abstractions => 0x1cef9442 => 14
	i32 486594725, ; 28: EvoAgro => 0x1d00d8a5 => 6
	i32 486930444, ; 29: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 76
	i32 526420162, ; 30: System.Transactions.dll => 0x1f6088c2 => 103
	i32 548916678, ; 31: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 9
	i32 577335427, ; 32: System.Security.Cryptography.Cng => 0x22697083 => 114
	i32 605376203, ; 33: System.IO.Compression.FileSystem => 0x24154ecb => 107
	i32 627609679, ; 34: Xamarin.AndroidX.CustomView => 0x2568904f => 60
	i32 662205335, ; 35: System.Text.Encodings.Web.dll => 0x27787397 => 39
	i32 663517072, ; 36: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 92
	i32 666292255, ; 37: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 48
	i32 690569205, ; 38: System.Xml.Linq.dll => 0x29293ff5 => 42
	i32 722857257, ; 39: System.Runtime.Loader.dll => 0x2b15ed29 => 36
	i32 723796036, ; 40: System.ClientModel.dll => 0x2b244044 => 24
	i32 775507847, ; 41: System.IO.Compression => 0x2e394f87 => 106
	i32 809851609, ; 42: System.Drawing.Common.dll => 0x30455ad9 => 105
	i32 843511501, ; 43: Xamarin.AndroidX.Print => 0x3246f6cd => 83
	i32 928116545, ; 44: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 101
	i32 967690846, ; 45: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 69
	i32 974778368, ; 46: FormsViewGroup.dll => 0x3a19f000 => 7
	i32 1012816738, ; 47: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 85
	i32 1035644815, ; 48: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 47
	i32 1042160112, ; 49: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 98
	i32 1052210849, ; 50: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 73
	i32 1062017875, ; 51: Microsoft.Identity.Client.Extensions.Msal => 0x3f4d1b53 => 13
	i32 1098259244, ; 52: System => 0x41761b2c => 27
	i32 1138436374, ; 53: Microsoft.Data.SqlClient.dll => 0x43db2916 => 11
	i32 1175144683, ; 54: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 90
	i32 1178241025, ; 55: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 80
	i32 1204270330, ; 56: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 48
	i32 1267360935, ; 57: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 91
	i32 1293217323, ; 58: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 62
	i32 1345489484, ; 59: EvoAgro.Android => 0x50328a4c => 0
	i32 1364015309, ; 60: System.IO => 0x514d38cd => 117
	i32 1365406463, ; 61: System.ServiceModel.Internals.dll => 0x516272ff => 110
	i32 1376866003, ; 62: Xamarin.AndroidX.SavedState => 0x52114ed3 => 85
	i32 1395857551, ; 63: Xamarin.AndroidX.Media.dll => 0x5333188f => 77
	i32 1406073936, ; 64: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 57
	i32 1411638395, ; 65: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 34
	i32 1460219004, ; 66: Xamarin.Forms.Xaml => 0x57092c7c => 99
	i32 1460893475, ; 67: System.IdentityModel.Tokens.Jwt => 0x57137723 => 28
	i32 1462112819, ; 68: System.IO.Compression.dll => 0x57261233 => 106
	i32 1469204771, ; 69: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 46
	i32 1498168481, ; 70: Microsoft.IdentityModel.JsonWebTokens.dll => 0x594c3ca1 => 15
	i32 1582305585, ; 71: Azure.Identity => 0x5e501131 => 5
	i32 1582372066, ; 72: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 61
	i32 1592978981, ; 73: System.Runtime.Serialization.dll => 0x5ef2ee25 => 3
	i32 1622152042, ; 74: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 75
	i32 1624863272, ; 75: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 94
	i32 1628113371, ; 76: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x610b09db => 18
	i32 1636350590, ; 77: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 59
	i32 1639515021, ; 78: System.Net.Http.dll => 0x61b9038d => 2
	i32 1657153582, ; 79: System.Runtime => 0x62c6282e => 35
	i32 1658241508, ; 80: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 88
	i32 1658251792, ; 81: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 100
	i32 1670060433, ; 82: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 56
	i32 1726116996, ; 83: System.Reflection.dll => 0x66e27484 => 116
	i32 1729485958, ; 84: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 52
	i32 1766324549, ; 85: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 87
	i32 1776026572, ; 86: System.Core.dll => 0x69dc03cc => 25
	i32 1788241197, ; 87: Xamarin.AndroidX.Fragment => 0x6a96652d => 64
	i32 1794500907, ; 88: Microsoft.Identity.Client.dll => 0x6af5e92b => 12
	i32 1796167890, ; 89: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 9
	i32 1808609942, ; 90: Xamarin.AndroidX.Loader => 0x6bcd3296 => 75
	i32 1813201214, ; 91: Xamarin.Google.Android.Material => 0x6c13413e => 100
	i32 1818569960, ; 92: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 81
	i32 1867746548, ; 93: Xamarin.Essentials.dll => 0x6f538cf4 => 95
	i32 1871986876, ; 94: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0x6f9440bc => 18
	i32 1878053835, ; 95: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 99
	i32 1885316902, ; 96: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 49
	i32 1919157823, ; 97: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 78
	i32 1986222447, ; 98: Microsoft.IdentityModel.Tokens.dll => 0x7663596f => 19
	i32 2011961780, ; 99: System.Buffers.dll => 0x77ec19b4 => 23
	i32 2019465201, ; 100: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 73
	i32 2040764568, ; 101: Microsoft.Identity.Client.Extensions.Msal.dll => 0x79a39898 => 13
	i32 2055257422, ; 102: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 70
	i32 2079903147, ; 103: System.Runtime.dll => 0x7bf8cdab => 35
	i32 2090596640, ; 104: System.Numerics.Vectors => 0x7c9bf920 => 33
	i32 2097448633, ; 105: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 66
	i32 2126786730, ; 106: Xamarin.Forms.Platform.Android => 0x7ec430aa => 97
	i32 2201231467, ; 107: System.Net.Http => 0x8334206b => 2
	i32 2217644978, ; 108: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 90
	i32 2244775296, ; 109: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 76
	i32 2253551641, ; 110: Microsoft.IdentityModel.Protocols => 0x86527819 => 17
	i32 2256548716, ; 111: Xamarin.AndroidX.MultiDex => 0x8680336c => 78
	i32 2261435625, ; 112: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 68
	i32 2265110946, ; 113: System.Security.AccessControl.dll => 0x8702d9a2 => 37
	i32 2279755925, ; 114: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 84
	i32 2315684594, ; 115: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 44
	i32 2369706906, ; 116: Microsoft.IdentityModel.Logging => 0x8d3edb9a => 16
	i32 2383496789, ; 117: System.Security.Principal.Windows.dll => 0x8e114655 => 38
	i32 2409053734, ; 118: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 82
	i32 2465532216, ; 119: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 55
	i32 2471841756, ; 120: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 121: Java.Interop.dll => 0x93918882 => 8
	i32 2501346920, ; 122: System.Data.DataSetExtensions => 0x95178668 => 104
	i32 2505896520, ; 123: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 72
	i32 2562349572, ; 124: Microsoft.CSharp => 0x98ba5a04 => 10
	i32 2570120770, ; 125: System.Text.Encodings.Web => 0x9930ee42 => 39
	i32 2581819634, ; 126: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 91
	i32 2620871830, ; 127: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 59
	i32 2624644809, ; 128: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 63
	i32 2628210652, ; 129: System.Memory.Data => 0x9ca74fdc => 30
	i32 2633051222, ; 130: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 71
	i32 2640290731, ; 131: Microsoft.IdentityModel.Logging.dll => 0x9d5fa3ab => 16
	i32 2640706905, ; 132: Azure.Core => 0x9d65fd59 => 4
	i32 2660759594, ; 133: System.Security.Cryptography.ProtectedData.dll => 0x9e97f82a => 112
	i32 2663698177, ; 134: System.Runtime.Loader => 0x9ec4cf01 => 36
	i32 2677098746, ; 135: Azure.Identity.dll => 0x9f9148fa => 5
	i32 2693849962, ; 136: System.IO.dll => 0xa090e36a => 117
	i32 2701096212, ; 137: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 88
	i32 2719963679, ; 138: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 114
	i32 2732626843, ; 139: Xamarin.AndroidX.Activity => 0xa2e0939b => 43
	i32 2737747696, ; 140: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 46
	i32 2740051746, ; 141: Microsoft.Identity.Client => 0xa351df22 => 12
	i32 2755098380, ; 142: Microsoft.SqlServer.Server.dll => 0xa437770c => 20
	i32 2766581644, ; 143: Xamarin.Forms.Core => 0xa4e6af8c => 96
	i32 2778768386, ; 144: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 93
	i32 2810250172, ; 145: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 57
	i32 2819470561, ; 146: System.Xml.dll => 0xa80db4e1 => 41
	i32 2853208004, ; 147: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 93
	i32 2855708567, ; 148: Xamarin.AndroidX.Transition => 0xaa36a797 => 89
	i32 2867946736, ; 149: System.Security.Cryptography.ProtectedData => 0xaaf164f0 => 112
	i32 2901442782, ; 150: System.Reflection => 0xacf080de => 116
	i32 2903344695, ; 151: System.ComponentModel.Composition => 0xad0d8637 => 108
	i32 2905242038, ; 152: mscorlib.dll => 0xad2a79b6 => 22
	i32 2916838712, ; 153: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 94
	i32 2919462931, ; 154: System.Numerics.Vectors.dll => 0xae037813 => 33
	i32 2921128767, ; 155: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 45
	i32 2968338931, ; 156: System.Security.Principal.Windows => 0xb0ed41f3 => 38
	i32 2978675010, ; 157: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 62
	i32 3024354802, ; 158: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 67
	i32 3033605958, ; 159: System.Memory.Data.dll => 0xb4d12746 => 30
	i32 3044182254, ; 160: FormsViewGroup => 0xb57288ee => 7
	i32 3057625584, ; 161: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 79
	i32 3084678329, ; 162: Microsoft.IdentityModel.Tokens => 0xb7dc74b9 => 19
	i32 3111772706, ; 163: System.Runtime.Serialization => 0xb979e222 => 3
	i32 3121463068, ; 164: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 29
	i32 3124832203, ; 165: System.Threading.Tasks.Extensions => 0xba4127cb => 111
	i32 3132293585, ; 166: System.Security.AccessControl => 0xbab301d1 => 37
	i32 3204380047, ; 167: System.Data.dll => 0xbefef58f => 102
	i32 3211777861, ; 168: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 61
	i32 3247949154, ; 169: Mono.Security => 0xc197c562 => 115
	i32 3258312781, ; 170: Xamarin.AndroidX.CardView => 0xc235e84d => 52
	i32 3265893370, ; 171: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 111
	i32 3267021929, ; 172: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 50
	i32 3312457198, ; 173: Microsoft.IdentityModel.JsonWebTokens => 0xc57015ee => 15
	i32 3317135071, ; 174: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 60
	i32 3317144872, ; 175: System.Data => 0xc5b79d28 => 102
	i32 3340431453, ; 176: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 49
	i32 3346324047, ; 177: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 80
	i32 3353484488, ; 178: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 66
	i32 3358260929, ; 179: System.Text.Json => 0xc82afec1 => 40
	i32 3362522851, ; 180: Xamarin.AndroidX.Core => 0xc86c06e3 => 58
	i32 3366347497, ; 181: Java.Interop => 0xc8a662e9 => 8
	i32 3374879918, ; 182: Microsoft.IdentityModel.Protocols.dll => 0xc92894ae => 17
	i32 3374999561, ; 183: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 84
	i32 3395150330, ; 184: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 34
	i32 3404865022, ; 185: System.ServiceModel.Internals => 0xcaf21dfe => 110
	i32 3429136800, ; 186: System.Xml => 0xcc6479a0 => 41
	i32 3430777524, ; 187: netstandard => 0xcc7d82b4 => 1
	i32 3441283291, ; 188: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 63
	i32 3476120550, ; 189: Mono.Android => 0xcf3163e6 => 21
	i32 3485117614, ; 190: System.Text.Json.dll => 0xcfbaacae => 40
	i32 3486566296, ; 191: System.Transactions => 0xcfd0c798 => 103
	i32 3493954962, ; 192: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 54
	i32 3501239056, ; 193: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 50
	i32 3509114376, ; 194: System.Xml.Linq => 0xd128d608 => 42
	i32 3515174580, ; 195: System.Security.dll => 0xd1854eb4 => 113
	i32 3536029504, ; 196: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 97
	i32 3545306353, ; 197: Microsoft.Data.SqlClient => 0xd35114f1 => 11
	i32 3558648585, ; 198: System.ClientModel => 0xd41cab09 => 24
	i32 3561949811, ; 199: Azure.Core.dll => 0xd44f0a73 => 4
	i32 3567349600, ; 200: System.ComponentModel.Composition.dll => 0xd4a16f60 => 108
	i32 3570554715, ; 201: System.IO.FileSystem.AccessControl => 0xd4d2575b => 29
	i32 3618140916, ; 202: Xamarin.AndroidX.Preference => 0xd7a872f4 => 82
	i32 3627220390, ; 203: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 83
	i32 3632359727, ; 204: Xamarin.Forms.Platform => 0xd881692f => 98
	i32 3633644679, ; 205: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 45
	i32 3641597786, ; 206: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 70
	i32 3672681054, ; 207: Mono.Android.dll => 0xdae8aa5e => 21
	i32 3676310014, ; 208: System.Web.Services.dll => 0xdb2009fe => 109
	i32 3682565725, ; 209: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 51
	i32 3684561358, ; 210: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 54
	i32 3689375977, ; 211: System.Drawing.Common => 0xdbe768e9 => 105
	i32 3700591436, ; 212: Microsoft.IdentityModel.Abstractions.dll => 0xdc928b4c => 14
	i32 3718780102, ; 213: Xamarin.AndroidX.Annotation => 0xdda814c6 => 44
	i32 3724971120, ; 214: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 79
	i32 3748608112, ; 215: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 26
	i32 3758932259, ; 216: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 68
	i32 3786282454, ; 217: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 53
	i32 3822602673, ; 218: Xamarin.AndroidX.Media => 0xe3d849b1 => 77
	i32 3829621856, ; 219: System.Numerics.dll => 0xe4436460 => 32
	i32 3885922214, ; 220: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 89
	i32 3896760992, ; 221: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 58
	i32 3920810846, ; 222: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 107
	i32 3921031405, ; 223: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 92
	i32 3931092270, ; 224: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 81
	i32 3945713374, ; 225: System.Data.DataSetExtensions.dll => 0xeb2ecede => 104
	i32 3955647286, ; 226: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 47
	i32 4025784931, ; 227: System.Memory => 0xeff49a63 => 31
	i32 4105002889, ; 228: Mono.Security.dll => 0xf4ad5f89 => 115
	i32 4151237749, ; 229: System.Core => 0xf76edc75 => 25
	i32 4182413190, ; 230: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 74
	i32 4185676441, ; 231: System.Security => 0xf97c5a99 => 113
	i32 4213026141, ; 232: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 26
	i32 4260525087, ; 233: System.Buffers => 0xfdf2741f => 23
	i32 4263231520, ; 234: System.IdentityModel.Tokens.Jwt.dll => 0xfe1bc020 => 28
	i32 4292120959 ; 235: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 74
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [236 x i32] [
	i32 0, i32 72, i32 101, i32 96, i32 86, i32 86, i32 53, i32 87, ; 0..7
	i32 51, i32 67, i32 10, i32 109, i32 56, i32 71, i32 65, i32 43, ; 8..15
	i32 32, i32 20, i32 69, i32 6, i32 31, i32 55, i32 95, i32 64, ; 16..23
	i32 22, i32 27, i32 65, i32 14, i32 6, i32 76, i32 103, i32 9, ; 24..31
	i32 114, i32 107, i32 60, i32 39, i32 92, i32 48, i32 42, i32 36, ; 32..39
	i32 24, i32 106, i32 105, i32 83, i32 101, i32 69, i32 7, i32 85, ; 40..47
	i32 47, i32 98, i32 73, i32 13, i32 27, i32 11, i32 90, i32 80, ; 48..55
	i32 48, i32 91, i32 62, i32 0, i32 117, i32 110, i32 85, i32 77, ; 56..63
	i32 57, i32 34, i32 99, i32 28, i32 106, i32 46, i32 15, i32 5, ; 64..71
	i32 61, i32 3, i32 75, i32 94, i32 18, i32 59, i32 2, i32 35, ; 72..79
	i32 88, i32 100, i32 56, i32 116, i32 52, i32 87, i32 25, i32 64, ; 80..87
	i32 12, i32 9, i32 75, i32 100, i32 81, i32 95, i32 18, i32 99, ; 88..95
	i32 49, i32 78, i32 19, i32 23, i32 73, i32 13, i32 70, i32 35, ; 96..103
	i32 33, i32 66, i32 97, i32 2, i32 90, i32 76, i32 17, i32 78, ; 104..111
	i32 68, i32 37, i32 84, i32 44, i32 16, i32 38, i32 82, i32 55, ; 112..119
	i32 1, i32 8, i32 104, i32 72, i32 10, i32 39, i32 91, i32 59, ; 120..127
	i32 63, i32 30, i32 71, i32 16, i32 4, i32 112, i32 36, i32 5, ; 128..135
	i32 117, i32 88, i32 114, i32 43, i32 46, i32 12, i32 20, i32 96, ; 136..143
	i32 93, i32 57, i32 41, i32 93, i32 89, i32 112, i32 116, i32 108, ; 144..151
	i32 22, i32 94, i32 33, i32 45, i32 38, i32 62, i32 67, i32 30, ; 152..159
	i32 7, i32 79, i32 19, i32 3, i32 29, i32 111, i32 37, i32 102, ; 160..167
	i32 61, i32 115, i32 52, i32 111, i32 50, i32 15, i32 60, i32 102, ; 168..175
	i32 49, i32 80, i32 66, i32 40, i32 58, i32 8, i32 17, i32 84, ; 176..183
	i32 34, i32 110, i32 41, i32 1, i32 63, i32 21, i32 40, i32 103, ; 184..191
	i32 54, i32 50, i32 42, i32 113, i32 97, i32 11, i32 24, i32 4, ; 192..199
	i32 108, i32 29, i32 82, i32 83, i32 98, i32 45, i32 70, i32 21, ; 200..207
	i32 109, i32 51, i32 54, i32 105, i32 14, i32 44, i32 79, i32 26, ; 208..215
	i32 68, i32 53, i32 77, i32 32, i32 89, i32 58, i32 107, i32 92, ; 216..223
	i32 81, i32 104, i32 47, i32 31, i32 115, i32 25, i32 74, i32 113, ; 224..231
	i32 26, i32 23, i32 28, i32 74 ; 232..235
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
