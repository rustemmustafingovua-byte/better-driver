.class public final Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl$createSensorEventListener$1;
.super Ljava/lang/Object;
.source "StreamHandlerImpl.kt"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;->createSensorEventListener(Lio/flutter/plugin/common/EventChannel$EventSink;)Landroid/hardware/SensorEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStreamHandlerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StreamHandlerImpl.kt\ndev/fluttercommunity/plus/sensors/StreamHandlerImpl$createSensorEventListener$1\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,76:1\n13694#2,3:77\n*S KotlinDebug\n*F\n+ 1 StreamHandlerImpl.kt\ndev/fluttercommunity/plus/sensors/StreamHandlerImpl$createSensorEventListener$1\n*L\n68#1:77,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "dev/fluttercommunity/plus/sensors/StreamHandlerImpl$createSensorEventListener$1",
        "Landroid/hardware/SensorEventListener;",
        "onAccuracyChanged",
        "",
        "sensor",
        "Landroid/hardware/Sensor;",
        "accuracy",
        "",
        "onSensorChanged",
        "event",
        "Landroid/hardware/SensorEvent;",
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


# instance fields
.field final synthetic $events:Lio/flutter/plugin/common/EventChannel$EventSink;


# direct methods
.method constructor <init>(Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .locals 0
    .param p1, "$events"    # Lio/flutter/plugin/common/EventChannel$EventSink;

    iput-object p1, p0, Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl$createSensorEventListener$1;->$events:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 1
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    const-string v0, "sensor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    new-array v0, v0, [D

    .line 68
    .local v0, "sensorValues":[D
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const-string v2, "values"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .local v1, "$this$forEachIndexed$iv":[F
    const/4 v2, 0x0

    .line 77
    .local v2, "$i$f$forEachIndexed":I
    const/4 v3, 0x0

    .line 78
    .local v3, "index$iv":I
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget v6, v1, v5

    .local v6, "item$iv":F
    add-int/lit8 v7, v3, 0x1

    .local v3, "index":I
    .local v7, "index$iv":I
    move v8, v6

    .local v8, "value":F
    const/4 v9, 0x0

    .line 69
    .local v9, "$i$a$-forEachIndexed-StreamHandlerImpl$createSensorEventListener$1$onSensorChanged$1":I
    float-to-double v10, v8

    aput-wide v10, v0, v3

    .line 70
    nop

    .line 78
    .end local v3    # "index":I
    .end local v8    # "value":F
    .end local v9    # "$i$a$-forEachIndexed-StreamHandlerImpl$createSensorEventListener$1$onSensorChanged$1":I
    nop

    .end local v6    # "item$iv":F
    add-int/lit8 v5, v5, 0x1

    move v3, v7

    goto :goto_0

    .line 79
    .end local v7    # "index$iv":I
    .local v3, "index$iv":I
    :cond_0
    nop

    .line 71
    .end local v1    # "$this$forEachIndexed$iv":[F
    .end local v2    # "$i$f$forEachIndexed":I
    .end local v3    # "index$iv":I
    iget-object v1, p0, Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl$createSensorEventListener$1;->$events:Lio/flutter/plugin/common/EventChannel$EventSink;

    invoke-interface {v1, v0}, Lio/flutter/plugin/common/EventChannel$EventSink;->success(Ljava/lang/Object;)V

    .line 72
    return-void
.end method
