.class public final Lqb/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpb/d;
.implements Ljava/io/Serializable;


# instance fields
.field public final l:I

.field public final m:I

.field public transient n:Ljava/lang/ref/SoftReference;

.field public o:[D


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sub-int v0, p1, p2

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 2
    iput p1, p0, Lqb/c;->l:I

    .line 3
    iput p2, p0, Lqb/c;->m:I

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must have at least 2 spatial dimensions"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([Lpb/a;I)V
    .locals 8

    add-int/lit8 v0, p2, -0x3

    const/4 v1, 0x0

    .line 5
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 6
    invoke-direct {p0, p2, v0}, Lqb/c;-><init>(II)V

    .line 7
    array-length v0, p1

    mul-int/2addr v0, p2

    new-array v0, v0, [D

    iput-object v0, p0, Lqb/c;->o:[D

    .line 8
    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_2

    mul-int v0, v1, p2

    .line 9
    iget-object v2, p0, Lqb/c;->o:[D

    aget-object v3, p1, v1

    iget-wide v4, v3, Lpb/a;->l:D

    aput-wide v4, v2, v0

    add-int/lit8 v4, v0, 0x1

    .line 10
    iget-wide v5, v3, Lpb/a;->m:D

    aput-wide v5, v2, v4

    const/4 v4, 0x3

    if-lt p2, v4, :cond_0

    add-int/lit8 v5, v0, 0x2

    const/4 v6, 0x2

    .line 11
    invoke-virtual {v3, v6}, Lpb/a;->l(I)D

    move-result-wide v6

    aput-wide v6, v2, v5

    :cond_0
    const/4 v2, 0x4

    if-lt p2, v2, :cond_1

    .line 12
    iget-object v2, p0, Lqb/c;->o:[D

    add-int/lit8 v0, v0, 0x3

    aget-object v3, p1, v1

    invoke-virtual {v3, v4}, Lpb/a;->l(I)D

    move-result-wide v3

    aput-wide v3, v2, v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final C(I)D
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lqb/c;->w(II)D

    move-result-wide p0

    return-wide p0
.end method

.method public final J(Lpb/h;)Lpb/h;
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lqb/c;->o:[D

    array-length v2, v1

    if-ge v0, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-wide v3, v1, v0

    aget-wide v1, v1, v2

    invoke-virtual {p1, v3, v4, v1, v2}, Lpb/h;->b(DD)V

    :cond_0
    iget v1, p0, Lqb/c;->l:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public final a()Lqb/c;
    .locals 3

    iget-object v0, p0, Lqb/c;->o:[D

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v0

    new-instance v1, Lqb/c;

    iget v2, p0, Lqb/c;->m:I

    iget p0, p0, Lqb/c;->l:I

    invoke-direct {v1, p0, v2}, Lqb/c;-><init>(II)V

    array-length v2, v0

    rem-int/2addr v2, p0

    if-nez v2, :cond_0

    iput-object v0, v1, Lqb/c;->o:[D

    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Packed array does not contain an integral number of coordinates"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(I)Lpb/a;
    .locals 2

    iget-object v0, p0, Lqb/c;->n:Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpb/a;

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lqb/c;->n:Ljava/lang/ref/SoftReference;

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    aget-object p0, v1, p1

    return-object p0

    :cond_2
    invoke-virtual {p0, p1}, Lqb/c;->f(I)Lpb/a;

    move-result-object p0

    return-object p0
.end method

.method public final c(ILpb/a;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lqb/c;->w(II)D

    move-result-wide v0

    iput-wide v0, p2, Lpb/a;->l:D

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lqb/c;->w(II)D

    move-result-wide v0

    iput-wide v0, p2, Lpb/a;->m:D

    invoke-virtual {p0}, Lqb/c;->getDimension()I

    move-result v0

    invoke-virtual {p0}, Lqb/c;->y()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    invoke-interface {p0, p1}, Lpb/d;->q(I)D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lpb/a;->v(D)V

    :cond_0
    invoke-virtual {p0}, Lqb/c;->y()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p0, p1}, Lpb/d;->K(I)D

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Lpb/a;->s(D)V

    :cond_1
    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lqb/c;->a()Lqb/c;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic d()Lpb/d;
    .locals 0

    invoke-virtual {p0}, Lqb/c;->a()Lqb/c;

    move-result-object p0

    return-object p0
.end method

.method public final f(I)Lpb/a;
    .locals 10

    iget-object v0, p0, Lqb/c;->o:[D

    iget v1, p0, Lqb/c;->l:I

    mul-int v2, p1, v1

    aget-wide v4, v0, v2

    mul-int v2, p1, v1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    aget-wide v6, v0, v2

    iget p0, p0, Lqb/c;->m:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    if-nez p0, :cond_0

    new-instance v3, Lpb/e;

    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    invoke-direct/range {v3 .. v9}, Lpb/a;-><init>(DDD)V

    return-object v3

    :cond_0
    const/4 v8, 0x3

    if-ne v1, v8, :cond_1

    if-nez p0, :cond_1

    mul-int/2addr p1, v1

    add-int/2addr p1, v2

    aget-wide v8, v0, p1

    new-instance v3, Lpb/a;

    invoke-direct/range {v3 .. v9}, Lpb/a;-><init>(DDD)V

    return-object v3

    :cond_1
    if-ne v1, v8, :cond_2

    if-ne p0, v3, :cond_2

    mul-int/2addr p1, v1

    add-int/2addr p1, v2

    aget-wide p0, v0, p1

    new-instance v3, Lpb/f;

    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    invoke-direct/range {v3 .. v9}, Lpb/a;-><init>(DDD)V

    iput-wide p0, v3, Lpb/f;->o:D

    return-object v3

    :cond_2
    const/4 p0, 0x4

    if-ne v1, p0, :cond_3

    mul-int p0, p1, v1

    add-int/2addr p0, v2

    aget-wide v2, v0, p0

    mul-int/2addr p1, v1

    add-int/2addr p1, v8

    aget-wide p0, v0, p1

    move-wide v8, v2

    new-instance v3, Lpb/g;

    invoke-direct/range {v3 .. v9}, Lpb/a;-><init>(DDD)V

    iput-wide p0, v3, Lpb/g;->o:D

    return-object v3

    :cond_3
    new-instance p0, Lpb/a;

    invoke-direct {p0, v4, v5, v6, v7}, Lpb/a;-><init>(DD)V

    return-object p0
.end method

.method public final getDimension()I
    .locals 0

    iget p0, p0, Lqb/c;->l:I

    return p0
.end method

.method public final n(I)D
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lqb/c;->w(II)D

    move-result-wide p0

    return-wide p0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lqb/c;->o:[D

    array-length v0, v0

    iget p0, p0, Lqb/c;->l:I

    div-int/2addr v0, p0

    return v0
.end method

.method public final t()[Lpb/a;
    .locals 4

    iget-object v0, p0, Lqb/c;->n:Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpb/a;

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lqb/c;->n:Ljava/lang/ref/SoftReference;

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p0}, Lqb/c;->size()I

    move-result v0

    new-array v1, v0, [Lpb/a;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Lqb/c;->f(I)Lpb/a;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lqb/c;->n:Ljava/lang/ref/SoftReference;

    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    invoke-virtual {p0}, Lqb/c;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "()"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lqb/c;->getDimension()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_4

    if-lez v4, :cond_1

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    move v5, v3

    :goto_1
    if-ge v5, v1, :cond_3

    if-lez v5, :cond_2

    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    sget-object v6, Lac/b;->b:Lac/b;

    invoke-virtual {p0, v4, v5}, Lqb/c;->w(II)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lac/b;->a(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    const/16 p0, 0x29

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final w(II)D
    .locals 1

    iget-object v0, p0, Lqb/c;->o:[D

    iget p0, p0, Lqb/c;->l:I

    mul-int/2addr p1, p0

    add-int/2addr p1, p2

    aget-wide p0, v0, p1

    return-wide p0
.end method

.method public final y()I
    .locals 0

    iget p0, p0, Lqb/c;->m:I

    return p0
.end method
