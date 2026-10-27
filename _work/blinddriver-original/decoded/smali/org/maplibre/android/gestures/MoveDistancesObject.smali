.class public final Lorg/maplibre/android/gestures/MoveDistancesObject;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private currX:F

.field private currY:F

.field private distanceXSinceLast:F

.field private distanceXSinceStart:F

.field private distanceYSinceLast:F

.field private distanceYSinceStart:F

.field private final initialX:F

.field private final initialY:F

.field private prevX:F

.field private prevY:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/maplibre/android/gestures/MoveDistancesObject;->initialX:F

    iput p2, p0, Lorg/maplibre/android/gestures/MoveDistancesObject;->initialY:F

    return-void
.end method


# virtual methods
.method public addNewPosition(FF)V
    .locals 2

    iget v0, p0, Lorg/maplibre/android/gestures/MoveDistancesObject;->currX:F

    iput v0, p0, Lorg/maplibre/android/gestures/MoveDistancesObject;->prevX:F

    iget v1, p0, Lorg/maplibre/android/gestures/MoveDistancesObject;->currY:F

    iput v1, p0, Lorg/maplibre/android/gestures/MoveDistancesObject;->prevY:F

    iput p1, p0, Lorg/maplibre/android/gestures/MoveDistancesObject;->currX:F

    iput p2, p0, Lorg/maplibre/android/gestures/MoveDistancesObject;->currY:F

    sub-float/2addr v0, p1

    iput v0, p0, Lorg/maplibre/android/gestures/MoveDistancesObject;->distanceXSinceLast:F

    sub-float/2addr v1, p2

    iput v1, p0, Lorg/maplibre/android/gestures/MoveDistancesObject;->distanceYSinceLast:F

    iget v0, p0, Lorg/maplibre/android/gestures/MoveDistancesObject;->initialX:F

    sub-float/2addr v0, p1

    iput v0, p0, Lorg/maplibre/android/gestures/MoveDistancesObject;->distanceXSinceStart:F

    iget p1, p0, Lorg/maplibre/android/gestures/MoveDistancesObject;->initialY:F

    sub-float/2addr p1, p2

    iput p1, p0, Lorg/maplibre/android/gestures/MoveDistancesObject;->distanceYSinceStart:F

    return-void
.end method

.method public getCurrentX()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/gestures/MoveDistancesObject;->currX:F

    return p0
.end method

.method public getCurrentY()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/gestures/MoveDistancesObject;->currY:F

    return p0
.end method

.method public getDistanceXSinceLast()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/gestures/MoveDistancesObject;->distanceXSinceLast:F

    return p0
.end method

.method public getDistanceXSinceStart()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/gestures/MoveDistancesObject;->distanceXSinceStart:F

    return p0
.end method

.method public getDistanceYSinceLast()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/gestures/MoveDistancesObject;->distanceYSinceLast:F

    return p0
.end method

.method public getDistanceYSinceStart()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/gestures/MoveDistancesObject;->distanceYSinceStart:F

    return p0
.end method

.method public getInitialX()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/gestures/MoveDistancesObject;->initialX:F

    return p0
.end method

.method public getInitialY()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/gestures/MoveDistancesObject;->initialY:F

    return p0
.end method

.method public getPreviousX()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/gestures/MoveDistancesObject;->prevX:F

    return p0
.end method

.method public getPreviousY()F
    .locals 0

    iget p0, p0, Lorg/maplibre/android/gestures/MoveDistancesObject;->prevY:F

    return p0
.end method
