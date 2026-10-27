.class public final Lu/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/r0;
.implements Lu/u0;


# instance fields
.field public final a:Lu/g;

.field public final b:Lf1/h;


# direct methods
.method public constructor <init>(Lu/g;Lf1/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/r;->a:Lu/g;

    iput-object p2, p0, Lu/r;->b:Lf1/h;

    return-void
.end method


# virtual methods
.method public final a(IIZI)J
    .locals 0

    const/4 p0, 0x0

    if-nez p3, :cond_0

    invoke-static {p0, p4, p1, p2}, Lb3/b;->a(IIII)J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-static {p0, p4, p1, p2}, Ll9/a;->l(IIII)J

    move-result-wide p0

    return-wide p0
.end method

.method public final b(Lc2/f1;)I
    .locals 0

    iget p0, p1, Lc2/f1;->l:I

    return p0
.end method

.method public final c(Lc2/f1;)I
    .locals 0

    iget p0, p1, Lc2/f1;->m:I

    return p0
.end method

.method public final d([Lc2/f1;Lc2/t0;[III)Lc2/s0;
    .locals 6

    new-instance v0, Lu/q;

    move-object v2, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move v3, p5

    invoke-direct/range {v0 .. v5}, Lu/q;-><init>([Lc2/f1;Lu/r;ILc2/t0;[I)V

    sget-object p0, Lu8/s;->l:Lu8/s;

    invoke-interface {v4, v3, p4, p0, v0}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object p0

    return-object p0
.end method

.method public final e(Lc2/p;Ljava/util/List;I)I
    .locals 9

    iget-object p0, p0, Lu/r;->a:Lu/g;

    invoke-interface {p0}, Lu/g;->a()F

    move-result p0

    invoke-interface {p1, p0}, Lb3/c;->h0(F)I

    move-result p0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    mul-int/2addr p1, p0

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p1

    const/4 v1, 0x0

    move v2, v0

    move v4, v2

    move v3, v1

    :goto_0
    const v5, 0x7fffffff

    if-ge v2, p1, :cond_4

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc2/q0;

    invoke-static {v6}, Lu/b;->h(Lc2/q0;)Lu/v0;

    move-result-object v7

    invoke-static {v7}, Lu/b;->i(Lu/v0;)F

    move-result v7

    cmpg-float v8, v7, v1

    if-nez v8, :cond_2

    if-ne p3, v5, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    sub-int v7, p3, p0

    :goto_1
    invoke-interface {v6, v5}, Lc2/q0;->c(I)I

    move-result v5

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/2addr p0, v5

    invoke-interface {v6, v5}, Lc2/q0;->u(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_2

    :cond_2
    cmpl-float v5, v7, v1

    if-lez v5, :cond_3

    add-float/2addr v3, v7

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    cmpg-float p1, v3, v1

    if-nez p1, :cond_5

    move p0, v0

    goto :goto_3

    :cond_5
    if-ne p3, v5, :cond_6

    move p0, v5

    goto :goto_3

    :cond_6
    sub-int/2addr p3, p0

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v3

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    :goto_3
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p1

    :goto_4
    if-ge v0, p1, :cond_9

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lc2/q0;

    invoke-static {p3}, Lu/b;->h(Lc2/q0;)Lu/v0;

    move-result-object v2

    invoke-static {v2}, Lu/b;->i(Lu/v0;)F

    move-result v2

    cmpl-float v3, v2, v1

    if-lez v3, :cond_8

    if-eq p0, v5, :cond_7

    int-to-float v3, p0

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_5

    :cond_7
    move v2, v5

    :goto_5
    invoke-interface {p3, v2}, Lc2/q0;->u(I)I

    move-result p3

    invoke-static {v4, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    move v4, p3

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    return v4
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lu/r;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lu/r;

    iget-object v0, p0, Lu/r;->a:Lu/g;

    iget-object v1, p1, Lu/r;->a:Lu/g;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lu/r;->b:Lf1/h;

    iget-object p1, p1, Lu/r;->b:Lf1/h;

    invoke-virtual {p0, p1}, Lf1/h;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final f(Lc2/p;Ljava/util/List;I)I
    .locals 9

    iget-object p0, p0, Lu/r;->a:Lu/g;

    invoke-interface {p0}, Lu/g;->a()F

    move-result p0

    invoke-interface {p1, p0}, Lb3/c;->h0(F)I

    move-result p0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    mul-int/2addr p1, p0

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p1

    const/4 v1, 0x0

    move v2, v0

    move v4, v2

    move v3, v1

    :goto_0
    const v5, 0x7fffffff

    if-ge v2, p1, :cond_4

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc2/q0;

    invoke-static {v6}, Lu/b;->h(Lc2/q0;)Lu/v0;

    move-result-object v7

    invoke-static {v7}, Lu/b;->i(Lu/v0;)F

    move-result v7

    cmpg-float v8, v7, v1

    if-nez v8, :cond_2

    if-ne p3, v5, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    sub-int v7, p3, p0

    :goto_1
    invoke-interface {v6, v5}, Lc2/q0;->c(I)I

    move-result v5

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/2addr p0, v5

    invoke-interface {v6, v5}, Lc2/q0;->z(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_2

    :cond_2
    cmpl-float v5, v7, v1

    if-lez v5, :cond_3

    add-float/2addr v3, v7

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    cmpg-float p1, v3, v1

    if-nez p1, :cond_5

    move p0, v0

    goto :goto_3

    :cond_5
    if-ne p3, v5, :cond_6

    move p0, v5

    goto :goto_3

    :cond_6
    sub-int/2addr p3, p0

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v3

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    :goto_3
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p1

    :goto_4
    if-ge v0, p1, :cond_9

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lc2/q0;

    invoke-static {p3}, Lu/b;->h(Lc2/q0;)Lu/v0;

    move-result-object v2

    invoke-static {v2}, Lu/b;->i(Lu/v0;)F

    move-result v2

    cmpl-float v3, v2, v1

    if-lez v3, :cond_8

    if-eq p0, v5, :cond_7

    int-to-float v3, p0

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_5

    :cond_7
    move v2, v5

    :goto_5
    invoke-interface {p3, v2}, Lc2/q0;->z(I)I

    move-result p3

    invoke-static {v4, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    move v4, p3

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    return v4
.end method

.method public final g(Lc2/p;Ljava/util/List;I)I
    .locals 8

    iget-object p0, p0, Lu/r;->a:Lu/g;

    invoke-interface {p0}, Lu/g;->a()F

    move-result p0

    invoke-interface {p1, p0}, Lb3/c;->h0(F)I

    move-result p0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p1

    const/4 v1, 0x0

    move v2, v0

    move v3, v2

    move v4, v1

    :goto_0
    if-ge v0, p1, :cond_3

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc2/q0;

    invoke-static {v5}, Lu/b;->h(Lc2/q0;)Lu/v0;

    move-result-object v6

    invoke-static {v6}, Lu/b;->i(Lu/v0;)F

    move-result v6

    invoke-interface {v5, p3}, Lc2/q0;->b0(I)I

    move-result v5

    cmpg-float v7, v6, v1

    if-nez v7, :cond_1

    add-int/2addr v3, v5

    goto :goto_1

    :cond_1
    cmpl-float v7, v6, v1

    if-lez v7, :cond_2

    add-float/2addr v4, v6

    int-to-float v5, v5

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    int-to-float p1, v2

    mul-float/2addr p1, v4

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr p1, v3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    mul-int/2addr p2, p0

    add-int/2addr p2, p1

    return p2
.end method

.method public final h(Lc2/p;Ljava/util/List;I)I
    .locals 8

    iget-object p0, p0, Lu/r;->a:Lu/g;

    invoke-interface {p0}, Lu/g;->a()F

    move-result p0

    invoke-interface {p1, p0}, Lb3/c;->h0(F)I

    move-result p0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p1

    const/4 v1, 0x0

    move v2, v0

    move v3, v2

    move v4, v1

    :goto_0
    if-ge v0, p1, :cond_3

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc2/q0;

    invoke-static {v5}, Lu/b;->h(Lc2/q0;)Lu/v0;

    move-result-object v6

    invoke-static {v6}, Lu/b;->i(Lu/v0;)F

    move-result v6

    invoke-interface {v5, p3}, Lc2/q0;->c(I)I

    move-result v5

    cmpg-float v7, v6, v1

    if-nez v7, :cond_1

    add-int/2addr v3, v5

    goto :goto_1

    :cond_1
    cmpl-float v7, v6, v1

    if-lez v7, :cond_2

    add-float/2addr v4, v6

    int-to-float v5, v5

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    int-to-float p1, v2

    mul-float/2addr p1, v4

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr p1, v3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    mul-int/2addr p2, p0

    add-int/2addr p2, p1

    return p2
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lu/r;->a:Lu/g;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lu/r;->b:Lf1/h;

    iget p0, p0, Lf1/h;->a:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final i(ILc2/t0;[I[I)V
    .locals 0

    iget-object p0, p0, Lu/r;->a:Lu/g;

    invoke-interface {p0, p1, p2, p3, p4}, Lu/g;->c(ILc2/t0;[I[I)V

    return-void
.end method

.method public final j(Lc2/t0;Ljava/util/List;J)Lc2/s0;
    .locals 10

    invoke-static {p3, p4}, Lb3/a;->i(J)I

    move-result v1

    invoke-static {p3, p4}, Lb3/a;->j(J)I

    move-result v2

    invoke-static {p3, p4}, Lb3/a;->g(J)I

    move-result v3

    invoke-static {p3, p4}, Lb3/a;->h(J)I

    move-result v4

    iget-object p3, p0, Lu/r;->a:Lu/g;

    invoke-interface {p3}, Lu/g;->a()F

    move-result p3

    invoke-interface {p1, p3}, Lb3/c;->h0(F)I

    move-result v5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    new-array v8, p3, [Lc2/f1;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v9

    move-object v0, p0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v0 .. v9}, Lu/b;->k(Lu/u0;IIIIILc2/t0;Ljava/util/List;[Lc2/f1;I)Lc2/s0;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ColumnMeasurePolicy(verticalArrangement="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lu/r;->a:Lu/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", horizontalAlignment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lu/r;->b:Lf1/h;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
