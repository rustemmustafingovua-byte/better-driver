.class public Lorg/maplibre/android/gestures/MultiFingerDistancesObject;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final currFingersDiffX:F

.field private final currFingersDiffXY:F

.field private final currFingersDiffY:F

.field private final prevFingersDiffX:F

.field private final prevFingersDiffXY:F

.field private final prevFingersDiffY:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;->prevFingersDiffX:F

    iput p2, p0, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;->prevFingersDiffY:F

    iput p3, p0, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;->currFingersDiffX:F

    iput p4, p0, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;->currFingersDiffY:F

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;->prevFingersDiffXY:F

    mul-float/2addr p3, p3

    mul-float/2addr p4, p4

    add-float/2addr p4, p3

    float-to-double p1, p4

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;->currFingersDiffXY:F

    return-void
.end method


# virtual methods
.method public getCurrFingersDiffX()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;->currFingersDiffX:F

    return p0
.end method

.method public getCurrFingersDiffXY()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;->currFingersDiffXY:F

    return p0
.end method

.method public getCurrFingersDiffY()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;->currFingersDiffY:F

    return p0
.end method

.method public getPrevFingersDiffX()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;->prevFingersDiffX:F

    return p0
.end method

.method public getPrevFingersDiffXY()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;->prevFingersDiffXY:F

    return p0
.end method

.method public getPrevFingersDiffY()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/gestures/MultiFingerDistancesObject;->prevFingersDiffY:F

    return p0
.end method
