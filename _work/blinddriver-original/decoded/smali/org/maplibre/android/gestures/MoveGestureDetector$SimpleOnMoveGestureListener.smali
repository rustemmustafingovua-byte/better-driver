.class public Lorg/maplibre/android/gestures/MoveGestureDetector$SimpleOnMoveGestureListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/gestures/MoveGestureDetector$OnMoveGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/gestures/MoveGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleOnMoveGestureListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMove(Lorg/maplibre/android/gestures/MoveGestureDetector;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onMoveBegin(Lorg/maplibre/android/gestures/MoveGestureDetector;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onMoveEnd(Lorg/maplibre/android/gestures/MoveGestureDetector;FF)V
    .locals 0

    return-void
.end method
