.class final Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;
.super Ljava/lang/Object;
.source "SentryGestureListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/internal/gestures/SentryGestureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScrollState"
.end annotation


# instance fields
.field private startX:F

.field private startY:F

.field private target:Lio/sentry/internal/gestures/UiElement;

.field private type:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    sget-object v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;->Unknown:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    iput-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->type:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    .line 402
    const/4 v0, 0x0

    iput v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->startX:F

    .line 403
    iput v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->startY:F

    return-void
.end method

.method synthetic constructor <init>(Lio/sentry/android/core/internal/gestures/SentryGestureListener$1;)V
    .locals 0
    .param p1, "x0"    # Lio/sentry/android/core/internal/gestures/SentryGestureListener$1;

    .line 399
    invoke-direct {p0}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;)Lio/sentry/internal/gestures/UiElement;
    .locals 1
    .param p0, "x0"    # Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;

    .line 399
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->target:Lio/sentry/internal/gestures/UiElement;

    return-object v0
.end method

.method static synthetic access$200(Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;)Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;
    .locals 1
    .param p0, "x0"    # Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;

    .line 399
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->type:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    return-object v0
.end method

.method static synthetic access$202(Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;)Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;
    .locals 0
    .param p0, "x0"    # Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;
    .param p1, "x1"    # Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    .line 399
    iput-object p1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->type:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    return-object p1
.end method

.method static synthetic access$300(Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;Landroid/view/MotionEvent;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .line 399
    invoke-direct {p0, p1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->calculateDirection(Landroid/view/MotionEvent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;)V
    .locals 0
    .param p0, "x0"    # Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;

    .line 399
    invoke-direct {p0}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->reset()V

    return-void
.end method

.method static synthetic access$502(Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;F)F
    .locals 0
    .param p0, "x0"    # Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;
    .param p1, "x1"    # F

    .line 399
    iput p1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->startX:F

    return p1
.end method

.method static synthetic access$602(Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;F)F
    .locals 0
    .param p0, "x0"    # Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;
    .param p1, "x1"    # F

    .line 399
    iput p1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->startY:F

    return p1
.end method

.method static synthetic access$700(Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;Lio/sentry/internal/gestures/UiElement;)V
    .locals 0
    .param p0, "x0"    # Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;
    .param p1, "x1"    # Lio/sentry/internal/gestures/UiElement;

    .line 399
    invoke-direct {p0, p1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->setTarget(Lio/sentry/internal/gestures/UiElement;)V

    return-void
.end method

.method private calculateDirection(Landroid/view/MotionEvent;)Ljava/lang/String;
    .locals 4
    .param p1, "endEvent"    # Landroid/view/MotionEvent;

    .line 416
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->startX:F

    sub-float/2addr v0, v1

    .line 417
    .local v0, "diffX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->startY:F

    sub-float/2addr v1, v2

    .line 419
    .local v1, "diffY":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    const/4 v3, 0x0

    if-lez v2, :cond_1

    .line 420
    cmpl-float v2, v0, v3

    if-lez v2, :cond_0

    .line 421
    const-string v2, "right"

    .local v2, "direction":Ljava/lang/String;
    goto :goto_0

    .line 423
    .end local v2    # "direction":Ljava/lang/String;
    :cond_0
    const-string v2, "left"

    .restart local v2    # "direction":Ljava/lang/String;
    goto :goto_0

    .line 426
    .end local v2    # "direction":Ljava/lang/String;
    :cond_1
    cmpl-float v2, v1, v3

    if-lez v2, :cond_2

    .line 427
    const-string v2, "down"

    .restart local v2    # "direction":Ljava/lang/String;
    goto :goto_0

    .line 429
    .end local v2    # "direction":Ljava/lang/String;
    :cond_2
    const-string v2, "up"

    .line 432
    .restart local v2    # "direction":Ljava/lang/String;
    :goto_0
    return-object v2
.end method

.method private reset()V
    .locals 1

    .line 436
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->target:Lio/sentry/internal/gestures/UiElement;

    .line 437
    sget-object v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;->Unknown:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    iput-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->type:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    .line 438
    const/4 v0, 0x0

    iput v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->startX:F

    .line 439
    iput v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->startY:F

    .line 440
    return-void
.end method

.method private setTarget(Lio/sentry/internal/gestures/UiElement;)V
    .locals 0
    .param p1, "target"    # Lio/sentry/internal/gestures/UiElement;

    .line 406
    iput-object p1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->target:Lio/sentry/internal/gestures/UiElement;

    .line 407
    return-void
.end method
