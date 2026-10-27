.class public final Lcom/carrotsearch/hppc/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/carrotsearch/hppc/x0;
.implements Ljava/lang/Cloneable;


# instance fields
.field public l:[J

.field public m:[I

.field public n:I

.field public o:I

.field public p:I

.field public q:Z

.field public final r:D

.field public s:Lcom/carrotsearch/hppc/u;


# direct methods
.method public constructor <init>()V
    .locals 5

    new-instance v0, Lcom/carrotsearch/hppc/n;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/carrotsearch/hppc/n;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/carrotsearch/hppc/y0;->s:Lcom/carrotsearch/hppc/u;

    const-wide/high16 v0, 0x3fe8000000000000L    # 0.75

    invoke-static {v0, v1}, Lcom/carrotsearch/hppc/t;->a(D)V

    iput-wide v0, p0, Lcom/carrotsearch/hppc/y0;->r:D

    iget v2, p0, Lcom/carrotsearch/hppc/y0;->p:I

    const/4 v3, 0x4

    if-gt v3, v2, :cond_0

    iget-object v2, p0, Lcom/carrotsearch/hppc/y0;->l:[J

    if-nez v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/carrotsearch/hppc/y0;->l:[J

    iget-object v4, p0, Lcom/carrotsearch/hppc/y0;->m:[I

    invoke-static {v0, v1, v3}, Lcom/carrotsearch/hppc/t;->d(DI)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/carrotsearch/hppc/y0;->a(I)V

    if-eqz v2, :cond_2

    iget v0, p0, Lcom/carrotsearch/hppc/y0;->n:I

    iget-boolean v1, p0, Lcom/carrotsearch/hppc/y0;->q:Z

    add-int/2addr v0, v1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v4, v2}, Lcom/carrotsearch/hppc/y0;->p([I[J)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    iget-object v0, p0, Lcom/carrotsearch/hppc/y0;->s:Lcom/carrotsearch/hppc/u;

    invoke-interface {v0, p1}, Lcom/carrotsearch/hppc/u;->e(I)I

    iget-object v0, p0, Lcom/carrotsearch/hppc/y0;->l:[J

    iget-object v1, p0, Lcom/carrotsearch/hppc/y0;->m:[I

    add-int/lit8 v2, p1, 0x1

    :try_start_0
    new-array v3, v2, [J

    iput-object v3, p0, Lcom/carrotsearch/hppc/y0;->l:[J

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/carrotsearch/hppc/y0;->m:[I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    iget-wide v0, p0, Lcom/carrotsearch/hppc/y0;->r:D

    invoke-static {v0, v1, p1}, Lcom/carrotsearch/hppc/t;->c(DI)I

    move-result v0

    iput v0, p0, Lcom/carrotsearch/hppc/y0;->p:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/carrotsearch/hppc/y0;->o:I

    return-void

    :catch_0
    move-exception v2

    iput-object v0, p0, Lcom/carrotsearch/hppc/y0;->l:[J

    iput-object v1, p0, Lcom/carrotsearch/hppc/y0;->m:[I

    new-instance v0, Landroidx/fragment/app/i0;

    iget p0, p0, Lcom/carrotsearch/hppc/y0;->o:I

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Not enough memory to allocate buffers for rehashing: %,d -> %,d"

    invoke-direct {v0, p1, v2, p0}, Landroidx/fragment/app/i0;-><init>(Ljava/lang/String;Ljava/lang/OutOfMemoryError;[Ljava/lang/Object;)V

    throw v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carrotsearch/hppc/y0;

    iget-object v1, p0, Lcom/carrotsearch/hppc/y0;->l:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Lcom/carrotsearch/hppc/y0;->l:[J

    iget-object v1, p0, Lcom/carrotsearch/hppc/y0;->m:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/carrotsearch/hppc/y0;->m:[I

    iget-boolean v1, v0, Lcom/carrotsearch/hppc/y0;->q:Z

    iput-boolean v1, v0, Lcom/carrotsearch/hppc/y0;->q:Z

    iget-object p0, p0, Lcom/carrotsearch/hppc/y0;->s:Lcom/carrotsearch/hppc/u;

    invoke-interface {p0}, Lcom/carrotsearch/hppc/u;->clone()Lcom/carrotsearch/hppc/u;

    move-result-object p0

    iput-object p0, v0, Lcom/carrotsearch/hppc/y0;->s:Lcom/carrotsearch/hppc/u;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/carrotsearch/hppc/y0;

    if-ne v1, v0, :cond_3

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/carrotsearch/hppc/y0;

    iget v0, p1, Lcom/carrotsearch/hppc/y0;->n:I

    iget-boolean v1, p1, Lcom/carrotsearch/hppc/y0;->q:Z

    add-int/2addr v0, v1

    iget v1, p0, Lcom/carrotsearch/hppc/y0;->n:I

    iget-boolean v2, p0, Lcom/carrotsearch/hppc/y0;->q:Z

    add-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/carrotsearch/hppc/b0;

    invoke-direct {v0, p1}, Lcom/carrotsearch/hppc/b0;-><init>(Lcom/carrotsearch/hppc/y0;)V

    :cond_1
    invoke-virtual {v0}, Lcom/carrotsearch/hppc/d;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/carrotsearch/hppc/d;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln5/g;

    iget-wide v1, p1, Ln5/g;->b:J

    invoke-virtual {p0, v1, v2}, Lcom/carrotsearch/hppc/y0;->g(J)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v1, v2}, Lcom/carrotsearch/hppc/y0;->j(J)I

    move-result v1

    iget p1, p1, Ln5/g;->c:I

    if-eq v1, p1, :cond_1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final g(J)Z
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    iget-boolean p0, p0, Lcom/carrotsearch/hppc/y0;->q:Z

    return p0

    :cond_0
    iget-object v2, p0, Lcom/carrotsearch/hppc/y0;->l:[J

    iget p0, p0, Lcom/carrotsearch/hppc/y0;->o:I

    invoke-static {p1, p2}, Lcom/carrotsearch/hppc/t;->h(J)I

    move-result v3

    :goto_0
    and-int/2addr v3, p0

    aget-wide v4, v2, v3

    cmp-long v6, v4, v0

    if-eqz v6, :cond_2

    cmp-long v4, v4, p1

    if-nez v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 4

    iget-boolean v0, p0, Lcom/carrotsearch/hppc/y0;->q:Z

    if-eqz v0, :cond_0

    const v0, -0x21524111

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/carrotsearch/hppc/b0;

    invoke-direct {v1, p0}, Lcom/carrotsearch/hppc/b0;-><init>(Lcom/carrotsearch/hppc/y0;)V

    :goto_1
    invoke-virtual {v1}, Lcom/carrotsearch/hppc/d;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v1}, Lcom/carrotsearch/hppc/d;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln5/g;

    iget-wide v2, p0, Ln5/g;->b:J

    invoke-static {v2, v3}, Lcom/carrotsearch/hppc/t;->f(J)J

    move-result-wide v2

    long-to-int v2, v2

    iget p0, p0, Ln5/g;->c:I

    invoke-static {p0}, Lcom/carrotsearch/hppc/t;->e(I)I

    move-result p0

    add-int/2addr p0, v2

    add-int/2addr v0, p0

    goto :goto_1

    :cond_1
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/carrotsearch/hppc/b0;

    invoke-direct {v0, p0}, Lcom/carrotsearch/hppc/b0;-><init>(Lcom/carrotsearch/hppc/y0;)V

    return-object v0
.end method

.method public final j(J)I
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    iget-boolean p1, p0, Lcom/carrotsearch/hppc/y0;->q:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/carrotsearch/hppc/y0;->m:[I

    iget p0, p0, Lcom/carrotsearch/hppc/y0;->o:I

    add-int/lit8 p0, p0, 0x1

    aget p0, p1, p0

    return p0

    :cond_0
    iget-object v2, p0, Lcom/carrotsearch/hppc/y0;->l:[J

    iget v3, p0, Lcom/carrotsearch/hppc/y0;->o:I

    invoke-static {p1, p2}, Lcom/carrotsearch/hppc/t;->h(J)I

    move-result v4

    :goto_0
    and-int/2addr v4, v3

    aget-wide v5, v2, v4

    cmp-long v7, v5, v0

    if-eqz v7, :cond_2

    cmp-long v5, v5, p1

    if-nez v5, :cond_1

    iget-object p0, p0, Lcom/carrotsearch/hppc/y0;->m:[I

    aget p0, p0, v4

    return p0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final l(J)I
    .locals 7

    iget v0, p0, Lcom/carrotsearch/hppc/y0;->o:I

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_1

    iget-boolean p0, p0, Lcom/carrotsearch/hppc/y0;->q:Z

    add-int/lit8 v0, v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    not-int p0, v0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/carrotsearch/hppc/y0;->l:[J

    invoke-static {p1, p2}, Lcom/carrotsearch/hppc/t;->h(J)I

    move-result v3

    :goto_0
    and-int/2addr v3, v0

    aget-wide v4, p0, v3

    cmp-long v6, v4, v1

    if-eqz v6, :cond_3

    cmp-long v4, v4, p1

    if-nez v4, :cond_2

    return v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    not-int p0, v3

    return p0
.end method

.method public final o(IJ)I
    .locals 9

    iget v0, p0, Lcom/carrotsearch/hppc/y0;->o:I

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    const/4 v4, 0x1

    if-nez v3, :cond_0

    iput-boolean v4, p0, Lcom/carrotsearch/hppc/y0;->q:Z

    iget-object p0, p0, Lcom/carrotsearch/hppc/y0;->m:[I

    add-int/2addr v0, v4

    aget p2, p0, v0

    aput p1, p0, v0

    return p2

    :cond_0
    iget-object v3, p0, Lcom/carrotsearch/hppc/y0;->l:[J

    invoke-static {p2, p3}, Lcom/carrotsearch/hppc/t;->h(J)I

    move-result v5

    :goto_0
    and-int/2addr v5, v0

    aget-wide v6, v3, v5

    cmp-long v8, v6, v1

    if-eqz v8, :cond_2

    cmp-long v6, v6, p2

    if-nez v6, :cond_1

    iget-object p0, p0, Lcom/carrotsearch/hppc/y0;->m:[I

    aget p2, p0, v5

    aput p1, p0, v5

    return p2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/carrotsearch/hppc/y0;->n:I

    iget v1, p0, Lcom/carrotsearch/hppc/y0;->p:I

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/carrotsearch/hppc/y0;->l:[J

    iget-object v2, p0, Lcom/carrotsearch/hppc/y0;->m:[I

    iget v3, p0, Lcom/carrotsearch/hppc/y0;->o:I

    add-int/2addr v3, v4

    iget-boolean v6, p0, Lcom/carrotsearch/hppc/y0;->q:Z

    add-int/2addr v0, v6

    iget-wide v6, p0, Lcom/carrotsearch/hppc/y0;->r:D

    invoke-static {v3, v6, v7, v0}, Lcom/carrotsearch/hppc/t;->i(IDI)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/carrotsearch/hppc/y0;->a(I)V

    aput-wide p2, v1, v5

    aput p1, v2, v5

    invoke-virtual {p0, v2, v1}, Lcom/carrotsearch/hppc/y0;->p([I[J)V

    goto :goto_1

    :cond_3
    aput-wide p2, v3, v5

    iget-object p2, p0, Lcom/carrotsearch/hppc/y0;->m:[I

    aput p1, p2, v5

    :goto_1
    iget p1, p0, Lcom/carrotsearch/hppc/y0;->n:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/carrotsearch/hppc/y0;->n:I

    const/4 p0, 0x0

    return p0
.end method

.method public final p([I[J)V
    .locals 10

    iget-object v0, p0, Lcom/carrotsearch/hppc/y0;->l:[J

    iget-object v1, p0, Lcom/carrotsearch/hppc/y0;->m:[I

    iget p0, p0, Lcom/carrotsearch/hppc/y0;->o:I

    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-wide v4, p2, v2

    aput-wide v4, v0, v3

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget v4, p1, v2

    aput v4, v1, v3

    :cond_0
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2

    aget-wide v3, p2, v2

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    invoke-static {v3, v4}, Lcom/carrotsearch/hppc/t;->h(J)I

    move-result v7

    :goto_1
    and-int/2addr v7, p0

    aget-wide v8, v0, v7

    cmp-long v8, v8, v5

    if-eqz v8, :cond_1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    aput-wide v3, v0, v7

    aget v3, p1, v2

    aput v3, v1, v7

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/carrotsearch/hppc/b0;

    invoke-direct {v1, p0}, Lcom/carrotsearch/hppc/b0;-><init>(Lcom/carrotsearch/hppc/y0;)V

    const/4 p0, 0x1

    :goto_0
    invoke-virtual {v1}, Lcom/carrotsearch/hppc/d;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/carrotsearch/hppc/d;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln5/g;

    if-nez p0, :cond_0

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-wide v3, v2, Ln5/g;->b:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "=>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v2, Ln5/g;->c:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
