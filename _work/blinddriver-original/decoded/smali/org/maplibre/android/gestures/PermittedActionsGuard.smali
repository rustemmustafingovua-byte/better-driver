.class Lorg/maplibre/android/gestures/PermittedActionsGuard;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BITS_PER_PERMITTED_ACTION:I = 0x8

.field private static final NO_ACTION_PERMITTED:I = 0xff

.field private static final PERMITTED_ACTION_MASK:I = 0xff


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updatePermittedActions(II)J
    .locals 3

    if-nez p2, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    sub-int p0, p1, p2

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    const-wide/16 v0, 0xff

    const/4 v2, 0x1

    if-le p0, v2, :cond_1

    return-wide v0

    :cond_1
    if-le p1, p2, :cond_2

    const-wide/16 p0, 0x5

    return-wide p0

    :cond_2
    if-ge p1, p2, :cond_3

    return-wide v0

    :cond_3
    if-ne p1, v2, :cond_4

    const-wide/16 p0, 0x1

    goto :goto_0

    :cond_4
    const-wide/16 p0, 0x6

    :goto_0
    const/16 p2, 0x8

    shl-long/2addr p0, p2

    const-wide/16 v0, 0x2

    add-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public isMissingActions(III)Z
    .locals 4

    invoke-direct {p0, p2, p3}, Lorg/maplibre/android/gestures/PermittedActionsGuard;->updatePermittedActions(II)J

    move-result-wide p2

    int-to-long p0, p1

    cmp-long v0, p0, p2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-eqz v0, :cond_2

    const-wide/16 v2, 0xff

    and-long/2addr v2, p2

    cmp-long v0, p0, v2

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x8

    shr-long/2addr p2, v0

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
