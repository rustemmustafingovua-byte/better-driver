.class public final Ldd/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final synthetic a:Ldd/k0;


# direct methods
.method public constructor <init>(Ldd/k0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldd/i0;->a:Ldd/k0;

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 13

    const-string v0, "e"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x0

    iget-object p0, p0, Ldd/i0;->a:Ldd/k0;

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4

    const/16 v3, 0xf

    const/4 v4, 0x3

    const/16 v5, 0x8

    const/4 v6, 0x7

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eq v0, v3, :cond_3

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p0, Ldd/k0;->n:[F

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0, p1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    iget-object p1, p0, Ldd/k0;->n:[F

    aget v0, p1, v10

    aget v1, p1, v2

    aget v2, p1, v9

    neg-float v2, v2

    const/4 v3, 0x5

    aget p1, p1, v3

    neg-float p1, p1

    mul-float v3, v2, v2

    mul-float v11, p1, p1

    add-float/2addr v11, v3

    mul-float v3, v0, v0

    mul-float v12, v1, v1

    add-float/2addr v12, v3

    cmpl-float v3, v11, v12

    if-lez v3, :cond_0

    move v3, v10

    goto :goto_0

    :cond_0
    move v3, v8

    :goto_0
    if-eqz v3, :cond_1

    move v0, v2

    :cond_1
    float-to-double v11, v0

    if-eqz v3, :cond_2

    move v1, p1

    :cond_2
    float-to-double v0, v1

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    const-wide v2, 0x4076800000000000L    # 360.0

    add-double/2addr v0, v2

    rem-double/2addr v0, v2

    double-to-float p1, v0

    iget-object v0, p0, Ldd/k0;->n:[F

    aget v1, v0, v7

    aget v2, v0, v6

    aget v0, v0, v5

    new-array v3, v4, [F

    aput v1, v3, v8

    aput v2, v3, v10

    aput v0, v3, v9

    iput-object v3, p0, Ldd/k0;->C:[F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0, p1}, Ldd/k0;->a(Ldd/k0;Ljava/lang/Float;)V

    return-void

    :pswitch_1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Ldd/k0;->p:[F

    return-void

    :pswitch_2
    iget-object v0, p0, Ldd/k0;->B:Ldd/f0;

    sget-object v1, Ldd/f0;->n:Ldd/f0;

    if-ne v0, v1, :cond_5

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v0, v8

    mul-float/2addr v1, v1

    aget v2, v0, v10

    mul-float/2addr v2, v2

    add-float/2addr v2, v1

    aget v0, v0, v9

    mul-float/2addr v0, v0

    add-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_5

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, p1, v8

    div-float/2addr v1, v0

    aget v2, p1, v10

    div-float/2addr v2, v0

    aget p1, p1, v9

    div-float/2addr p1, v0

    new-array v0, v4, [F

    aput v1, v0, v8

    aput v2, v0, v10

    aput p1, v0, v9

    iput-object v0, p0, Ldd/k0;->C:[F

    return-void

    :cond_3
    iget-object v0, p0, Ldd/k0;->B:Ldd/f0;

    sget-object v2, Ldd/f0;->m:Ldd/f0;

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Ldd/k0;->n:[F

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0, p1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    iget-object p1, p0, Ldd/k0;->n:[F

    aget v0, p1, v7

    aget v2, p1, v6

    aget p1, p1, v5

    new-array v3, v4, [F

    aput v0, v3, v8

    aput v2, v3, v10

    aput p1, v3, v9

    iput-object v3, p0, Ldd/k0;->C:[F

    invoke-static {p0, v1}, Ldd/k0;->a(Ldd/k0;Ljava/lang/Float;)V

    return-void

    :cond_4
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Ldd/k0;->o:[F

    iget-object p1, p0, Ldd/k0;->B:Ldd/f0;

    sget-object v0, Ldd/f0;->n:Ldd/f0;

    if-ne p1, v0, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Ldd/k0;->E:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x14

    cmp-long p1, v2, v4

    if-ltz p1, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Ldd/k0;->E:J

    invoke-static {p0, v1}, Ldd/k0;->a(Ldd/k0;Ljava/lang/Float;)V

    :cond_5
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
