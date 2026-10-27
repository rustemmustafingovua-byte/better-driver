.class public final Lio/sentry/HttpStatusCodeRange;
.super Ljava/lang/Object;
.source "HttpStatusCodeRange.java"


# static fields
.field public static final DEFAULT_MAX:I = 0x257

.field public static final DEFAULT_MIN:I = 0x1f4


# instance fields
.field private final max:I

.field private final min:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lio/sentry/HttpStatusCodeRange;->min:I

    .line 23
    iput p1, p0, Lio/sentry/HttpStatusCodeRange;->max:I

    .line 24
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lio/sentry/HttpStatusCodeRange;->min:I

    .line 18
    iput p2, p0, Lio/sentry/HttpStatusCodeRange;->max:I

    .line 19
    return-void
.end method


# virtual methods
.method public isInRange(I)Z
    .locals 1
    .param p1, "statusCode"    # I

    .line 27
    iget v0, p0, Lio/sentry/HttpStatusCodeRange;->min:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lio/sentry/HttpStatusCodeRange;->max:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
