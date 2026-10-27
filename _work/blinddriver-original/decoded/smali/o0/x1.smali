.class public final Lo0/x1;
.super Lf1/q;
.source "SourceFile"

# interfaces
.implements Le2/i;
.implements Le2/x;


# instance fields
.field public z:Ljava/util/LinkedHashMap;


# virtual methods
.method public final b(Lc2/t0;Lc2/q0;J)Lc2/s0;
    .locals 6

    sget-object v0, Lo0/n1;->c:Lr0/s2;

    invoke-static {p0, v0}, Le2/l;->h(Le2/i;Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb3/f;

    iget v0, v0, Lb3/f;->l:F

    const/4 v1, 0x0

    int-to-float v2, v1

    cmpg-float v3, v0, v2

    if-gez v3, :cond_0

    move v0, v2

    :cond_0
    invoke-interface {p2, p3, p4}, Lc2/q0;->C(J)Lc2/f1;

    move-result-object p2

    iget-boolean p3, p0, Lf1/q;->y:Z

    if-eqz p3, :cond_1

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-static {v0, v2}, Lb3/f;->a(FF)I

    move-result p3

    if-lez p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    move p3, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p4

    if-nez p4, :cond_2

    invoke-interface {p1, v0}, Lb3/c;->h0(F)I

    move-result p4

    goto :goto_1

    :cond_2
    move p4, v1

    :goto_1
    if-eqz p3, :cond_3

    iget v0, p2, Lc2/f1;->l:I

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    :cond_3
    iget v0, p2, Lc2/f1;->l:I

    :goto_2
    if-eqz p3, :cond_4

    iget v2, p2, Lc2/f1;->m:I

    invoke-static {v2, p4}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_3

    :cond_4
    iget v2, p2, Lc2/f1;->m:I

    :goto_3
    if-eqz p3, :cond_8

    iget-object p3, p0, Lo0/x1;->z:Ljava/util/LinkedHashMap;

    if-nez p3, :cond_5

    new-instance p3, Ljava/util/LinkedHashMap;

    const/4 v3, 0x2

    invoke-direct {p3, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object p3, p0, Lo0/x1;->z:Ljava/util/LinkedHashMap;

    :cond_5
    sget-object v3, Lo0/n1;->b:Lc2/v1;

    iget v4, p2, Lc2/f1;->l:I

    sub-int v4, p4, v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    if-gez v4, :cond_6

    move v4, v1

    :cond_6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p3, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lo0/n1;->a:Lc2/k;

    iget v4, p2, Lc2/f1;->m:I

    sub-int/2addr p4, v4

    int-to-float p4, p4

    div-float/2addr p4, v5

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    if-gez p4, :cond_7

    goto :goto_4

    :cond_7
    move v1, p4

    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p3, v3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object p0, p0, Lo0/x1;->z:Ljava/util/LinkedHashMap;

    if-nez p0, :cond_9

    sget-object p0, Lu8/s;->l:Lu8/s;

    :cond_9
    new-instance p3, Lo0/w1;

    invoke-direct {p3, v0, v2, p2}, Lo0/w1;-><init>(IILc2/f1;)V

    invoke-interface {p1, v0, v2, p0, p3}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object p0

    return-object p0
.end method
