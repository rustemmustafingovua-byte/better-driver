.class public final Lub/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public l:Ljava/lang/Object;

.field public m:D

.field public n:I

.field public o:Lub/b;

.field public p:I

.field public q:Lf7/c0;


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 5

    check-cast p1, Lub/b;

    iget-wide v0, p0, Lub/b;->m:D

    iget-wide v2, p1, Lub/b;->m:D

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    iget p0, p0, Lub/b;->n:I

    iget p1, p1, Lub/b;->n:I

    if-ge p0, p1, :cond_2

    :goto_0
    const/4 p0, -0x1

    return p0

    :cond_2
    if-le p0, p1, :cond_3

    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
