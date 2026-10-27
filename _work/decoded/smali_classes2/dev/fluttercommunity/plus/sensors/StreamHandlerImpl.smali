.class public final Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;
.super Ljava/lang/Object;
.source "StreamHandlerImpl.kt"

# interfaces
.implements Lio/flutter/plugin/common/EventChannel$StreamHandler;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001a\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0012\u0010\u0018\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u0008\u0010\u0019\u001a\u00020\u0013H\u0002J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0004\u001a\u00020\u0005H\u0002J\u0010\u0010\u001c\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\r\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u0005@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001d"
    }
    d2 = {
        "Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;",
        "Lio/flutter/plugin/common/EventChannel$StreamHandler;",
        "sensorManager",
        "Landroid/hardware/SensorManager;",
        "sensorType",
        "",
        "<init>",
        "(Landroid/hardware/SensorManager;I)V",
        "sensorEventListener",
        "Landroid/hardware/SensorEventListener;",
        "sensor",
        "Landroid/hardware/Sensor;",
        "value",
        "samplingPeriod",
        "getSamplingPeriod",
        "()I",
        "setSamplingPeriod",
        "(I)V",
        "onListen",
        "",
        "arguments",
        "",
        "events",
        "Lio/flutter/plugin/common/EventChannel$EventSink;",
        "onCancel",
        "updateRegistration",
        "getSensorName",
        "",
        "createSensorEventListener",
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
.field private samplingPeriod:I

.field private sensor:Landroid/hardware/Sensor;

.field private sensorEventListener:Landroid/hardware/SensorEventListener;

.field private final sensorManager:Landroid/hardware/SensorManager;

.field private final sensorType:I


# direct methods
.method public constructor <init>(Landroid/hardware/SensorManager;I)V
    .locals 1
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p2, "sensorType"    # I

    const-string v0, "sensorManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;->sensorManager:Landroid/hardware/SensorManager;

    .line 12
    iput p2, p0, Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;->sensorType:I

    .line 18
    const v0, 0x30d40

    iput v0, p0, Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;->samplingPeriod:I

    .line 10
    return-void
.end method

.method private final createSensorEventListener(Lio/flutter/plugin/common/EventChannel$EventSink;)Landroid/hardware/SensorEventListener;
    .locals 1
    .param p1, "events"    # Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 63
    new-instance v0, Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl$createSensorEventListener$1;

    invoke-direct {v0, p1}, Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl$createSensorEventListener$1;-><init>(Lio/flutter/plugin/common/EventChannel$EventSink;)V

    check-cast v0, Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method private final getSensorName(I)Ljava/lang/String;
    .locals 1
    .param p1, "sensorType"    # I

    .line 53
    sparse-switch p1, :sswitch_data_0

    .line 58
    const-string v0, "Undefined"

    goto :goto_0

    .line 55
    :sswitch_0
    const-string v0, "User Accelerometer"

    goto :goto_0

    .line 56
    :sswitch_1
    const-string v0, "Gyroscope"

    goto :goto_0

    .line 57
    :sswitch_2
    const-string v0, "Magnetometer"

    goto :goto_0

    .line 54
    :sswitch_3
    const-string v0, "Accelerometer"

    .line 53
    :goto_0
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method private final updateRegistration()V
    .locals 4

    .line 46
    iget-object v0, p0, Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;->sensorEventListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;->sensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 48
    iget-object v0, p0, Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;->sensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;->sensor:Landroid/hardware/Sensor;

    iget v3, p0, Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;->samplingPeriod:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 50
    :cond_0
    return-void
.end method


# virtual methods
.method public final getSamplingPeriod()I
    .locals 1

    .line 18
    iget v0, p0, Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;->samplingPeriod:I

    return v0
.end method

.method public onCancel(Ljava/lang/Object;)V
    .locals 2
    .param p1, "arguments"    # Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;->sensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;->sensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;->sensorEventListener:Landroid/hardware/SensorEventListener;

    .line 43
    :cond_0
    return-void
.end method

.method public onListen(Ljava/lang/Object;Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .locals 4
    .param p1, "arguments"    # Ljava/lang/Object;
    .param p2, "events"    # Lio/flutter/plugin/common/EventChannel$EventSink;

    const-string v0, "events"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;->sensorManager:Landroid/hardware/SensorManager;

    iget v1, p0, Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;->sensorType:I

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;->sensor:Landroid/hardware/Sensor;

    .line 26
    iget-object v0, p0, Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;->sensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 27
    invoke-direct {p0, p2}, Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;->createSensorEventListener(Lio/flutter/plugin/common/EventChannel$EventSink;)Landroid/hardware/SensorEventListener;

    move-result-object v0

    iput-object v0, p0, Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;->sensorEventListener:Landroid/hardware/SensorEventListener;

    .line 28
    iget-object v0, p0, Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;->sensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;->sensor:Landroid/hardware/Sensor;

    iget v3, p0, Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;->samplingPeriod:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    .line 30
    :cond_0
    nop

    .line 31
    nop

    .line 32
    nop

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "It seems that your device has no "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;->sensorType:I

    invoke-direct {p0, v1}, Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;->getSensorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sensor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    const-string v1, "NO_SENSOR"

    const-string v2, "Sensor not found"

    invoke-interface {p2, v1, v2, v0}, Lio/flutter/plugin/common/EventChannel$EventSink;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    :goto_0
    return-void
.end method

.method public final setSamplingPeriod(I)V
    .locals 0
    .param p1, "value"    # I

    .line 20
    iput p1, p0, Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;->samplingPeriod:I

    .line 21
    invoke-direct {p0}, Ldev/fluttercommunity/plus/sensors/StreamHandlerImpl;->updateRegistration()V

    .line 22
    return-void
.end method
