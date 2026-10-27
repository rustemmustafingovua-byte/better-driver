.class public final Ldev/fluttercommunity/plus/packageinfo/PackageInfoPlugin;
.super Ljava/lang/Object;
.source "PackageInfoPlugin.kt"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/fluttercommunity/plus/packageinfo/PackageInfoPlugin$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0004\u0018\u0000 !2\u00020\u00012\u00020\u0002:\u0001!B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0010\u0010\r\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0018\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\n\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0002J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u0010\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u0010\u0010\u001f\u001a\u00020\u00142\u0006\u0010 \u001a\u00020\u001eH\u0002R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Ldev/fluttercommunity/plus/packageinfo/PackageInfoPlugin;",
        "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin;",
        "<init>",
        "()V",
        "applicationContext",
        "Landroid/content/Context;",
        "methodChannel",
        "Lio/flutter/plugin/common/MethodChannel;",
        "onAttachedToEngine",
        "",
        "binding",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;",
        "onDetachedFromEngine",
        "onMethodCall",
        "call",
        "Lio/flutter/plugin/common/MethodCall;",
        "result",
        "Lio/flutter/plugin/common/MethodChannel$Result;",
        "getInstallerPackageName",
        "",
        "getLongVersionCode",
        "",
        "info",
        "Landroid/content/pm/PackageInfo;",
        "getBuildSignature",
        "pm",
        "Landroid/content/pm/PackageManager;",
        "signatureToSha256",
        "sig",
        "",
        "bytesToHex",
        "bytes",
        "Companion",
        "package_info_plus_debug"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final CHANNEL_NAME:Ljava/lang/String; = "dev.fluttercommunity.plus/package_info"

.field public static final Companion:Ldev/fluttercommunity/plus/packageinfo/PackageInfoPlugin$Companion;


# instance fields
.field private applicationContext:Landroid/content/Context;

.field private methodChannel:Lio/flutter/plugin/common/MethodChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldev/fluttercommunity/plus/packageinfo/PackageInfoPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldev/fluttercommunity/plus/packageinfo/PackageInfoPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ldev/fluttercommunity/plus/packageinfo/PackageInfoPlugin;->Companion:Ldev/fluttercommunity/plus/packageinfo/PackageInfoPlugin$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final bytesToHex([B)Ljava/lang/String;
    .locals 7
    .param p1, "bytes"    # [B

    .line 138
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 137
    nop

    .line 140
    .local v0, "hexArray":[C
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    .line 141
    .local v1, "hexChars":[C
    const/4 v2, 0x0

    .line 142
    .local v2, "v":I
    const/4 v3, 0x0

    .local v3, "j":I
    array-length v4, p1

    :goto_0
    if-ge v3, v4, :cond_0

    .line 143
    aget-byte v5, p1, v3

    and-int/lit16 v2, v5, 0xff

    .line 144
    mul-int/lit8 v5, v3, 0x2

    ushr-int/lit8 v6, v2, 0x4

    aget-char v6, v0, v6

    aput-char v6, v1, v5

    .line 145
    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    and-int/lit8 v6, v2, 0xf

    aget-char v6, v0, v6

    aput-char v6, v1, v5

    .line 142
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 147
    .end local v3    # "j":I
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    return-object v3

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private final getBuildSignature(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 7
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 93
    nop

    .line 94
    const/4 v0, 0x0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x1c

    const-string v3, "toByteArray(...)"

    if-lt v1, v2, :cond_2

    .line 95
    nop

    .line 96
    :try_start_1
    iget-object v1, p0, Ldev/fluttercommunity/plus/packageinfo/PackageInfoPlugin;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 97
    nop

    .line 95
    const/high16 v2, 0x8000000

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 99
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-nez v2, :cond_0

    return-object v0

    .line 101
    .local v2, "signingInfo":Landroid/content/pm/SigningInfo;
    :cond_0
    invoke-virtual {v2}, Landroid/content/pm/SigningInfo;->hasMultipleSigners()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 102
    invoke-virtual {v2}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v4

    const-string v5, "getApkContentsSigners(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/collections/ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/Signature;

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Ldev/fluttercommunity/plus/packageinfo/PackageInfoPlugin;->signatureToSha256([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 104
    :cond_1
    invoke-virtual {v2}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    move-result-object v4

    const-string v5, "getSigningCertificateHistory(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/collections/ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/Signature;

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Ldev/fluttercommunity/plus/packageinfo/PackageInfoPlugin;->signatureToSha256([B)Ljava/lang/String;

    move-result-object v0

    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "signingInfo":Landroid/content/pm/SigningInfo;
    goto :goto_3

    .line 107
    :cond_2
    nop

    .line 108
    iget-object v1, p0, Ldev/fluttercommunity/plus/packageinfo/PackageInfoPlugin;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 109
    nop

    .line 107
    const/16 v2, 0x40

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 111
    .restart local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 113
    .local v2, "signatures":[Landroid/content/pm/Signature;
    const/4 v4, 0x1

    if-eqz v2, :cond_5

    array-length v5, v2

    const/4 v6, 0x0

    if-nez v5, :cond_3

    move v5, v4

    goto :goto_0

    :cond_3
    move v5, v6

    :goto_0
    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    move v4, v6

    :cond_5
    :goto_1
    if-nez v4, :cond_7

    invoke-static {v2}, Lkotlin/collections/ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_6

    goto :goto_2

    .line 116
    :cond_6
    invoke-static {v2}, Lkotlin/collections/ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/Signature;

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Ldev/fluttercommunity/plus/packageinfo/PackageInfoPlugin;->signatureToSha256([B)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 114
    :cond_7
    :goto_2
    nop

    .line 116
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "signatures":[Landroid/content/pm/Signature;
    :goto_3
    goto :goto_4

    .line 121
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_4

    .line 119
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 120
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    nop

    .line 93
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_4
    return-object v0
.end method

.method private final getInstallerPackageName()Ljava/lang/String;
    .locals 4

    .line 72
    iget-object v0, p0, Ldev/fluttercommunity/plus/packageinfo/PackageInfoPlugin;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 73
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v1, p0, Ldev/fluttercommunity/plus/packageinfo/PackageInfoPlugin;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "packageName":Ljava/lang/String;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_0

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/InstallSourceInfo;->getInitiatingPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 74
    :goto_0
    return-object v2
.end method

.method private final getLongVersionCode(Landroid/content/pm/PackageInfo;)J
    .locals 2
    .param p1, "info"    # Landroid/content/pm/PackageInfo;

    .line 84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 85
    invoke-virtual {p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    goto :goto_0

    .line 87
    :cond_0
    iget v0, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v0, v0

    .line 84
    :goto_0
    return-wide v0
.end method

.method private final signatureToSha256([B)Ljava/lang/String;
    .locals 3
    .param p1, "sig"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 129
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 130
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 131
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 132
    .local v1, "hashText":[B
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Ldev/fluttercommunity/plus/packageinfo/PackageInfoPlugin;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 3
    .param p1, "binding"    # Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Ldev/fluttercommunity/plus/packageinfo/PackageInfoPlugin;->applicationContext:Landroid/content/Context;

    .line 23
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v1

    const-string v2, "dev.fluttercommunity.plus/package_info"

    invoke-direct {v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v0, p0, Ldev/fluttercommunity/plus/packageinfo/PackageInfoPlugin;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    .line 24
    iget-object v0, p0, Ldev/fluttercommunity/plus/packageinfo/PackageInfoPlugin;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, p0

    check-cast v1, Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;

    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 25
    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2
    .param p1, "binding"    # Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Ldev/fluttercommunity/plus/packageinfo/PackageInfoPlugin;->applicationContext:Landroid/content/Context;

    .line 29
    iget-object v1, p0, Ldev/fluttercommunity/plus/packageinfo/PackageInfoPlugin;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 30
    iput-object v0, p0, Ldev/fluttercommunity/plus/packageinfo/PackageInfoPlugin;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    .line 31
    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 17
    .param p1, "call"    # Lio/flutter/plugin/common/MethodCall;
    .param p2, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, "call"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    nop

    .line 35
    :try_start_0
    iget-object v0, v2, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    const-string v4, "getAll"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 36
    iget-object v0, v1, Ldev/fluttercommunity/plus/packageinfo/PackageInfoPlugin;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 37
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v4, v1, Ldev/fluttercommunity/plus/packageinfo/PackageInfoPlugin;->applicationContext:Landroid/content/Context;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 39
    .local v4, "info":Landroid/content/pm/PackageInfo;
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v0}, Ldev/fluttercommunity/plus/packageinfo/PackageInfoPlugin;->getBuildSignature(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v5

    .line 41
    .local v5, "buildSignature":Ljava/lang/String;
    invoke-direct {v1}, Ldev/fluttercommunity/plus/packageinfo/PackageInfoPlugin;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v6

    .line 43
    .local v6, "installerPackage":Ljava/lang/String;
    iget-wide v7, v4, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 44
    .local v7, "installTimeMillis":J
    iget-wide v9, v4, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 46
    .local v9, "updateTimeMillis":J
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 47
    .local v11, "infoMap":Ljava/util/HashMap;
    move-object v12, v11

    .local v12, "$this$onMethodCall_u24lambda_u240":Ljava/util/HashMap;
    const/4 v13, 0x0

    .line 48
    .local v13, "$i$a$-apply-PackageInfoPlugin$onMethodCall$1":I
    const-string v14, "appName"

    iget-object v15, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v16, ""

    if-eqz v15, :cond_0

    :try_start_1
    invoke-virtual {v15, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v15

    if-eqz v15, :cond_0

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_1

    :cond_0
    move-object/from16 v15, v16

    :cond_1
    invoke-virtual {v12, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v14, "packageName"

    iget-object v15, v1, Ldev/fluttercommunity/plus/packageinfo/PackageInfoPlugin;->applicationContext:Landroid/content/Context;

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v14, "version"

    iget-object v15, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v15, :cond_2

    move-object/from16 v15, v16

    :cond_2
    invoke-virtual {v12, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v14, "buildNumber"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v4}, Ldev/fluttercommunity/plus/packageinfo/PackageInfoPlugin;->getLongVersionCode(Landroid/content/pm/PackageInfo;)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    if-eqz v5, :cond_3

    const-string v14, "buildSignature"

    invoke-virtual {v12, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_3
    if-eqz v6, :cond_4

    const-string v14, "installerStore"

    invoke-virtual {v12, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_4
    const-string v14, "installTime"

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v14, "updateTime"

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    nop

    .line 47
    .end local v12    # "$this$onMethodCall_u24lambda_u240":Ljava/util/HashMap;
    .end local v13    # "$i$a$-apply-PackageInfoPlugin$onMethodCall$1":I
    nop

    .line 56
    move-object v12, v11

    .local v12, "resultingMap":Ljava/util/HashMap;
    const/4 v13, 0x0

    .line 57
    .local v13, "$i$a$-also-PackageInfoPlugin$onMethodCall$2":I
    invoke-interface {v3, v12}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 58
    nop

    .line 56
    .end local v12    # "resultingMap":Ljava/util/HashMap;
    .end local v13    # "$i$a$-also-PackageInfoPlugin$onMethodCall$2":I
    nop

    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    .end local v5    # "buildSignature":Ljava/lang/String;
    .end local v6    # "installerPackage":Ljava/lang/String;
    .end local v7    # "installTimeMillis":J
    .end local v9    # "updateTimeMillis":J
    .end local v11    # "infoMap":Ljava/util/HashMap;
    goto :goto_0

    .line 60
    :cond_5
    invoke-interface {v3}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "Name not found"

    invoke-interface {v3, v6, v4, v5}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    .end local v0    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return-void
.end method
