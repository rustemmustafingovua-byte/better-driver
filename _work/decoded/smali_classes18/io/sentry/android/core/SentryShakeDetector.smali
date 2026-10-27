.class public final Lio/sentry/android/core/SentryShakeDetector;
.super Ljava/lang/Object;
.source "SentryShakeDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/SentryShakeDetector$SampleQueue;,
        Lio/sentry/android/core/SentryShakeDetector$Listener;,
        Lio/sentry/android/core/SentryShakeDetector$SamplePool;,
        Lio/sentry/android/core/SentryShakeDetector$Sample;
    }
.end annotation


# static fields
.field static final ACCELERATION_THRESHOLD:I = 0xd


# instance fields
.field private accelerometer:Landroid/hardware/Sensor;

.field private closed:Z

.field private handler:Landroid/os/Handler;

.field private handlerThread:Landroid/os/HandlerThread;

.field private volatile listener:Lio/sentry/android/core/SentryShakeDetector$Listener;

.field private logger:Lio/sentry/ILogger;

.field private final queue:Lio/sentry/android/core/SentryShakeDetector$SampleQueue;

.field private sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Lio/sentry/ILogger;)V
    .locals 1
    .param p1, "logger"    # Lio/sentry/ILogger;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;

    invoke-direct {v0}, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/SentryShakeDetector;->queue:Lio/sentry/android/core/SentryShakeDetector$SampleQueue;

    .line 52
    iput-object p1, p0, Lio/sentry/android/core/SentryShakeDetector;->logger:Lio/sentry/ILogger;

    .line 53
    return-void
.end method

.method private declared-synchronized init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 75
    :try_start_0
    iget-boolean v0, p0, Lio/sentry/android/core/SentryShakeDetector;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 76
    monitor-exit p0

    return-void

    .line 78
    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/sentry/android/core/SentryShakeDetector;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    .line 79
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lio/sentry/android/core/SentryShakeDetector;->sensorManager:Landroid/hardware/SensorManager;

    .line 81
    .end local p0    # "this":Lio/sentry/android/core/SentryShakeDetector;
    :cond_1
    iget-object v0, p0, Lio/sentry/android/core/SentryShakeDetector;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/sentry/android/core/SentryShakeDetector;->accelerometer:Landroid/hardware/Sensor;

    if-nez v0, :cond_2

    .line 82
    iget-object v0, p0, Lio/sentry/android/core/SentryShakeDetector;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/SentryShakeDetector;->accelerometer:Landroid/hardware/Sensor;

    .line 84
    :cond_2
    iget-object v0, p0, Lio/sentry/android/core/SentryShakeDetector;->accelerometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/sentry/android/core/SentryShakeDetector;->handlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_3

    .line 85
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "sentry-shake"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/sentry/android/core/SentryShakeDetector;->handlerThread:Landroid/os/HandlerThread;

    .line 86
    iget-object v0, p0, Lio/sentry/android/core/SentryShakeDetector;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 87
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lio/sentry/android/core/SentryShakeDetector;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/sentry/android/core/SentryShakeDetector;->handler:Landroid/os/Handler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    :cond_3
    monitor-exit p0

    return-void

    .line 74
    .end local p1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 127
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lio/sentry/android/core/SentryShakeDetector;->closed:Z

    .line 128
    invoke-virtual {p0}, Lio/sentry/android/core/SentryShakeDetector;->stop()V

    .line 129
    iget-object v0, p0, Lio/sentry/android/core/SentryShakeDetector;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lio/sentry/android/core/SentryShakeDetector;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/android/core/SentryShakeDetector;->handlerThread:Landroid/os/HandlerThread;

    .line 133
    iput-object v0, p0, Lio/sentry/android/core/SentryShakeDetector;->handler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    .end local p0    # "this":Lio/sentry/android/core/SentryShakeDetector;
    :cond_0
    monitor-exit p0

    return-void

    .line 126
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized init(Landroid/content/Context;Lio/sentry/ILogger;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logger"    # Lio/sentry/ILogger;

    monitor-enter p0

    .line 68
    :try_start_0
    iput-object p2, p0, Lio/sentry/android/core/SentryShakeDetector;->logger:Lio/sentry/ILogger;

    .line 69
    invoke-direct {p0, p1}, Lio/sentry/android/core/SentryShakeDetector;->init(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    .line 67
    .end local p0    # "this":Lio/sentry/android/core/SentryShakeDetector;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "logger":Lio/sentry/ILogger;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method synthetic lambda$stop$0$io-sentry-android-core-SentryShakeDetector()V
    .locals 1

    .line 120
    iget-object v0, p0, Lio/sentry/android/core/SentryShakeDetector;->queue:Lio/sentry/android/core/SentryShakeDetector$SampleQueue;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->clear()V

    .line 121
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 160
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 139
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 140
    return-void

    .line 142
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    .line 143
    .local v0, "ax":F
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v1

    .line 144
    .local v3, "ay":F
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    .line 145
    .local v4, "az":F
    mul-float v5, v0, v0

    mul-float v6, v3, v3

    add-float/2addr v5, v6

    mul-float v6, v4, v4

    add-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x402a000000000000L    # 13.0

    cmpl-double v5, v5, v7

    if-lez v5, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 147
    .local v1, "accelerating":Z
    :goto_0
    iget-object v2, p0, Lio/sentry/android/core/SentryShakeDetector;->queue:Lio/sentry/android/core/SentryShakeDetector$SampleQueue;

    iget-wide v5, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v2, v5, v6, v1}, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->add(JZ)V

    .line 148
    iget-object v2, p0, Lio/sentry/android/core/SentryShakeDetector;->queue:Lio/sentry/android/core/SentryShakeDetector$SampleQueue;

    invoke-virtual {v2}, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->isShaking()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 149
    iget-object v2, p0, Lio/sentry/android/core/SentryShakeDetector;->queue:Lio/sentry/android/core/SentryShakeDetector$SampleQueue;

    invoke-virtual {v2}, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->clear()V

    .line 150
    iget-object v2, p0, Lio/sentry/android/core/SentryShakeDetector;->listener:Lio/sentry/android/core/SentryShakeDetector$Listener;

    .line 151
    .local v2, "currentListener":Lio/sentry/android/core/SentryShakeDetector$Listener;
    if-eqz v2, :cond_2

    .line 152
    invoke-interface {v2}, Lio/sentry/android/core/SentryShakeDetector$Listener;->onShake()V

    .line 155
    .end local v2    # "currentListener":Lio/sentry/android/core/SentryShakeDetector$Listener;
    :cond_2
    return-void
.end method

.method declared-synchronized reopen()V
    .locals 1

    monitor-enter p0

    .line 60
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lio/sentry/android/core/SentryShakeDetector;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    .line 59
    .end local p0    # "this":Lio/sentry/android/core/SentryShakeDetector;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized start(Landroid/content/Context;Lio/sentry/android/core/SentryShakeDetector$Listener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shakeListener"    # Lio/sentry/android/core/SentryShakeDetector$Listener;

    monitor-enter p0

    .line 93
    :try_start_0
    iget-boolean v0, p0, Lio/sentry/android/core/SentryShakeDetector;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 94
    monitor-exit p0

    return-void

    .line 96
    :cond_0
    :try_start_1
    iput-object p2, p0, Lio/sentry/android/core/SentryShakeDetector;->listener:Lio/sentry/android/core/SentryShakeDetector$Listener;

    .line 97
    invoke-direct {p0, p1}, Lio/sentry/android/core/SentryShakeDetector;->init(Landroid/content/Context;)V

    .line 98
    iget-object v0, p0, Lio/sentry/android/core/SentryShakeDetector;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Lio/sentry/android/core/SentryShakeDetector;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v3, "SensorManager is not available. Shake detection disabled."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    .line 102
    .end local p0    # "this":Lio/sentry/android/core/SentryShakeDetector;
    :cond_1
    :try_start_2
    iget-object v0, p0, Lio/sentry/android/core/SentryShakeDetector;->accelerometer:Landroid/hardware/Sensor;

    if-nez v0, :cond_2

    .line 103
    iget-object v0, p0, Lio/sentry/android/core/SentryShakeDetector;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v3, "Accelerometer sensor not available. Shake detection disabled."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    .line 107
    :cond_2
    :try_start_3
    iget-object v0, p0, Lio/sentry/android/core/SentryShakeDetector;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lio/sentry/android/core/SentryShakeDetector;->accelerometer:Landroid/hardware/Sensor;

    iget-object v2, p0, Lio/sentry/android/core/SentryShakeDetector;->handler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v0, p0, v1, v3, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    .line 92
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "shakeListener":Lio/sentry/android/core/SentryShakeDetector$Listener;
    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    .line 111
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lio/sentry/android/core/SentryShakeDetector;->listener:Lio/sentry/android/core/SentryShakeDetector$Listener;

    .line 112
    iget-object v0, p0, Lio/sentry/android/core/SentryShakeDetector;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lio/sentry/android/core/SentryShakeDetector;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 115
    .end local p0    # "this":Lio/sentry/android/core/SentryShakeDetector;
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/SentryShakeDetector;->handler:Landroid/os/Handler;

    .line 116
    .local v0, "h":Landroid/os/Handler;
    if-eqz v0, :cond_1

    .line 117
    new-instance v1, Lio/sentry/android/core/SentryShakeDetector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/sentry/android/core/SentryShakeDetector$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/core/SentryShakeDetector;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :cond_1
    monitor-exit p0

    return-void

    .line 110
    .end local v0    # "h":Landroid/os/Handler;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
