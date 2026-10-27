.class public interface abstract Lpb/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# virtual methods
.method public abstract C(I)D
.end method

.method public abstract J(Lpb/h;)Lpb/h;
.end method

.method public K(I)D
    .locals 2

    invoke-interface {p0}, Lpb/d;->y()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p0}, Lpb/d;->getDimension()I

    move-result v0

    invoke-interface {p0}, Lpb/d;->y()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-interface {p0, p1, v0}, Lpb/d;->w(II)D

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0
.end method

.method public abstract b(I)Lpb/a;
.end method

.method public abstract c(ILpb/a;)V
.end method

.method public abstract d()Lpb/d;
.end method

.method public abstract getDimension()I
.end method

.method public m()Lpb/a;
    .locals 5

    invoke-interface {p0}, Lpb/d;->getDimension()I

    move-result v0

    invoke-interface {p0}, Lpb/d;->y()I

    move-result p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance p0, Lpb/e;

    invoke-direct {p0}, Lpb/a;-><init>()V

    return-object p0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    if-nez p0, :cond_1

    new-instance p0, Lpb/a;

    invoke-direct {p0}, Lpb/a;-><init>()V

    return-object p0

    :cond_1
    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_2

    if-ne p0, v4, :cond_2

    new-instance p0, Lpb/f;

    invoke-direct {p0}, Lpb/a;-><init>()V

    iput-wide v2, p0, Lpb/f;->o:D

    return-object p0

    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    if-ne p0, v4, :cond_3

    new-instance p0, Lpb/g;

    invoke-direct {p0}, Lpb/a;-><init>()V

    iput-wide v2, p0, Lpb/g;->o:D

    return-object p0

    :cond_3
    new-instance p0, Lpb/a;

    invoke-direct {p0}, Lpb/a;-><init>()V

    return-object p0
.end method

.method public abstract n(I)D
.end method

.method public q(I)D
    .locals 2

    invoke-interface {p0}, Lpb/d;->getDimension()I

    move-result v0

    invoke-interface {p0}, Lpb/d;->y()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    invoke-interface {p0, p1, v1}, Lpb/d;->w(II)D

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0
.end method

.method public abstract size()I
.end method

.method public abstract t()[Lpb/a;
.end method

.method public abstract w(II)D
.end method

.method public abstract y()I
.end method
