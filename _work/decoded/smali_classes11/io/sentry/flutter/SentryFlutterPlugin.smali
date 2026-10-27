.class public final Lio/sentry/flutter/SentryFlutterPlugin;
.super Ljava/lang/Object;
.source "SentryFlutterPlugin.kt"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/flutter/SentryFlutterPlugin$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u001b2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\u001bB\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0018\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\rH\u0016J\u0010\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\u000bH\u0016J\u0010\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u0016H\u0016J\u0008\u0010\u0019\u001a\u00020\u000bH\u0016J\u0010\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lio/sentry/flutter/SentryFlutterPlugin;",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin;",
        "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;",
        "Lio/flutter/embedding/engine/plugins/activity/ActivityAware;",
        "<init>",
        "()V",
        "channel",
        "Lio/flutter/plugin/common/MethodChannel;",
        "context",
        "Landroid/content/Context;",
        "onAttachedToEngine",
        "",
        "flutterPluginBinding",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;",
        "onMethodCall",
        "call",
        "Lio/flutter/plugin/common/MethodCall;",
        "result",
        "Lio/flutter/plugin/common/MethodChannel$Result;",
        "onDetachedFromEngine",
        "binding",
        "onAttachedToActivity",
        "Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;",
        "onDetachedFromActivity",
        "onReattachedToActivityForConfigChanges",
        "onDetachedFromActivityForConfigChanges",
        "closeNativeSdk",
        "Companion",
        "sentry_flutter_debug"
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
.field public static final Companion:Lio/sentry/flutter/SentryFlutterPlugin$Companion;

.field private static final NATIVE_CRASH_WAIT_TIME:J = 0x1f4L

.field private static activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static applicationContext:Landroid/content/Context;

.field private static final breadcrumbDeserializer$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lio/sentry/Breadcrumb$Deserializer;",
            ">;"
        }
    .end annotation
.end field

.field private static pluginRegistrationTime:Ljava/lang/Long;

.field private static replay:Lio/sentry/android/replay/ReplayIntegration;

.field private static replayCallbacks:Lio/sentry/flutter/SafeReplayRecorderCallbacks;

.field private static final userDeserializer$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lio/sentry/protocol/User$Deserializer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private channel:Lio/flutter/plugin/common/MethodChannel;

.field private context:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$7wF7m4B2JGj0rz57gIUBsl0KMCc()Lio/sentry/Breadcrumb$Deserializer;
    .locals 1

    invoke-static {}, Lio/sentry/flutter/SentryFlutterPlugin;->breadcrumbDeserializer_delegate$lambda$0()Lio/sentry/Breadcrumb$Deserializer;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$OA39tPKAjOHRadnPQnERB-uYVio()Lio/sentry/protocol/User$Deserializer;
    .locals 1

    invoke-static {}, Lio/sentry/flutter/SentryFlutterPlugin;->userDeserializer_delegate$lambda$0()Lio/sentry/protocol/User$Deserializer;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/sentry/flutter/SentryFlutterPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/sentry/flutter/SentryFlutterPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/sentry/flutter/SentryFlutterPlugin;->Companion:Lio/sentry/flutter/SentryFlutterPlugin$Companion;

    .line 128
    new-instance v0, Lio/sentry/flutter/SentryFlutterPlugin$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/sentry/flutter/SentryFlutterPlugin$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/sentry/flutter/SentryFlutterPlugin;->breadcrumbDeserializer$delegate:Lkotlin/Lazy;

    .line 132
    new-instance v0, Lio/sentry/flutter/SentryFlutterPlugin$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lio/sentry/flutter/SentryFlutterPlugin$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/sentry/flutter/SentryFlutterPlugin;->userDeserializer$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getActivity$cp()Ljava/lang/ref/WeakReference;
    .locals 1

    .line 48
    sget-object v0, Lio/sentry/flutter/SentryFlutterPlugin;->activity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public static final synthetic access$getApplicationContext$cp()Landroid/content/Context;
    .locals 1

    .line 48
    sget-object v0, Lio/sentry/flutter/SentryFlutterPlugin;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public static final synthetic access$getBreadcrumbDeserializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 48
    sget-object v0, Lio/sentry/flutter/SentryFlutterPlugin;->breadcrumbDeserializer$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$getPluginRegistrationTime$cp()Ljava/lang/Long;
    .locals 1

    .line 48
    sget-object v0, Lio/sentry/flutter/SentryFlutterPlugin;->pluginRegistrationTime:Ljava/lang/Long;

    return-object v0
.end method

.method public static final synthetic access$getReplay$cp()Lio/sentry/android/replay/ReplayIntegration;
    .locals 1

    .line 48
    sget-object v0, Lio/sentry/flutter/SentryFlutterPlugin;->replay:Lio/sentry/android/replay/ReplayIntegration;

    return-object v0
.end method

.method public static final synthetic access$getReplayCallbacks$cp()Lio/sentry/flutter/SafeReplayRecorderCallbacks;
    .locals 1

    .line 48
    sget-object v0, Lio/sentry/flutter/SentryFlutterPlugin;->replayCallbacks:Lio/sentry/flutter/SafeReplayRecorderCallbacks;

    return-object v0
.end method

.method public static final synthetic access$getUserDeserializer$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 48
    sget-object v0, Lio/sentry/flutter/SentryFlutterPlugin;->userDeserializer$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$setReplay$cp(Lio/sentry/android/replay/ReplayIntegration;)V
    .locals 0
    .param p0, "<set-?>"    # Lio/sentry/android/replay/ReplayIntegration;

    .line 48
    sput-object p0, Lio/sentry/flutter/SentryFlutterPlugin;->replay:Lio/sentry/android/replay/ReplayIntegration;

    return-void
.end method

.method public static final synthetic access$setReplayCallbacks$cp(Lio/sentry/flutter/SafeReplayRecorderCallbacks;)V
    .locals 0
    .param p0, "<set-?>"    # Lio/sentry/flutter/SafeReplayRecorderCallbacks;

    .line 48
    sput-object p0, Lio/sentry/flutter/SentryFlutterPlugin;->replayCallbacks:Lio/sentry/flutter/SafeReplayRecorderCallbacks;

    return-void
.end method

.method public static final addBreadcrumbFromJsonBytes([B)V
    .locals 1
    .param p0, "bytes"    # [B
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lio/sentry/flutter/SentryFlutterPlugin;->Companion:Lio/sentry/flutter/SentryFlutterPlugin$Companion;

    invoke-virtual {v0, p0}, Lio/sentry/flutter/SentryFlutterPlugin$Companion;->addBreadcrumbFromJsonBytes([B)V

    .line 227
    return-void
.end method

.method private static final breadcrumbDeserializer_delegate$lambda$0()Lio/sentry/Breadcrumb$Deserializer;
    .locals 1

    .line 129
    new-instance v0, Lio/sentry/Breadcrumb$Deserializer;

    invoke-direct {v0}, Lio/sentry/Breadcrumb$Deserializer;-><init>()V

    return-object v0
.end method

.method private final closeNativeSdk(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1
    .param p1, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 105
    invoke-static {}, Lio/sentry/ScopesAdapter;->getInstance()Lio/sentry/ScopesAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/ScopesAdapter;->close()V

    .line 106
    sget-object v0, Lio/sentry/flutter/SentryFlutterPlugin;->Companion:Lio/sentry/flutter/SentryFlutterPlugin$Companion;

    invoke-virtual {v0}, Lio/sentry/flutter/SentryFlutterPlugin$Companion;->tearDownReplayIntegration()V

    .line 108
    const-string v0, ""

    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method public static final crash()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lio/sentry/flutter/SentryFlutterPlugin;->Companion:Lio/sentry/flutter/SentryFlutterPlugin$Companion;

    invoke-virtual {v0}, Lio/sentry/flutter/SentryFlutterPlugin$Companion;->crash()V

    .line 316
    return-void
.end method

.method public static final fetchNativeAppStartAsBytes()[B
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lio/sentry/flutter/SentryFlutterPlugin;->Companion:Lio/sentry/flutter/SentryFlutterPlugin$Companion;

    invoke-virtual {v0}, Lio/sentry/flutter/SentryFlutterPlugin$Companion;->fetchNativeAppStartAsBytes()[B

    move-result-object v0

    .line 403
    return-object v0
.end method

.method public static final getApplicationContext()Landroid/content/Context;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lio/sentry/flutter/SentryFlutterPlugin;->Companion:Lio/sentry/flutter/SentryFlutterPlugin$Companion;

    invoke-virtual {v0}, Lio/sentry/flutter/SentryFlutterPlugin$Companion;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 421
    return-object v0
.end method

.method public static final getDisplayRefreshRate()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lio/sentry/flutter/SentryFlutterPlugin;->Companion:Lio/sentry/flutter/SentryFlutterPlugin$Companion;

    invoke-virtual {v0}, Lio/sentry/flutter/SentryFlutterPlugin$Companion;->getDisplayRefreshRate()Ljava/lang/Integer;

    move-result-object v0

    .line 341
    return-object v0
.end method

.method public static final loadContextsAsBytes()[B
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lio/sentry/flutter/SentryFlutterPlugin;->Companion:Lio/sentry/flutter/SentryFlutterPlugin$Companion;

    invoke-virtual {v0}, Lio/sentry/flutter/SentryFlutterPlugin$Companion;->loadContextsAsBytes()[B

    move-result-object v0

    .line 445
    return-object v0
.end method

.method public static final loadDebugImagesAsBytes(Ljava/util/Set;)[B
    .locals 1
    .param p0, "addresses"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lio/sentry/flutter/SentryFlutterPlugin;->Companion:Lio/sentry/flutter/SentryFlutterPlugin$Companion;

    invoke-virtual {v0, p0}, Lio/sentry/flutter/SentryFlutterPlugin$Companion;->loadDebugImagesAsBytes(Ljava/util/Set;)[B

    move-result-object v0

    .line 473
    return-object v0
.end method

.method public static final privateSentryFlushReplay(Lio/sentry/flutter/ReplayFlushListener;)V
    .locals 1
    .param p0, "listener"    # Lio/sentry/flutter/ReplayFlushListener;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lio/sentry/flutter/SentryFlutterPlugin;->Companion:Lio/sentry/flutter/SentryFlutterPlugin$Companion;

    invoke-virtual {v0, p0}, Lio/sentry/flutter/SentryFlutterPlugin$Companion;->privateSentryFlushReplay(Lio/sentry/flutter/ReplayFlushListener;)V

    .line 187
    return-void
.end method

.method public static final privateSentryGetReplayIntegration()Lio/sentry/android/replay/ReplayIntegration;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lio/sentry/flutter/SentryFlutterPlugin;->Companion:Lio/sentry/flutter/SentryFlutterPlugin$Companion;

    invoke-virtual {v0}, Lio/sentry/flutter/SentryFlutterPlugin$Companion;->privateSentryGetReplayIntegration()Lio/sentry/android/replay/ReplayIntegration;

    move-result-object v0

    .line 158
    return-object v0
.end method

.method public static final removeContext(Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lio/sentry/flutter/SentryFlutterPlugin;->Companion:Lio/sentry/flutter/SentryFlutterPlugin$Companion;

    invoke-virtual {v0, p0}, Lio/sentry/flutter/SentryFlutterPlugin$Companion;->removeContext(Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public static final setContextFromJsonBytes(Ljava/lang/String;[B)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "bytes"    # [B
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lio/sentry/flutter/SentryFlutterPlugin;->Companion:Lio/sentry/flutter/SentryFlutterPlugin$Companion;

    invoke-virtual {v0, p0, p1}, Lio/sentry/flutter/SentryFlutterPlugin$Companion;->setContextFromJsonBytes(Ljava/lang/String;[B)V

    .line 263
    return-void
.end method

.method public static final setUserFromJsonBytes([B)V
    .locals 1
    .param p0, "bytes"    # [B
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lio/sentry/flutter/SentryFlutterPlugin;->Companion:Lio/sentry/flutter/SentryFlutterPlugin$Companion;

    invoke-virtual {v0, p0}, Lio/sentry/flutter/SentryFlutterPlugin$Companion;->setUserFromJsonBytes([B)V

    .line 247
    return-void
.end method

.method public static final setupBeforeSend(Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 1
    .param p0, "options"    # Lio/sentry/android/core/SentryAndroidOptions;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lio/sentry/flutter/SentryFlutterPlugin;->Companion:Lio/sentry/flutter/SentryFlutterPlugin$Companion;

    invoke-virtual {v0, p0}, Lio/sentry/flutter/SentryFlutterPlugin$Companion;->setupBeforeSend(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 212
    return-void
.end method

.method public static final setupReplay(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/flutter/ReplayRecorderCallbacks;)V
    .locals 1
    .param p0, "options"    # Lio/sentry/android/core/SentryAndroidOptions;
    .param p1, "replayCallbacks"    # Lio/sentry/flutter/ReplayRecorderCallbacks;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lio/sentry/flutter/SentryFlutterPlugin;->Companion:Lio/sentry/flutter/SentryFlutterPlugin$Companion;

    invoke-virtual {v0, p0, p1}, Lio/sentry/flutter/SentryFlutterPlugin$Companion;->setupReplay(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/flutter/ReplayRecorderCallbacks;)V

    .line 307
    return-void
.end method

.method private static final userDeserializer_delegate$lambda$0()Lio/sentry/protocol/User$Deserializer;
    .locals 1

    .line 133
    new-instance v0, Lio/sentry/protocol/User$Deserializer;

    invoke-direct {v0}, Lio/sentry/protocol/User$Deserializer;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 2
    .param p1, "binding"    # Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lio/sentry/flutter/SentryFlutterPlugin;->activity:Ljava/lang/ref/WeakReference;

    .line 87
    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 4
    .param p1, "flutterPluginBinding"    # Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    const-string v0, "flutterPluginBinding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lio/sentry/flutter/SentryFlutterPlugin;->pluginRegistrationTime:Ljava/lang/Long;

    .line 58
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getApplicationContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lio/sentry/flutter/SentryFlutterPlugin;->context:Landroid/content/Context;

    .line 59
    iget-object v0, p0, Lio/sentry/flutter/SentryFlutterPlugin;->context:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "context"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    sput-object v0, Lio/sentry/flutter/SentryFlutterPlugin;->applicationContext:Landroid/content/Context;

    .line 60
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v2

    const-string v3, "sentry_flutter"

    invoke-direct {v0, v2, v3}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v0, p0, Lio/sentry/flutter/SentryFlutterPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 61
    iget-object v0, p0, Lio/sentry/flutter/SentryFlutterPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    if-nez v0, :cond_1

    const-string v0, "channel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    move-object v0, p0

    check-cast v0, Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;

    invoke-virtual {v1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 62
    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 1

    .line 90
    const/4 v0, 0x0

    sput-object v0, Lio/sentry/flutter/SentryFlutterPlugin;->activity:Ljava/lang/ref/WeakReference;

    .line 91
    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    .line 99
    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2
    .param p1, "binding"    # Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lio/sentry/flutter/SentryFlutterPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    if-nez v0, :cond_0

    .line 77
    return-void

    .line 80
    :cond_0
    sget-object v0, Lio/sentry/flutter/SentryFlutterPlugin;->Companion:Lio/sentry/flutter/SentryFlutterPlugin$Companion;

    invoke-virtual {v0}, Lio/sentry/flutter/SentryFlutterPlugin$Companion;->tearDownReplayIntegration()V

    .line 81
    iget-object v0, p0, Lio/sentry/flutter/SentryFlutterPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "channel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 82
    sput-object v1, Lio/sentry/flutter/SentryFlutterPlugin;->applicationContext:Landroid/content/Context;

    .line 83
    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2
    .param p1, "call"    # Lio/flutter/plugin/common/MethodCall;
    .param p2, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 70
    const-string v1, "closeNativeSdk"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lio/sentry/flutter/SentryFlutterPlugin;->closeNativeSdk(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    .line 73
    :goto_0
    return-void
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 1
    .param p1, "binding"    # Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    return-void
.end method
