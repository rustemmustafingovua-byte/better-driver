.class public final Ldev/fluttercommunity/plus/sensors/SensorsPlugin;
.super Ljava/lang/Object;
.source "SensorsPlugin.kt"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/fluttercommunity/plus/sensors/SensorsPlugin$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0008\u0010\u0018\u001a\u00020\u0011H\u0002J\u0018\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0008\u0010\u001c\u001a\u00020\u0011H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Ldev/fluttercommunity/plus/sensors/SensorsPlugin;",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin;",
        "<init>",
        "()V",
        "methodChannel",
        "Lio/flutter/plugin/common/MethodChannel;",
        "accelerometerChannel",
        "Lio/flutter/plugin/common/EventChannel;",
        "userAccelChannel",
        "gyroscopeChannel",
        "magnetometerChannel",
        "accelerometerStreamHandler",
        "Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;",
        "userAccelStreamHandler",
        "gyroscopeStreamHandler",
        "magnetometerStreamHandler",
        "onAttachedToEngine",
        "",
        "binding",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;",
        "onDetachedFromEngine",
        "setupMethodChannel",
        "messenger",
        "Lio/flutter/plugin/common/BinaryMessenger;",
        "teardownMethodChannel",
        "setupEventChannels",
        "context",
        "Landroid/content/Context;",
        "teardownEventChannels",
        "Companion",
        "sensors_plus_debug"
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
.field private static final ACCELEROMETER_CHANNEL_NAME:Ljava/lang/String; = "dev.fluttercommunity.plus/sensors/accelerometer"

.field public static final Companion:Ldev/fluttercommunity/plus/sensors/SensorsPlugin$Companion;

.field private static final GYROSCOPE_CHANNEL_NAME:Ljava/lang/String; = "dev.fluttercommunity.plus/sensors/gyroscope"

.field private static final MAGNETOMETER_CHANNEL_NAME:Ljava/lang/String; = "dev.fluttercommunity.plus/sensors/magnetometer"

.field private static final METHOD_CHANNEL_NAME:Ljava/lang/String; = "dev.fluttercommunity.plus/sensors/method"

.field private static final USER_ACCELEROMETER_CHANNEL_NAME:Ljava/lang/String; = "dev.fluttercommunity.plus/sensors/user_accel"


# instance fields
.field private accelerometerChannel:Lio/flutter/plugin/common/EventChannel;

.field private accelerometerStreamHandler:Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;

.field private gyroscopeChannel:Lio/flutter/plugin/common/EventChannel;

.field private gyroscopeStreamHandler:Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;

.field private magnetometerChannel:Lio/flutter/plugin/common/EventChannel;

.field private magnetometerStreamHandler:Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;

.field private methodChannel:Lio/flutter/plugin/common/MethodChannel;

.field private userAccelChannel:Lio/flutter/plugin/common/EventChannel;

.field private userAccelStreamHandler:Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;


# direct methods
.method public static synthetic $r8$lambda$aPjCsW5h3K3KjybVa3VvR48oObE(Ldev/fluttercommunity/plus/sensors/SensorsPlugin;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ldev/fluttercommunity/plus/sensors/SensorsPlugin;->setupMethodChannel$lambda$0(Ldev/fluttercommunity/plus/sensors/SensorsPlugin;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldev/fluttercommunity/plus/sensors/SensorsPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldev/fluttercommunity/plus/sensors/SensorsPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ldev/fluttercommunity/plus/sensors/SensorsPlugin;->Companion:Ldev/fluttercommunity/plus/sensors/SensorsPlugin$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final setupEventChannels(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messenger"    # Lio/flutter/plugin/common/BinaryMessenger;

    .line 60
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.hardware.SensorManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/hardware/SensorManager;

    .line 62
    .local v0, "sensorsManager":Landroid/hardware/SensorManager;
    new-instance v1, Lio/flutter/plugin/common/EventChannel;

    const-string v2, "dev.fluttercommunity.plus/sensors/accelerometer"

    invoke-direct {v1, p2, v2}, Lio/flutter/plugin/common/EventChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v1, p0, Ldev/fluttercommunity/plus/sensors/SensorsPlugin;->accelerometerChannel:Lio/flutter/plugin/common/EventChannel;

    .line 63
    new-instance v1, Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;

    .line 64
    nop

    .line 65
    nop

    .line 63
    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;-><init>(Landroid/hardware/SensorManager;I)V

    iput-object v1, p0, Ldev/fluttercommunity/plus/sensors/SensorsPlugin;->accelerometerStreamHandler:Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;

    .line 67
    iget-object v1, p0, Ldev/fluttercommunity/plus/sensors/SensorsPlugin;->accelerometerChannel:Lio/flutter/plugin/common/EventChannel;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "accelerometerChannel"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    iget-object v3, p0, Ldev/fluttercommunity/plus/sensors/SensorsPlugin;->accelerometerStreamHandler:Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;

    if-nez v3, :cond_1

    const-string v3, "accelerometerStreamHandler"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_1
    check-cast v3, Lio/flutter/plugin/common/EventChannel$StreamHandler;

    invoke-virtual {v1, v3}, Lio/flutter/plugin/common/EventChannel;->setStreamHandler(Lio/flutter/plugin/common/EventChannel$StreamHandler;)V

    .line 69
    new-instance v1, Lio/flutter/plugin/common/EventChannel;

    const-string v3, "dev.fluttercommunity.plus/sensors/user_accel"

    invoke-direct {v1, p2, v3}, Lio/flutter/plugin/common/EventChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v1, p0, Ldev/fluttercommunity/plus/sensors/SensorsPlugin;->userAccelChannel:Lio/flutter/plugin/common/EventChannel;

    .line 70
    new-instance v1, Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;

    .line 71
    nop

    .line 72
    nop

    .line 70
    const/16 v3, 0xa

    invoke-direct {v1, v0, v3}, Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;-><init>(Landroid/hardware/SensorManager;I)V

    iput-object v1, p0, Ldev/fluttercommunity/plus/sensors/SensorsPlugin;->userAccelStreamHandler:Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;

    .line 74
    iget-object v1, p0, Ldev/fluttercommunity/plus/sensors/SensorsPlugin;->userAccelChannel:Lio/flutter/plugin/common/EventChannel;

    if-nez v1, :cond_2

    const-string v1, "userAccelChannel"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_2
    iget-object v3, p0, Ldev/fluttercommunity/plus/sensors/SensorsPlugin;->userAccelStreamHandler:Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;

    if-nez v3, :cond_3

    const-string v3, "userAccelStreamHandler"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_3
    check-cast v3, Lio/flutter/plugin/common/EventChannel$StreamHandler;

    invoke-virtual {v1, v3}, Lio/flutter/plugin/common/EventChannel;->setStreamHandler(Lio/flutter/plugin/common/EventChannel$StreamHandler;)V

    .line 76
    new-instance v1, Lio/flutter/plugin/common/EventChannel;

    const-string v3, "dev.fluttercommunity.plus/sensors/gyroscope"

    invoke-direct {v1, p2, v3}, Lio/flutter/plugin/common/EventChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v1, p0, Ldev/fluttercommunity/plus/sensors/SensorsPlugin;->gyroscopeChannel:Lio/flutter/plugin/common/EventChannel;

    .line 77
    new-instance v1, Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;

    .line 78
    nop

    .line 79
    nop

    .line 77
    const/4 v3, 0x4

    invoke-direct {v1, v0, v3}, Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;-><init>(Landroid/hardware/SensorManager;I)V

    iput-object v1, p0, Ldev/fluttercommunity/plus/sensors/SensorsPlugin;->gyroscopeStreamHandler:Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;

    .line 81
    iget-object v1, p0, Ldev/fluttercommunity/plus/sensors/SensorsPlugin;->gyroscopeChannel:Lio/flutter/plugin/common/EventChannel;

    if-nez v1, :cond_4

    const-string v1, "gyroscopeChannel"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_4
    iget-object v3, p0, Ldev/fluttercommunity/plus/sensors/SensorsPlugin;->gyroscopeStreamHandler:Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;

    if-nez v3, :cond_5

    const-string v3, "gyroscopeStreamHandler"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_5
    check-cast v3, Lio/flutter/plugin/common/EventChannel$StreamHandler;

    invoke-virtual {v1, v3}, Lio/flutter/plugin/common/EventChannel;->setStreamHandler(Lio/flutter/plugin/common/EventChannel$StreamHandler;)V

    .line 83
    new-instance v1, Lio/flutter/plugin/common/EventChannel;

    const-string v3, "dev.fluttercommunity.plus/sensors/magnetometer"

    invoke-direct {v1, p2, v3}, Lio/flutter/plugin/common/EventChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v1, p0, Ldev/fluttercommunity/plus/sensors/SensorsPlugin;->magnetometerChannel:Lio/flutter/plugin/common/EventChannel;

    .line 84
    new-instance v1, Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;

    .line 85
    nop

    .line 86
    nop

    .line 84
    const/4 v3, 0x2

    invoke-direct {v1, v0, v3}, Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;-><init>(Landroid/hardware/SensorManager;I)V

    iput-object v1, p0, Ldev/fluttercommunity/plus/sensors/SensorsPlugin;->magnetometerStreamHandler:Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;

    .line 88
    iget-object v1, p0, Ldev/fluttercommunity/plus/sensors/SensorsPlugin;->magnetometerChannel:Lio/flutter/plugin/common/EventChannel;

    if-nez v1, :cond_6

    const-string v1, "magnetometerChannel"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_6
    iget-object v3, p0, Ldev/fluttercommunity/plus/sensors/SensorsPlugin;->magnetometerStreamHandler:Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;

    if-nez v3, :cond_7

    const-string v3, "magnetometerStreamHandler"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    move-object v2, v3

    :goto_0
    check-cast v2, Lio/flutter/plugin/common/EventChannel$StreamHandler;

    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/EventChannel;->setStreamHandler(Lio/flutter/plugin/common/EventChannel$StreamHandler;)V

    .line 89
    return-void
.end method

.method private final setupMethodChannel(Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 2
    .param p1, "messenger"    # Lio/flutter/plugin/common/BinaryMessenger;

    .line 37
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    const-string v1, "dev.fluttercommunity.plus/sensors/method"

    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v0, p0, Ldev/fluttercommunity/plus/sensors/SensorsPlugin;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    .line 38
    iget-object v0, p0, Ldev/fluttercommunity/plus/sensors/SensorsPlugin;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    if-nez v0, :cond_0

    const-string v0, "methodChannel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Ldev/fluttercommunity/plus/sensors/SensorsPlugin$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Ldev/fluttercommunity/plus/sensors/SensorsPlugin$$ExternalSyntheticLambda0;-><init>(Ldev/fluttercommunity/plus/sensors/SensorsPlugin;)V

    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 53
    return-void
.end method

.method private static final setupMethodChannel$lambda$0(Ldev/fluttercommunity/plus/sensors/SensorsPlugin;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4
    .param p0, "this$0"    # Ldev/fluttercommunity/plus/sensors/SensorsPlugin;
    .param p1, "call"    # Lio/flutter/plugin/common/MethodCall;
    .param p2, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "setGyroscopeSamplingPeriod"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Ldev/fluttercommunity/plus/sensors/SensorsPlugin;->gyroscopeStreamHandler:Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;

    if-nez v0, :cond_5

    const-string v0, "gyroscopeStreamHandler"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    .line 39
    :sswitch_1
    const-string v2, "setUserAccelerometerSamplingPeriod"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 41
    :cond_1
    iget-object v0, p0, Ldev/fluttercommunity/plus/sensors/SensorsPlugin;->userAccelStreamHandler:Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;

    if-nez v0, :cond_5

    const-string v0, "userAccelStreamHandler"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    .line 39
    :sswitch_2
    const-string v2, "setMagnetometerSamplingPeriod"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 43
    :cond_2
    iget-object v0, p0, Ldev/fluttercommunity/plus/sensors/SensorsPlugin;->magnetometerStreamHandler:Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;

    if-nez v0, :cond_5

    const-string v0, "magnetometerStreamHandler"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    .line 39
    :sswitch_3
    const-string v2, "setAccelerationSamplingPeriod"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 40
    :cond_3
    iget-object v0, p0, Ldev/fluttercommunity/plus/sensors/SensorsPlugin;->accelerometerStreamHandler:Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;

    if-nez v0, :cond_5

    const-string v0, "accelerometerStreamHandler"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    .line 44
    :cond_4
    :goto_0
    move-object v0, v1

    .line 39
    :cond_5
    :goto_1
    nop

    .line 46
    .local v0, "streamHandler":Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;
    if-eqz v0, :cond_6

    iget-object v2, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    const-string v3, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;->setSamplingPeriod(I)V

    .line 47
    :cond_6
    if-eqz v0, :cond_7

    .line 48
    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_2

    .line 50
    :cond_7
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    .line 52
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x683794d6 -> :sswitch_3
        -0x47c307f2 -> :sswitch_2
        -0x1f1a2cd6 -> :sswitch_1
        0x4399422b -> :sswitch_0
    .end sparse-switch
.end method

.method private final teardownEventChannels()V
    .locals 2

    .line 92
    iget-object v0, p0, Ldev/fluttercommunity/plus/sensors/SensorsPlugin;->accelerometerChannel:Lio/flutter/plugin/common/EventChannel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "accelerometerChannel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/EventChannel;->setStreamHandler(Lio/flutter/plugin/common/EventChannel$StreamHandler;)V

    .line 93
    iget-object v0, p0, Ldev/fluttercommunity/plus/sensors/SensorsPlugin;->userAccelChannel:Lio/flutter/plugin/common/EventChannel;

    if-nez v0, :cond_1

    const-string v0, "userAccelChannel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/EventChannel;->setStreamHandler(Lio/flutter/plugin/common/EventChannel$StreamHandler;)V

    .line 94
    iget-object v0, p0, Ldev/fluttercommunity/plus/sensors/SensorsPlugin;->gyroscopeChannel:Lio/flutter/plugin/common/EventChannel;

    if-nez v0, :cond_2

    const-string v0, "gyroscopeChannel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/EventChannel;->setStreamHandler(Lio/flutter/plugin/common/EventChannel$StreamHandler;)V

    .line 95
    iget-object v0, p0, Ldev/fluttercommunity/plus/sensors/SensorsPlugin;->magnetometerChannel:Lio/flutter/plugin/common/EventChannel;

    if-nez v0, :cond_3

    const-string v0, "magnetometerChannel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/EventChannel;->setStreamHandler(Lio/flutter/plugin/common/EventChannel$StreamHandler;)V

    .line 97
    iget-object v0, p0, Ldev/fluttercommunity/plus/sensors/SensorsPlugin;->accelerometerStreamHandler:Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;

    if-nez v0, :cond_4

    const-string v0, "accelerometerStreamHandler"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    invoke-virtual {v0, v1}, Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;->onCancel(Ljava/lang/Object;)V

    .line 98
    iget-object v0, p0, Ldev/fluttercommunity/plus/sensors/SensorsPlugin;->userAccelStreamHandler:Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;

    if-nez v0, :cond_5

    const-string v0, "userAccelStreamHandler"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_5
    invoke-virtual {v0, v1}, Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;->onCancel(Ljava/lang/Object;)V

    .line 99
    iget-object v0, p0, Ldev/fluttercommunity/plus/sensors/SensorsPlugin;->gyroscopeStreamHandler:Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;

    if-nez v0, :cond_6

    const-string v0, "gyroscopeStreamHandler"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_6
    invoke-virtual {v0, v1}, Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;->onCancel(Ljava/lang/Object;)V

    .line 100
    iget-object v0, p0, Ldev/fluttercommunity/plus/sensors/SensorsPlugin;->magnetometerStreamHandler:Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;

    if-nez v0, :cond_7

    const-string v0, "magnetometerStreamHandler"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_7
    invoke-virtual {v0, v1}, Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;->onCancel(Ljava/lang/Object;)V

    .line 101
    return-void
.end method

.method private final teardownMethodChannel()V
    .locals 2

    .line 56
    iget-object v0, p0, Ldev/fluttercommunity/plus/sensors/SensorsPlugin;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "methodChannel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 57
    return-void
.end method


# virtual methods
.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 3
    .param p1, "binding"    # Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v0

    const-string v1, "getBinaryMessenger(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ldev/fluttercommunity/plus/sensors/SensorsPlugin;->setupMethodChannel(Lio/flutter/plugin/common/BinaryMessenger;)V

    .line 28
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "getApplicationContext(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v2}, Ldev/fluttercommunity/plus/sensors/SensorsPlugin;->setupEventChannels(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;)V

    .line 29
    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1
    .param p1, "binding"    # Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ldev/fluttercommunity/plus/sensors/SensorsPlugin;->teardownMethodChannel()V

    .line 33
    invoke-direct {p0}, Ldev/fluttercommunity/plus/sensors/SensorsPlugin;->teardownEventChannels()V

    .line 34
    return-void
.end method
