; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [312 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [618 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 232
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 266
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39485524, ; 6: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 7: System.Threading.Thread => 0x28aa24d => 145
	i32 66541672, ; 8: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 9: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 307
	i32 68219467, ; 10: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 11: Microsoft.Maui.Graphics.dll => 0x44bb714 => 190
	i32 82292897, ; 12: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 101534019, ; 13: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 250
	i32 117431740, ; 14: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 15: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 250
	i32 122350210, ; 16: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 17: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 270
	i32 142721839, ; 18: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 19: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 20: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 21: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 206
	i32 176265551, ; 22: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 23: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 252
	i32 184328833, ; 24: System.ValueTuple.dll => 0xafca281 => 151
	i32 195452805, ; 25: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 304
	i32 199333315, ; 26: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 305
	i32 205061960, ; 27: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 28: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 204
	i32 220171995, ; 29: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 30: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 226
	i32 230752869, ; 31: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 32: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 33: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 34: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 261689757, ; 35: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 209
	i32 276479776, ; 36: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 37: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 228
	i32 280482487, ; 38: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 225
	i32 280992041, ; 39: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 276
	i32 291076382, ; 40: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 41: System.Net.Ping.dll => 0x11d123fd => 69
	i32 317674968, ; 42: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 304
	i32 318968648, ; 43: Xamarin.AndroidX.Activity.dll => 0x13031348 => 195
	i32 321597661, ; 44: System.Numerics => 0x132b30dd => 83
	i32 336156722, ; 45: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 289
	i32 342366114, ; 46: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 227
	i32 356389973, ; 47: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 288
	i32 360082299, ; 48: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 49: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 50: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 51: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 52: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 53: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 54: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 55: _Microsoft.Android.Resource.Designer => 0x17969339 => 308
	i32 403441872, ; 56: WindowsBase => 0x180c08d0 => 165
	i32 435591531, ; 57: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 300
	i32 441335492, ; 58: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 210
	i32 442565967, ; 59: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 60: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 223
	i32 451504562, ; 61: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 62: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 63: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 64: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 65: System.dll => 0x1bff388e => 164
	i32 476646585, ; 66: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 225
	i32 486930444, ; 67: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 238
	i32 498788369, ; 68: System.ObjectModel => 0x1dbae811 => 84
	i32 500358224, ; 69: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 287
	i32 503918385, ; 70: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 281
	i32 513247710, ; 71: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 184
	i32 526420162, ; 72: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 73: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 270
	i32 530272170, ; 74: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 539058512, ; 75: Microsoft.Extensions.Logging => 0x20216150 => 181
	i32 540030774, ; 76: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 77: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 78: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 79: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 80: Jsr305Binding => 0x213954e7 => 263
	i32 569601784, ; 81: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 261
	i32 577335427, ; 82: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 592146354, ; 83: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 295
	i32 597488923, ; 84: CommunityToolkit.Maui => 0x239cf51b => 173
	i32 601371474, ; 85: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 86: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 87: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 88: Xamarin.AndroidX.CustomView => 0x2568904f => 215
	i32 627931235, ; 89: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 293
	i32 639843206, ; 90: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 221
	i32 643868501, ; 91: System.Net => 0x2660a755 => 81
	i32 662205335, ; 92: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 93: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 257
	i32 666292255, ; 94: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 202
	i32 672442732, ; 95: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 96: System.Net.Security => 0x28bdabca => 73
	i32 688181140, ; 97: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 275
	i32 690569205, ; 98: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 99: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 272
	i32 693804605, ; 100: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 101: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 102: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 267
	i32 700358131, ; 103: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 706645707, ; 104: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 290
	i32 709557578, ; 105: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 278
	i32 720511267, ; 106: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 271
	i32 722857257, ; 107: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 108: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 109: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 110: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 192
	i32 759454413, ; 111: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 112: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 113: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 114: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 299
	i32 789151979, ; 115: Microsoft.Extensions.Options => 0x2f0980eb => 183
	i32 790371945, ; 116: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 216
	i32 804715423, ; 117: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 118: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 230
	i32 823281589, ; 119: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 120: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 121: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 122: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 123: Xamarin.AndroidX.Print => 0x3246f6cd => 243
	i32 873119928, ; 124: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 125: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 126: System.Net.Http.Json => 0x3463c971 => 63
	i32 904024072, ; 127: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 128: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 926902833, ; 129: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 302
	i32 928116545, ; 130: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 266
	i32 952186615, ; 131: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 956575887, ; 132: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 271
	i32 966729478, ; 133: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 264
	i32 967690846, ; 134: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 227
	i32 975236339, ; 135: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 136: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 137: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 138: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 139: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 140: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 1001831731, ; 141: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 142: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 247
	i32 1019214401, ; 143: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 144: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 180
	i32 1029334545, ; 145: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 277
	i32 1031528504, ; 146: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 265
	i32 1035644815, ; 147: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 200
	i32 1036536393, ; 148: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 149: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 150: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 234
	i32 1067306892, ; 151: GoogleGson => 0x3f9dcf8c => 176
	i32 1082857460, ; 152: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 153: Xamarin.Kotlin.StdLib => 0x409e66d8 => 268
	i32 1098259244, ; 154: System => 0x41761b2c => 164
	i32 1118262833, ; 155: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 290
	i32 1121599056, ; 156: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 233
	i32 1149092582, ; 157: Xamarin.AndroidX.Window => 0x447dc2e6 => 260
	i32 1168523401, ; 158: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 296
	i32 1170634674, ; 159: System.Web.dll => 0x45c677b2 => 153
	i32 1175144683, ; 160: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 256
	i32 1178241025, ; 161: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 241
	i32 1203215381, ; 162: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 294
	i32 1204270330, ; 163: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 202
	i32 1208641965, ; 164: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1214827643, ; 165: CommunityToolkit.Mvvm => 0x4868cc7b => 175
	i32 1219128291, ; 166: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1234928153, ; 167: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 292
	i32 1243150071, ; 168: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 261
	i32 1253011324, ; 169: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 170: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 276
	i32 1264511973, ; 171: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 251
	i32 1267360935, ; 172: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 255
	i32 1273260888, ; 173: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 207
	i32 1275534314, ; 174: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 272
	i32 1278448581, ; 175: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 199
	i32 1293217323, ; 176: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 218
	i32 1309188875, ; 177: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 178: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 260
	i32 1324164729, ; 179: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 180: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1364015309, ; 181: System.IO => 0x514d38cd => 57
	i32 1373134921, ; 182: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 306
	i32 1376866003, ; 183: Xamarin.AndroidX.SavedState => 0x52114ed3 => 247
	i32 1379779777, ; 184: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 185: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 186: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 211
	i32 1408764838, ; 187: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 188: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 189: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 190: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 274
	i32 1434145427, ; 191: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 192: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 264
	i32 1439761251, ; 193: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 194: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 195: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 196: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 197: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461004990, ; 198: es\Microsoft.Maui.Controls.resources => 0x57152abe => 280
	i32 1461234159, ; 199: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 200: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 201: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 202: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 201
	i32 1470490898, ; 203: Microsoft.Extensions.Primitives => 0x57a5e912 => 184
	i32 1479771757, ; 204: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 205: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 206: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 207: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 248
	i32 1493001747, ; 208: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 284
	i32 1514721132, ; 209: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 279
	i32 1536373174, ; 210: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 211: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 212: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 213: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551623176, ; 214: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 299
	i32 1565862583, ; 215: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 216: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 217: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 218: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582372066, ; 219: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 217
	i32 1592978981, ; 220: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 221: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 265
	i32 1601112923, ; 222: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 223: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 224: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 225: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 237
	i32 1622358360, ; 226: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 227: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 259
	i32 1634654947, ; 228: CommunityToolkit.Maui.Core.dll => 0x616edae3 => 174
	i32 1635184631, ; 229: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 221
	i32 1636350590, ; 230: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 214
	i32 1639515021, ; 231: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 232: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 233: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 234: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 235: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 253
	i32 1658251792, ; 236: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 262
	i32 1670060433, ; 237: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 209
	i32 1675553242, ; 238: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 239: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 240: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 241: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 242: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 243: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 244: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 269
	i32 1701541528, ; 245: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 246: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 230
	i32 1726116996, ; 247: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 248: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 249: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 205
	i32 1736233607, ; 250: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 297
	i32 1743415430, ; 251: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 275
	i32 1744735666, ; 252: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 253: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 254: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 255: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 256: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 257: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 258: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 252
	i32 1770582343, ; 259: Microsoft.Extensions.Logging.dll => 0x6988f147 => 181
	i32 1776026572, ; 260: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 261: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 262: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 263: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 291
	i32 1788241197, ; 264: Xamarin.AndroidX.Fragment => 0x6a96652d => 223
	i32 1793755602, ; 265: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 283
	i32 1801839299, ; 266: Pizza.Maui.dll => 0x6b65e2c3 => 0
	i32 1808609942, ; 267: Xamarin.AndroidX.Loader => 0x6bcd3296 => 237
	i32 1813058853, ; 268: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 268
	i32 1813201214, ; 269: Xamarin.Google.Android.Material => 0x6c13413e => 262
	i32 1818569960, ; 270: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 242
	i32 1818787751, ; 271: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 272: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 273: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 274: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 182
	i32 1842015223, ; 275: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 303
	i32 1847515442, ; 276: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 192
	i32 1853025655, ; 277: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 300
	i32 1858542181, ; 278: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 279: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1875935024, ; 280: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 282
	i32 1879696579, ; 281: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 282: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 203
	i32 1888955245, ; 283: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 284: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 285: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 286: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 287: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 288: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1956758971, ; 289: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 290: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 249
	i32 1968388702, ; 291: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 177
	i32 1983156543, ; 292: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 269
	i32 1985761444, ; 293: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 194
	i32 2003115576, ; 294: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 279
	i32 2011961780, ; 295: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 296: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 234
	i32 2025202353, ; 297: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 274
	i32 2031763787, ; 298: Xamarin.Android.Glide => 0x791a414b => 191
	i32 2045470958, ; 299: System.Private.Xml => 0x79eb68ee => 88
	i32 2055257422, ; 300: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 229
	i32 2060060697, ; 301: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 302: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 278
	i32 2070888862, ; 303: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2079903147, ; 304: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 305: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2127167465, ; 306: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 307: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 308: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 309: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 310: Microsoft.Maui => 0x80bd55ad => 188
	i32 2169148018, ; 311: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 286
	i32 2181898931, ; 312: Microsoft.Extensions.Options.dll => 0x820d22b3 => 183
	i32 2192057212, ; 313: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 182
	i32 2193016926, ; 314: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 315: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 273
	i32 2201231467, ; 316: System.Net.Http => 0x8334206b => 64
	i32 2207618523, ; 317: it\Microsoft.Maui.Controls.resources => 0x839595db => 288
	i32 2217644978, ; 318: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 256
	i32 2222056684, ; 319: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2244775296, ; 320: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 238
	i32 2252106437, ; 321: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2256313426, ; 322: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 323: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 324: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 178
	i32 2267999099, ; 325: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 193
	i32 2270573516, ; 326: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 282
	i32 2279755925, ; 327: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 245
	i32 2293034957, ; 328: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 329: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 330: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 331: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 292
	i32 2305521784, ; 332: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 333: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 197
	i32 2320631194, ; 334: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 335: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 336: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 337: System.Net.Primitives => 0x8c40e0db => 70
	i32 2368005991, ; 338: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2371007202, ; 339: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 177
	i32 2378619854, ; 340: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 341: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 342: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 287
	i32 2401565422, ; 343: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 344: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 220
	i32 2421380589, ; 345: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 346: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 207
	i32 2427813419, ; 347: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 284
	i32 2435356389, ; 348: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 349: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 350: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 351: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 352: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 353: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 210
	i32 2471841756, ; 354: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 355: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 356: Microsoft.Maui.Controls => 0x93dba8a1 => 186
	i32 2483903535, ; 357: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 358: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 359: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 360: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 361: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 232
	i32 2522472828, ; 362: Xamarin.Android.Glide.dll => 0x9659e17c => 191
	i32 2538310050, ; 363: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 364: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 285
	i32 2562349572, ; 365: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 366: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2581783588, ; 367: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 233
	i32 2581819634, ; 368: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 255
	i32 2585220780, ; 369: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 370: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 371: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2593496499, ; 372: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 294
	i32 2605712449, ; 373: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 273
	i32 2615233544, ; 374: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 224
	i32 2617129537, ; 375: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 376: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 377: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 214
	i32 2624644809, ; 378: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 219
	i32 2626831493, ; 379: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 289
	i32 2627185994, ; 380: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 381: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 382: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 228
	i32 2663391936, ; 383: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 193
	i32 2663698177, ; 384: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 385: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 386: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 387: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 388: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 389: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 390: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 253
	i32 2715334215, ; 391: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 392: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 393: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 394: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 395: Xamarin.AndroidX.Activity => 0xa2e0939b => 195
	i32 2735172069, ; 396: System.Threading.Channels => 0xa30769e5 => 139
	i32 2737747696, ; 397: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 201
	i32 2738432161, ; 398: Pizza.Maui => 0xa33928a1 => 0
	i32 2740948882, ; 399: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 400: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 401: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 295
	i32 2758225723, ; 402: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 187
	i32 2764765095, ; 403: Microsoft.Maui.dll => 0xa4caf7a7 => 188
	i32 2765824710, ; 404: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 405: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 267
	i32 2778768386, ; 406: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 258
	i32 2779977773, ; 407: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 246
	i32 2785988530, ; 408: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 301
	i32 2788224221, ; 409: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 224
	i32 2801831435, ; 410: Microsoft.Maui.Graphics => 0xa7008e0b => 190
	i32 2803228030, ; 411: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2806116107, ; 412: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 280
	i32 2810250172, ; 413: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 211
	i32 2819470561, ; 414: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 415: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 416: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 246
	i32 2824502124, ; 417: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2831556043, ; 418: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 293
	i32 2838993487, ; 419: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 235
	i32 2849599387, ; 420: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 421: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 258
	i32 2855708567, ; 422: Xamarin.AndroidX.Transition => 0xaa36a797 => 254
	i32 2861098320, ; 423: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 424: Microsoft.Maui.Essentials => 0xaa8a4878 => 189
	i32 2868488919, ; 425: CommunityToolkit.Maui.Core => 0xaaf9aad7 => 174
	i32 2870099610, ; 426: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 196
	i32 2875164099, ; 427: Jsr305Binding.dll => 0xab5f85c3 => 263
	i32 2875220617, ; 428: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 429: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 222
	i32 2887636118, ; 430: System.Net.dll => 0xac1dd496 => 81
	i32 2899753641, ; 431: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 432: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 433: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 434: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 435: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2916838712, ; 436: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 259
	i32 2919462931, ; 437: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 438: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 198
	i32 2936416060, ; 439: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 440: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 441: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2959614098, ; 442: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 443: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 444: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 445: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 218
	i32 2987532451, ; 446: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 249
	i32 2996846495, ; 447: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 231
	i32 3016983068, ; 448: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 251
	i32 3023353419, ; 449: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 450: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 226
	i32 3038032645, ; 451: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 308
	i32 3056245963, ; 452: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 248
	i32 3057625584, ; 453: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 239
	i32 3059408633, ; 454: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 455: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3075834255, ; 456: System.Threading.Tasks => 0xb755818f => 144
	i32 3077302341, ; 457: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 286
	i32 3090735792, ; 458: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 459: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 460: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 461: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 462: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 463: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 464: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 465: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 466: GoogleGson.dll => 0xbba64c02 => 176
	i32 3159123045, ; 467: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 468: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 469: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 240
	i32 3192346100, ; 470: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 471: System.Web => 0xbe592c0c => 153
	i32 3204380047, ; 472: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 473: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 474: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 217
	i32 3220365878, ; 475: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 476: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 477: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 478: Xamarin.AndroidX.CardView => 0xc235e84d => 205
	i32 3265493905, ; 479: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 480: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 481: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 482: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 483: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 484: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 485: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 486: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 487: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 281
	i32 3316684772, ; 488: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 489: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 215
	i32 3317144872, ; 490: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 491: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 203
	i32 3345895724, ; 492: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 244
	i32 3346324047, ; 493: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 241
	i32 3357674450, ; 494: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 298
	i32 3358260929, ; 495: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 496: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 196
	i32 3362522851, ; 497: Xamarin.AndroidX.Core => 0xc86c06e3 => 212
	i32 3366347497, ; 498: Java.Interop => 0xc8a662e9 => 168
	i32 3374999561, ; 499: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 245
	i32 3381016424, ; 500: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 277
	i32 3395150330, ; 501: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 502: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 503: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 216
	i32 3428513518, ; 504: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 179
	i32 3429136800, ; 505: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 506: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 507: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 219
	i32 3445260447, ; 508: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 509: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 185
	i32 3463511458, ; 510: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 285
	i32 3471940407, ; 511: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 512: Mono.Android => 0xcf3163e6 => 171
	i32 3479583265, ; 513: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 298
	i32 3484440000, ; 514: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 297
	i32 3485117614, ; 515: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 516: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 517: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 208
	i32 3509114376, ; 518: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 519: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 520: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 521: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3560100363, ; 522: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 523: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3580758918, ; 524: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 305
	i32 3597029428, ; 525: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 194
	i32 3598340787, ; 526: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 527: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 528: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 529: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 243
	i32 3633644679, ; 530: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 198
	i32 3638274909, ; 531: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 532: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 229
	i32 3643446276, ; 533: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 302
	i32 3643854240, ; 534: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 240
	i32 3645089577, ; 535: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 536: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 178
	i32 3660523487, ; 537: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 538: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 539: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 204
	i32 3684561358, ; 540: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 208
	i32 3697841164, ; 541: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 307
	i32 3700866549, ; 542: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 543: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 213
	i32 3716563718, ; 544: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 545: Xamarin.AndroidX.Annotation => 0xdda814c6 => 197
	i32 3724971120, ; 546: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 239
	i32 3732100267, ; 547: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 548: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 549: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 550: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3786282454, ; 551: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 206
	i32 3792276235, ; 552: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 553: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 185
	i32 3802395368, ; 554: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3817368567, ; 555: CommunityToolkit.Maui.dll => 0xe3886bf7 => 173
	i32 3819260425, ; 556: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 557: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 558: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 559: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 180
	i32 3844307129, ; 560: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 561: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 562: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 563: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 564: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 565: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 566: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 254
	i32 3888767677, ; 567: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 244
	i32 3889960447, ; 568: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 306
	i32 3896106733, ; 569: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 570: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 212
	i32 3901907137, ; 571: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 572: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 573: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 257
	i32 3928044579, ; 574: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 575: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 576: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 242
	i32 3945713374, ; 577: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 578: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 579: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 200
	i32 3959773229, ; 580: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 231
	i32 3980434154, ; 581: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 301
	i32 3987592930, ; 582: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 283
	i32 4003436829, ; 583: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 584: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 199
	i32 4025784931, ; 585: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 586: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 187
	i32 4054681211, ; 587: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 588: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 589: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4094352644, ; 590: Microsoft.Maui.Essentials.dll => 0xf40add04 => 189
	i32 4099507663, ; 591: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 592: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 593: Xamarin.AndroidX.Emoji2 => 0xf479582c => 220
	i32 4102112229, ; 594: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 296
	i32 4125707920, ; 595: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 291
	i32 4126470640, ; 596: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 179
	i32 4127667938, ; 597: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 598: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 599: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 600: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 303
	i32 4151237749, ; 601: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 602: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 603: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 604: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 605: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 606: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 236
	i32 4185676441, ; 607: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 608: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 609: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4256097574, ; 610: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 213
	i32 4258378803, ; 611: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 235
	i32 4260525087, ; 612: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 613: Microsoft.Maui.Controls.dll => 0xfea12dee => 186
	i32 4274623895, ; 614: CommunityToolkit.Mvvm.dll => 0xfec99597 => 175
	i32 4274976490, ; 615: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 616: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 236
	i32 4294763496 ; 617: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 222
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [618 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 232, ; 3
	i32 266, ; 4
	i32 48, ; 5
	i32 80, ; 6
	i32 145, ; 7
	i32 30, ; 8
	i32 307, ; 9
	i32 124, ; 10
	i32 190, ; 11
	i32 102, ; 12
	i32 250, ; 13
	i32 107, ; 14
	i32 250, ; 15
	i32 139, ; 16
	i32 270, ; 17
	i32 77, ; 18
	i32 124, ; 19
	i32 13, ; 20
	i32 206, ; 21
	i32 132, ; 22
	i32 252, ; 23
	i32 151, ; 24
	i32 304, ; 25
	i32 305, ; 26
	i32 18, ; 27
	i32 204, ; 28
	i32 26, ; 29
	i32 226, ; 30
	i32 1, ; 31
	i32 59, ; 32
	i32 42, ; 33
	i32 91, ; 34
	i32 209, ; 35
	i32 147, ; 36
	i32 228, ; 37
	i32 225, ; 38
	i32 276, ; 39
	i32 54, ; 40
	i32 69, ; 41
	i32 304, ; 42
	i32 195, ; 43
	i32 83, ; 44
	i32 289, ; 45
	i32 227, ; 46
	i32 288, ; 47
	i32 131, ; 48
	i32 55, ; 49
	i32 149, ; 50
	i32 74, ; 51
	i32 145, ; 52
	i32 62, ; 53
	i32 146, ; 54
	i32 308, ; 55
	i32 165, ; 56
	i32 300, ; 57
	i32 210, ; 58
	i32 12, ; 59
	i32 223, ; 60
	i32 125, ; 61
	i32 152, ; 62
	i32 113, ; 63
	i32 166, ; 64
	i32 164, ; 65
	i32 225, ; 66
	i32 238, ; 67
	i32 84, ; 68
	i32 287, ; 69
	i32 281, ; 70
	i32 184, ; 71
	i32 150, ; 72
	i32 270, ; 73
	i32 60, ; 74
	i32 181, ; 75
	i32 51, ; 76
	i32 103, ; 77
	i32 114, ; 78
	i32 40, ; 79
	i32 263, ; 80
	i32 261, ; 81
	i32 120, ; 82
	i32 295, ; 83
	i32 173, ; 84
	i32 52, ; 85
	i32 44, ; 86
	i32 119, ; 87
	i32 215, ; 88
	i32 293, ; 89
	i32 221, ; 90
	i32 81, ; 91
	i32 136, ; 92
	i32 257, ; 93
	i32 202, ; 94
	i32 8, ; 95
	i32 73, ; 96
	i32 275, ; 97
	i32 155, ; 98
	i32 272, ; 99
	i32 154, ; 100
	i32 92, ; 101
	i32 267, ; 102
	i32 45, ; 103
	i32 290, ; 104
	i32 278, ; 105
	i32 271, ; 106
	i32 109, ; 107
	i32 129, ; 108
	i32 25, ; 109
	i32 192, ; 110
	i32 72, ; 111
	i32 55, ; 112
	i32 46, ; 113
	i32 299, ; 114
	i32 183, ; 115
	i32 216, ; 116
	i32 22, ; 117
	i32 230, ; 118
	i32 86, ; 119
	i32 43, ; 120
	i32 160, ; 121
	i32 71, ; 122
	i32 243, ; 123
	i32 3, ; 124
	i32 42, ; 125
	i32 63, ; 126
	i32 16, ; 127
	i32 53, ; 128
	i32 302, ; 129
	i32 266, ; 130
	i32 105, ; 131
	i32 271, ; 132
	i32 264, ; 133
	i32 227, ; 134
	i32 34, ; 135
	i32 158, ; 136
	i32 85, ; 137
	i32 32, ; 138
	i32 12, ; 139
	i32 51, ; 140
	i32 56, ; 141
	i32 247, ; 142
	i32 36, ; 143
	i32 180, ; 144
	i32 277, ; 145
	i32 265, ; 146
	i32 200, ; 147
	i32 35, ; 148
	i32 58, ; 149
	i32 234, ; 150
	i32 176, ; 151
	i32 17, ; 152
	i32 268, ; 153
	i32 164, ; 154
	i32 290, ; 155
	i32 233, ; 156
	i32 260, ; 157
	i32 296, ; 158
	i32 153, ; 159
	i32 256, ; 160
	i32 241, ; 161
	i32 294, ; 162
	i32 202, ; 163
	i32 29, ; 164
	i32 175, ; 165
	i32 52, ; 166
	i32 292, ; 167
	i32 261, ; 168
	i32 5, ; 169
	i32 276, ; 170
	i32 251, ; 171
	i32 255, ; 172
	i32 207, ; 173
	i32 272, ; 174
	i32 199, ; 175
	i32 218, ; 176
	i32 85, ; 177
	i32 260, ; 178
	i32 61, ; 179
	i32 112, ; 180
	i32 57, ; 181
	i32 306, ; 182
	i32 247, ; 183
	i32 99, ; 184
	i32 19, ; 185
	i32 211, ; 186
	i32 111, ; 187
	i32 101, ; 188
	i32 102, ; 189
	i32 274, ; 190
	i32 104, ; 191
	i32 264, ; 192
	i32 71, ; 193
	i32 38, ; 194
	i32 32, ; 195
	i32 103, ; 196
	i32 73, ; 197
	i32 280, ; 198
	i32 9, ; 199
	i32 123, ; 200
	i32 46, ; 201
	i32 201, ; 202
	i32 184, ; 203
	i32 9, ; 204
	i32 43, ; 205
	i32 4, ; 206
	i32 248, ; 207
	i32 284, ; 208
	i32 279, ; 209
	i32 31, ; 210
	i32 138, ; 211
	i32 92, ; 212
	i32 93, ; 213
	i32 299, ; 214
	i32 49, ; 215
	i32 141, ; 216
	i32 112, ; 217
	i32 140, ; 218
	i32 217, ; 219
	i32 115, ; 220
	i32 265, ; 221
	i32 157, ; 222
	i32 76, ; 223
	i32 79, ; 224
	i32 237, ; 225
	i32 37, ; 226
	i32 259, ; 227
	i32 174, ; 228
	i32 221, ; 229
	i32 214, ; 230
	i32 64, ; 231
	i32 138, ; 232
	i32 15, ; 233
	i32 116, ; 234
	i32 253, ; 235
	i32 262, ; 236
	i32 209, ; 237
	i32 48, ; 238
	i32 70, ; 239
	i32 80, ; 240
	i32 126, ; 241
	i32 94, ; 242
	i32 121, ; 243
	i32 269, ; 244
	i32 26, ; 245
	i32 230, ; 246
	i32 97, ; 247
	i32 28, ; 248
	i32 205, ; 249
	i32 297, ; 250
	i32 275, ; 251
	i32 149, ; 252
	i32 169, ; 253
	i32 4, ; 254
	i32 98, ; 255
	i32 33, ; 256
	i32 93, ; 257
	i32 252, ; 258
	i32 181, ; 259
	i32 21, ; 260
	i32 41, ; 261
	i32 170, ; 262
	i32 291, ; 263
	i32 223, ; 264
	i32 283, ; 265
	i32 0, ; 266
	i32 237, ; 267
	i32 268, ; 268
	i32 262, ; 269
	i32 242, ; 270
	i32 2, ; 271
	i32 134, ; 272
	i32 111, ; 273
	i32 182, ; 274
	i32 303, ; 275
	i32 192, ; 276
	i32 300, ; 277
	i32 58, ; 278
	i32 95, ; 279
	i32 282, ; 280
	i32 39, ; 281
	i32 203, ; 282
	i32 25, ; 283
	i32 94, ; 284
	i32 89, ; 285
	i32 99, ; 286
	i32 10, ; 287
	i32 87, ; 288
	i32 100, ; 289
	i32 249, ; 290
	i32 177, ; 291
	i32 269, ; 292
	i32 194, ; 293
	i32 279, ; 294
	i32 7, ; 295
	i32 234, ; 296
	i32 274, ; 297
	i32 191, ; 298
	i32 88, ; 299
	i32 229, ; 300
	i32 154, ; 301
	i32 278, ; 302
	i32 33, ; 303
	i32 116, ; 304
	i32 82, ; 305
	i32 20, ; 306
	i32 11, ; 307
	i32 162, ; 308
	i32 3, ; 309
	i32 188, ; 310
	i32 286, ; 311
	i32 183, ; 312
	i32 182, ; 313
	i32 84, ; 314
	i32 273, ; 315
	i32 64, ; 316
	i32 288, ; 317
	i32 256, ; 318
	i32 143, ; 319
	i32 238, ; 320
	i32 157, ; 321
	i32 41, ; 322
	i32 117, ; 323
	i32 178, ; 324
	i32 193, ; 325
	i32 282, ; 326
	i32 245, ; 327
	i32 131, ; 328
	i32 75, ; 329
	i32 66, ; 330
	i32 292, ; 331
	i32 172, ; 332
	i32 197, ; 333
	i32 143, ; 334
	i32 106, ; 335
	i32 151, ; 336
	i32 70, ; 337
	i32 156, ; 338
	i32 177, ; 339
	i32 121, ; 340
	i32 127, ; 341
	i32 287, ; 342
	i32 152, ; 343
	i32 220, ; 344
	i32 141, ; 345
	i32 207, ; 346
	i32 284, ; 347
	i32 20, ; 348
	i32 14, ; 349
	i32 135, ; 350
	i32 75, ; 351
	i32 59, ; 352
	i32 210, ; 353
	i32 167, ; 354
	i32 168, ; 355
	i32 186, ; 356
	i32 15, ; 357
	i32 74, ; 358
	i32 6, ; 359
	i32 23, ; 360
	i32 232, ; 361
	i32 191, ; 362
	i32 91, ; 363
	i32 285, ; 364
	i32 1, ; 365
	i32 136, ; 366
	i32 233, ; 367
	i32 255, ; 368
	i32 134, ; 369
	i32 69, ; 370
	i32 146, ; 371
	i32 294, ; 372
	i32 273, ; 373
	i32 224, ; 374
	i32 88, ; 375
	i32 96, ; 376
	i32 214, ; 377
	i32 219, ; 378
	i32 289, ; 379
	i32 31, ; 380
	i32 45, ; 381
	i32 228, ; 382
	i32 193, ; 383
	i32 109, ; 384
	i32 158, ; 385
	i32 35, ; 386
	i32 22, ; 387
	i32 114, ; 388
	i32 57, ; 389
	i32 253, ; 390
	i32 144, ; 391
	i32 118, ; 392
	i32 120, ; 393
	i32 110, ; 394
	i32 195, ; 395
	i32 139, ; 396
	i32 201, ; 397
	i32 0, ; 398
	i32 54, ; 399
	i32 105, ; 400
	i32 295, ; 401
	i32 187, ; 402
	i32 188, ; 403
	i32 133, ; 404
	i32 267, ; 405
	i32 258, ; 406
	i32 246, ; 407
	i32 301, ; 408
	i32 224, ; 409
	i32 190, ; 410
	i32 159, ; 411
	i32 280, ; 412
	i32 211, ; 413
	i32 163, ; 414
	i32 132, ; 415
	i32 246, ; 416
	i32 161, ; 417
	i32 293, ; 418
	i32 235, ; 419
	i32 140, ; 420
	i32 258, ; 421
	i32 254, ; 422
	i32 169, ; 423
	i32 189, ; 424
	i32 174, ; 425
	i32 196, ; 426
	i32 263, ; 427
	i32 40, ; 428
	i32 222, ; 429
	i32 81, ; 430
	i32 56, ; 431
	i32 37, ; 432
	i32 97, ; 433
	i32 166, ; 434
	i32 172, ; 435
	i32 259, ; 436
	i32 82, ; 437
	i32 198, ; 438
	i32 98, ; 439
	i32 30, ; 440
	i32 159, ; 441
	i32 18, ; 442
	i32 127, ; 443
	i32 119, ; 444
	i32 218, ; 445
	i32 249, ; 446
	i32 231, ; 447
	i32 251, ; 448
	i32 165, ; 449
	i32 226, ; 450
	i32 308, ; 451
	i32 248, ; 452
	i32 239, ; 453
	i32 170, ; 454
	i32 16, ; 455
	i32 144, ; 456
	i32 286, ; 457
	i32 125, ; 458
	i32 118, ; 459
	i32 38, ; 460
	i32 115, ; 461
	i32 47, ; 462
	i32 142, ; 463
	i32 117, ; 464
	i32 34, ; 465
	i32 176, ; 466
	i32 95, ; 467
	i32 53, ; 468
	i32 240, ; 469
	i32 129, ; 470
	i32 153, ; 471
	i32 24, ; 472
	i32 161, ; 473
	i32 217, ; 474
	i32 148, ; 475
	i32 104, ; 476
	i32 89, ; 477
	i32 205, ; 478
	i32 60, ; 479
	i32 142, ; 480
	i32 100, ; 481
	i32 5, ; 482
	i32 13, ; 483
	i32 122, ; 484
	i32 135, ; 485
	i32 28, ; 486
	i32 281, ; 487
	i32 72, ; 488
	i32 215, ; 489
	i32 24, ; 490
	i32 203, ; 491
	i32 244, ; 492
	i32 241, ; 493
	i32 298, ; 494
	i32 137, ; 495
	i32 196, ; 496
	i32 212, ; 497
	i32 168, ; 498
	i32 245, ; 499
	i32 277, ; 500
	i32 101, ; 501
	i32 123, ; 502
	i32 216, ; 503
	i32 179, ; 504
	i32 163, ; 505
	i32 167, ; 506
	i32 219, ; 507
	i32 39, ; 508
	i32 185, ; 509
	i32 285, ; 510
	i32 17, ; 511
	i32 171, ; 512
	i32 298, ; 513
	i32 297, ; 514
	i32 137, ; 515
	i32 150, ; 516
	i32 208, ; 517
	i32 155, ; 518
	i32 130, ; 519
	i32 19, ; 520
	i32 65, ; 521
	i32 147, ; 522
	i32 47, ; 523
	i32 305, ; 524
	i32 194, ; 525
	i32 79, ; 526
	i32 61, ; 527
	i32 106, ; 528
	i32 243, ; 529
	i32 198, ; 530
	i32 49, ; 531
	i32 229, ; 532
	i32 302, ; 533
	i32 240, ; 534
	i32 14, ; 535
	i32 178, ; 536
	i32 68, ; 537
	i32 171, ; 538
	i32 204, ; 539
	i32 208, ; 540
	i32 307, ; 541
	i32 78, ; 542
	i32 213, ; 543
	i32 108, ; 544
	i32 197, ; 545
	i32 239, ; 546
	i32 67, ; 547
	i32 63, ; 548
	i32 27, ; 549
	i32 160, ; 550
	i32 206, ; 551
	i32 10, ; 552
	i32 185, ; 553
	i32 11, ; 554
	i32 173, ; 555
	i32 78, ; 556
	i32 126, ; 557
	i32 83, ; 558
	i32 180, ; 559
	i32 66, ; 560
	i32 107, ; 561
	i32 65, ; 562
	i32 128, ; 563
	i32 122, ; 564
	i32 77, ; 565
	i32 254, ; 566
	i32 244, ; 567
	i32 306, ; 568
	i32 8, ; 569
	i32 212, ; 570
	i32 2, ; 571
	i32 44, ; 572
	i32 257, ; 573
	i32 156, ; 574
	i32 128, ; 575
	i32 242, ; 576
	i32 23, ; 577
	i32 133, ; 578
	i32 200, ; 579
	i32 231, ; 580
	i32 301, ; 581
	i32 283, ; 582
	i32 29, ; 583
	i32 199, ; 584
	i32 62, ; 585
	i32 187, ; 586
	i32 90, ; 587
	i32 87, ; 588
	i32 148, ; 589
	i32 189, ; 590
	i32 36, ; 591
	i32 86, ; 592
	i32 220, ; 593
	i32 296, ; 594
	i32 291, ; 595
	i32 179, ; 596
	i32 50, ; 597
	i32 6, ; 598
	i32 90, ; 599
	i32 303, ; 600
	i32 21, ; 601
	i32 162, ; 602
	i32 96, ; 603
	i32 50, ; 604
	i32 113, ; 605
	i32 236, ; 606
	i32 130, ; 607
	i32 76, ; 608
	i32 27, ; 609
	i32 213, ; 610
	i32 235, ; 611
	i32 7, ; 612
	i32 186, ; 613
	i32 175, ; 614
	i32 110, ; 615
	i32 236, ; 616
	i32 222 ; 617
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 96b6bb65e8736e45180905177aa343f0e1854ea3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"NumRegisterParameters", i32 0}