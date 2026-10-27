.class public final Lm0/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/t0;


# instance fields
.field public final a:Lk/z;

.field public final b:Ljava/util/List;

.field public final c:I

.field public final d:I

.field public final e:Z

.field public final f:Lm0/a0;


# direct methods
.method public constructor <init>(Lk/z;Ljava/util/List;IIZLm0/a0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/p;->a:Lk/z;

    iput-object p2, p0, Lm0/p;->b:Ljava/util/List;

    iput p3, p0, Lm0/p;->c:I

    iput p4, p0, Lm0/p;->d:I

    iput-boolean p5, p0, Lm0/p;->e:Z

    iput-object p6, p0, Lm0/p;->f:Lm0/a0;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x1

    if-le p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "MultiSelectionLayout requires an infoList size greater than 1, was "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lt/b;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static m(Lk/b0;Lm0/a0;Lm0/x;II)V
    .locals 4

    iget-boolean p1, p1, Lm0/a0;->c:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    new-instance p1, Lm0/a0;

    invoke-virtual {p2, p4}, Lm0/x;->a(I)Lm0/z;

    move-result-object v2

    invoke-virtual {p2, p3}, Lm0/x;->a(I)Lm0/z;

    move-result-object v3

    if-le p4, p3, :cond_0

    move v0, v1

    :cond_0
    invoke-direct {p1, v2, v3, v0}, Lm0/a0;-><init>(Lm0/z;Lm0/z;Z)V

    goto :goto_0

    :cond_1
    new-instance p1, Lm0/a0;

    invoke-virtual {p2, p3}, Lm0/x;->a(I)Lm0/z;

    move-result-object v2

    invoke-virtual {p2, p4}, Lm0/x;->a(I)Lm0/z;

    move-result-object v3

    if-le p3, p4, :cond_2

    move v0, v1

    :cond_2
    invoke-direct {p1, v2, v3, v0}, Lm0/a0;-><init>(Lm0/z;Lm0/z;Z)V

    :goto_0
    if-gt p3, p4, :cond_3

    goto :goto_1

    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "minOffset should be less than or equal to maxOffset: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lt/b;->c(Ljava/lang/String;)V

    :goto_1
    iget-wide p2, p2, Lm0/x;->a:J

    invoke-virtual {p0, p2, p3}, Lk/b0;->c(J)I

    move-result p4

    iget-object v0, p0, Lk/b0;->c:[Ljava/lang/Object;

    aget-object v1, v0, p4

    iget-object p0, p0, Lk/b0;->b:[J

    aput-wide p2, p0, p4

    aput-object p1, v0, p4

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-boolean p0, p0, Lm0/p;->e:Z

    return p0
.end method

.method public final b()Lm0/x;
    .locals 1

    iget-boolean v0, p0, Lm0/p;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lm0/p;->k()Lm0/x;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lm0/p;->g()Lm0/x;

    move-result-object p0

    return-object p0
.end method

.method public final c()Lm0/a0;
    .locals 0

    iget-object p0, p0, Lm0/p;->f:Lm0/a0;

    return-object p0
.end method

.method public final d()Lm0/x;
    .locals 2

    invoke-virtual {p0}, Lm0/p;->h()Lm0/k;

    move-result-object v0

    sget-object v1, Lm0/k;->l:Lm0/k;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lm0/p;->g()Lm0/x;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lm0/p;->k()Lm0/x;

    move-result-object p0

    return-object p0
.end method

.method public final e(Lm0/t0;)Z
    .locals 10

    iget-object v0, p0, Lm0/p;->f:Lm0/a0;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    instance-of v0, p1, Lm0/p;

    if-eqz v0, :cond_4

    check-cast p1, Lm0/p;

    iget-object v0, p1, Lm0/p;->b:Ljava/util/List;

    iget-boolean v2, p1, Lm0/p;->e:Z

    iget-boolean v3, p0, Lm0/p;->e:Z

    if-ne v3, v2, :cond_4

    iget v2, p0, Lm0/p;->c:I

    iget v3, p1, Lm0/p;->c:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lm0/p;->d:I

    iget p1, p1, Lm0/p;->d:I

    if-ne v2, p1, :cond_4

    iget-object p0, p0, Lm0/p;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eq p1, v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p1, :cond_3

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm0/x;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lm0/x;

    iget-wide v6, v4, Lm0/x;->a:J

    iget-wide v8, v5, Lm0/x;->a:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    iget v6, v4, Lm0/x;->c:I

    iget v7, v5, Lm0/x;->c:I

    if-ne v6, v7, :cond_2

    iget v4, v4, Lm0/x;->d:I

    iget v5, v5, Lm0/x;->d:I

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    :cond_3
    return v2

    :cond_4
    :goto_2
    return v1
.end method

.method public final f()I
    .locals 0

    iget p0, p0, Lm0/p;->d:I

    return p0
.end method

.method public final g()Lm0/x;
    .locals 2

    iget v0, p0, Lm0/p;->d:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lm0/p;->o(IZ)I

    move-result v0

    iget-object p0, p0, Lm0/p;->b:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm0/x;

    return-object p0
.end method

.method public final getSize()I
    .locals 0

    iget-object p0, p0, Lm0/p;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final h()Lm0/k;
    .locals 2

    iget v0, p0, Lm0/p;->c:I

    iget v1, p0, Lm0/p;->d:I

    if-ge v0, v1, :cond_0

    sget-object p0, Lm0/k;->m:Lm0/k;

    return-object p0

    :cond_0
    if-le v0, v1, :cond_1

    sget-object p0, Lm0/k;->l:Lm0/k;

    return-object p0

    :cond_1
    div-int/lit8 v0, v0, 0x2

    iget-object p0, p0, Lm0/p;->b:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm0/x;

    invoke-virtual {p0}, Lm0/x;->b()Lm0/k;

    move-result-object p0

    return-object p0
.end method

.method public final i(Li9/c;)V
    .locals 3

    invoke-virtual {p0}, Lm0/p;->d()Lm0/x;

    move-result-object v0

    iget-wide v0, v0, Lm0/x;->a:J

    invoke-virtual {p0, v0, v1}, Lm0/p;->n(J)I

    move-result v0

    invoke-virtual {p0}, Lm0/p;->h()Lm0/k;

    move-result-object v1

    sget-object v2, Lm0/k;->l:Lm0/k;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lm0/p;->k()Lm0/x;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lm0/p;->g()Lm0/x;

    move-result-object v1

    :goto_0
    iget-wide v1, v1, Lm0/x;->a:J

    invoke-virtual {p0, v1, v2}, Lm0/p;->n(J)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    if-lt v0, v1, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lm0/p;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public final j(Lm0/a0;)Lk/b0;
    .locals 9

    iget-object v0, p1, Lm0/a0;->a:Lm0/z;

    iget-boolean v1, p1, Lm0/a0;->c:Z

    iget-wide v2, v0, Lm0/z;->c:J

    iget v4, v0, Lm0/z;->b:I

    iget-object v5, p1, Lm0/a0;->b:Lm0/z;

    iget-wide v6, v5, Lm0/z;->c:J

    iget v8, v5, Lm0/z;->b:I

    cmp-long v2, v2, v6

    if-nez v2, :cond_3

    if-eqz v1, :cond_0

    if-ge v4, v8, :cond_2

    :cond_0
    if-nez v1, :cond_1

    if-gt v4, v8, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "unexpectedly miss-crossed selection: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lt/b;->c(Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-wide v0, v0, Lm0/z;->c:J

    sget-object p0, Lk/o;->a:Lk/b0;

    new-instance p0, Lk/b0;

    invoke-direct {p0}, Lk/b0;-><init>()V

    invoke-virtual {p0, v0, v1, p1}, Lk/b0;->h(JLjava/lang/Object;)V

    return-object p0

    :cond_3
    sget-object v2, Lk/o;->a:Lk/b0;

    new-instance v2, Lk/b0;

    invoke-direct {v2}, Lk/b0;-><init>()V

    if-eqz v1, :cond_4

    move-object v3, v5

    goto :goto_1

    :cond_4
    move-object v3, v0

    :goto_1
    invoke-virtual {p0}, Lm0/p;->d()Lm0/x;

    move-result-object v4

    iget v3, v3, Lm0/z;->b:I

    invoke-virtual {p0}, Lm0/p;->d()Lm0/x;

    move-result-object v6

    iget-object v6, v6, Lm0/x;->f:Lp2/j0;

    iget-object v6, v6, Lp2/j0;->a:Lp2/i0;

    iget-object v6, v6, Lp2/i0;->a:Lp2/g;

    iget-object v6, v6, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v2, p1, v4, v3, v6}, Lm0/p;->m(Lk/b0;Lm0/a0;Lm0/x;II)V

    new-instance v3, Lb0/r0;

    const/16 v4, 0x8

    invoke-direct {v3, p0, v2, p1, v4}, Lb0/r0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v3}, Lm0/p;->i(Li9/c;)V

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    move-object v0, v5

    :goto_2
    invoke-virtual {p0}, Lm0/p;->h()Lm0/k;

    move-result-object v1

    sget-object v3, Lm0/k;->l:Lm0/k;

    if-ne v1, v3, :cond_6

    invoke-virtual {p0}, Lm0/p;->k()Lm0/x;

    move-result-object p0

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lm0/p;->g()Lm0/x;

    move-result-object p0

    :goto_3
    const/4 v1, 0x0

    iget v0, v0, Lm0/z;->b:I

    invoke-static {v2, p1, p0, v1, v0}, Lm0/p;->m(Lk/b0;Lm0/a0;Lm0/x;II)V

    return-object v2
.end method

.method public final k()Lm0/x;
    .locals 2

    iget v0, p0, Lm0/p;->c:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lm0/p;->o(IZ)I

    move-result v0

    iget-object p0, p0, Lm0/p;->b:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm0/x;

    return-object p0
.end method

.method public final l()I
    .locals 0

    iget p0, p0, Lm0/p;->c:I

    return p0
.end method

.method public final n(J)I
    .locals 2

    :try_start_0
    iget-object p0, p0, Lm0/p;->a:Lk/z;

    invoke-virtual {p0, p1, p2}, Lk/z;->c(J)I

    move-result p0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid selectableId: "

    invoke-static {p1, p2, v1}, Lm/a;->k(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final o(IZ)I
    .locals 2

    invoke-virtual {p0}, Lm0/p;->h()Lm0/k;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v1, :cond_3

    if-ne p0, v0, :cond_0

    :goto_0
    move p2, v1

    goto :goto_1

    :cond_0
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :cond_3
    :goto_1
    xor-int/lit8 p0, p2, 0x1

    sub-int/2addr p1, p0

    div-int/2addr p1, v0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MultiSelectionLayout(isStartHandle="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lm0/p;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", startPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lm0/p;->c:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", endPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lm0/p;->d:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", crossed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lm0/p;->h()Lm0/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", infos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "[\n\t"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lm0/p;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lm0/x;

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_1

    :cond_0
    const-string v7, ",\n\t"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p0, "\n]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "toString(...)"

    invoke-static {p0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
