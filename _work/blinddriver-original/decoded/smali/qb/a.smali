.class public final Lqb/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpb/d;
.implements Ljava/io/Serializable;


# instance fields
.field public l:I

.field public m:I

.field public n:[Lpb/a;


# direct methods
.method public constructor <init>([Lpb/a;)V
    .locals 8

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 1
    array-length v2, p1

    if-nez v2, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    array-length v2, p1

    move v3, v1

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v5, p1, v3

    .line 3
    instance-of v6, v5, Lpb/e;

    if-eqz v6, :cond_1

    const/4 v5, 0x2

    goto :goto_1

    .line 4
    :cond_1
    instance-of v6, v5, Lpb/f;

    if-eqz v6, :cond_3

    :cond_2
    move v5, v0

    goto :goto_1

    .line 5
    :cond_3
    instance-of v5, v5, Lpb/g;

    if-eqz v5, :cond_2

    const/4 v5, 0x4

    .line 6
    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    move v0, v4

    :cond_5
    :goto_2
    if-eqz p1, :cond_b

    .line 7
    array-length v2, p1

    if-nez v2, :cond_6

    goto :goto_5

    .line 8
    :cond_6
    array-length v2, p1

    move v3, v1

    move v4, v3

    :goto_3
    if-ge v3, v2, :cond_a

    aget-object v5, p1, v3

    .line 9
    instance-of v6, v5, Lpb/e;

    if-eqz v6, :cond_8

    :cond_7
    move v7, v1

    goto :goto_4

    .line 10
    :cond_8
    instance-of v6, v5, Lpb/f;

    const/4 v7, 0x1

    if-eqz v6, :cond_9

    goto :goto_4

    .line 11
    :cond_9
    instance-of v5, v5, Lpb/g;

    if-eqz v5, :cond_7

    .line 12
    :goto_4
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_a
    move v1, v4

    .line 13
    :cond_b
    :goto_5
    invoke-direct {p0, p1, v0, v1}, Lqb/a;-><init>([Lpb/a;II)V

    return-void
.end method

.method public constructor <init>([Lpb/a;II)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p2, p0, Lqb/a;->l:I

    .line 16
    iput p3, p0, Lqb/a;->m:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 17
    new-array p1, p1, [Lpb/a;

    iput-object p1, p0, Lqb/a;->n:[Lpb/a;

    return-void

    .line 18
    :cond_0
    iput-object p1, p0, Lqb/a;->n:[Lpb/a;

    return-void
.end method


# virtual methods
.method public final C(I)D
    .locals 0

    iget-object p0, p0, Lqb/a;->n:[Lpb/a;

    aget-object p0, p0, p1

    iget-wide p0, p0, Lpb/a;->l:D

    return-wide p0
.end method

.method public final J(Lpb/h;)Lpb/h;
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lqb/a;->n:[Lpb/a;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    iget-wide v2, v1, Lpb/a;->l:D

    iget-wide v4, v1, Lpb/a;->m:D

    invoke-virtual {p1, v2, v3, v4, v5}, Lpb/h;->b(DD)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public final K(I)D
    .locals 1

    invoke-virtual {p0}, Lqb/a;->y()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lqb/a;->n:[Lpb/a;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lpb/a;->j()D

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0
.end method

.method public final a()Lqb/a;
    .locals 5

    iget-object v0, p0, Lqb/a;->n:[Lpb/a;

    array-length v1, v0

    new-array v1, v1, [Lpb/a;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    invoke-interface {p0}, Lpb/d;->m()Lpb/a;

    move-result-object v3

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Lpb/a;->r(Lpb/a;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lqb/a;

    iget v2, p0, Lqb/a;->l:I

    iget p0, p0, Lqb/a;->m:I

    invoke-direct {v0, v1, v2, p0}, Lqb/a;-><init>([Lpb/a;II)V

    return-object v0
.end method

.method public final b(I)Lpb/a;
    .locals 0

    iget-object p0, p0, Lqb/a;->n:[Lpb/a;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final c(ILpb/a;)V
    .locals 0

    iget-object p0, p0, Lqb/a;->n:[Lpb/a;

    aget-object p0, p0, p1

    invoke-virtual {p2, p0}, Lpb/a;->r(Lpb/a;)V

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lqb/a;->a()Lqb/a;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic d()Lpb/d;
    .locals 0

    invoke-virtual {p0}, Lqb/a;->a()Lqb/a;

    move-result-object p0

    return-object p0
.end method

.method public final getDimension()I
    .locals 0

    iget p0, p0, Lqb/a;->l:I

    return p0
.end method

.method public final n(I)D
    .locals 0

    iget-object p0, p0, Lqb/a;->n:[Lpb/a;

    aget-object p0, p0, p1

    iget-wide p0, p0, Lpb/a;->m:D

    return-wide p0
.end method

.method public final q(I)D
    .locals 2

    invoke-virtual {p0}, Lqb/a;->getDimension()I

    move-result v0

    invoke-virtual {p0}, Lqb/a;->y()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    iget-object p0, p0, Lqb/a;->n:[Lpb/a;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lpb/a;->o()D

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lqb/a;->n:[Lpb/a;

    array-length p0, p0

    return p0
.end method

.method public final t()[Lpb/a;
    .locals 0

    iget-object p0, p0, Lqb/a;->n:[Lpb/a;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Lqb/a;->n:[Lpb/a;

    array-length v0, p0

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x11

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "()"

    return-object p0
.end method

.method public final w(II)D
    .locals 1

    iget-object p0, p0, Lqb/a;->n:[Lpb/a;

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    aget-object p0, p0, p1

    invoke-virtual {p0, p2}, Lpb/a;->l(I)D

    move-result-wide p0

    return-wide p0

    :cond_0
    aget-object p0, p0, p1

    iget-wide p0, p0, Lpb/a;->m:D

    return-wide p0

    :cond_1
    aget-object p0, p0, p1

    iget-wide p0, p0, Lpb/a;->l:D

    return-wide p0
.end method

.method public final y()I
    .locals 0

    iget p0, p0, Lqb/a;->m:I

    return p0
.end method
