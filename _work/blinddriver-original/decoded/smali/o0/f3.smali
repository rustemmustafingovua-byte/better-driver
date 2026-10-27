.class public final Lo0/f3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lu9/t;

.field public final b:Ln/r0;

.field public c:Ln/c;

.field public d:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lu9/t;Ln/r0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/f3;->a:Lu9/t;

    iput-object p2, p0, Lo0/f3;->b:Ln/r0;

    return-void
.end method


# virtual methods
.method public final a(Lc2/t0;Ljava/util/ArrayList;J)Lc2/s0;
    .locals 10

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    move v5, v0

    :goto_0
    if-ge v5, v3, :cond_0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc2/q0;

    invoke-interface {v6, p3, p4}, Lc2/q0;->C(J)Lc2/f1;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move-object v1, v3

    goto :goto_2

    :cond_1
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lc2/f1;

    iget v5, v5, Lc2/f1;->l:I

    invoke-static {v4}, Lg5/f;->A(Ljava/util/List;)I

    move-result v6

    if-gt v2, v6, :cond_3

    move v7, v2

    :goto_1
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lc2/f1;

    iget v9, v9, Lc2/f1;->l:I

    if-ge v5, v9, :cond_2

    move-object v1, v8

    move v5, v9

    :cond_2
    if-eq v7, v6, :cond_3

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    check-cast v1, Lc2/f1;

    if-eqz v1, :cond_4

    iget v1, v1, Lc2/f1;->l:I

    goto :goto_3

    :cond_4
    move v1, v0

    :goto_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v5

    move v6, v0

    :goto_4
    if-ge v6, v5, :cond_5

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc2/q0;

    invoke-interface {v7, p3, p4}, Lc2/q0;->C(J)Lc2/f1;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_6

    move-object p2, v3

    goto :goto_6

    :cond_6
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Lc2/f1;

    iget p3, p3, Lc2/f1;->l:I

    invoke-static {v8}, Lg5/f;->A(Ljava/util/List;)I

    move-result p4

    if-gt v2, p4, :cond_8

    move v5, v2

    :goto_5
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lc2/f1;

    iget v7, v7, Lc2/f1;->l:I

    if-ge p3, v7, :cond_7

    move-object p2, v6

    move p3, v7

    :cond_7
    if-eq v5, p4, :cond_8

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_8
    :goto_6
    check-cast p2, Lc2/f1;

    if-eqz p2, :cond_9

    iget p2, p2, Lc2/f1;->l:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_7

    :cond_9
    move-object p2, v3

    :goto_7
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_a

    move-object p3, v3

    goto :goto_9

    :cond_a
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    move-object p4, p3

    check-cast p4, Lc2/f1;

    iget p4, p4, Lc2/f1;->m:I

    invoke-static {v8}, Lg5/f;->A(Ljava/util/List;)I

    move-result v5

    if-gt v2, v5, :cond_c

    :goto_8
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lc2/f1;

    iget v7, v7, Lc2/f1;->m:I

    if-ge p4, v7, :cond_b

    move-object p3, v6

    move p4, v7

    :cond_b
    if-eq v2, v5, :cond_c

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_c
    :goto_9
    check-cast p3, Lc2/f1;

    if-eqz p3, :cond_d

    iget p3, p3, Lc2/f1;->m:I

    move v9, p3

    goto :goto_a

    :cond_d
    move v9, v0

    :goto_a
    sget p3, Lo0/h3;->c:F

    invoke-interface {p1, p3}, Lb3/c;->h0(F)I

    move-result p4

    invoke-static {p4, v1}, Ljava/lang/Math;->max(II)I

    move-result p4

    sget v2, Lo0/m3;->a:F

    invoke-interface {p1, v2}, Lb3/c;->h0(F)I

    move-result v5

    add-int/2addr v5, p4

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_b

    :cond_e
    move p2, v0

    :goto_b
    add-int/2addr p2, v5

    if-nez v1, :cond_f

    invoke-interface {p1, p3}, Lb3/c;->h0(F)I

    move-result p3

    invoke-interface {p1, v2}, Lb3/c;->h0(F)I

    move-result p4

    add-int/2addr p4, p3

    neg-int p3, p4

    div-int/lit8 v0, p3, 0x2

    :cond_f
    move v7, v0

    iget-object p3, p0, Lo0/f3;->d:Ljava/lang/Integer;

    if-nez p3, :cond_10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iput-object p3, p0, Lo0/f3;->d:Ljava/lang/Integer;

    goto :goto_c

    :cond_10
    iget-object p4, p0, Lo0/f3;->c:Ln/c;

    if-nez p4, :cond_11

    new-instance p4, Ln/c;

    sget-object v0, Ln/d;->k:Ln/o1;

    const/16 v1, 0xc

    invoke-direct {p4, p3, v0, v3, v1}, Ln/c;-><init>(Ljava/lang/Object;Ln/o1;Ljava/lang/Object;I)V

    iput-object p4, p0, Lo0/f3;->c:Ln/c;

    :cond_11
    iget-object p3, p4, Ln/c;->e:Lr0/e1;

    invoke-virtual {p3}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    if-eq p3, v7, :cond_12

    new-instance p3, Lo0/e3;

    invoke-direct {p3, p4, v7, p0, v3}, Lo0/e3;-><init>(Ln/c;ILo0/f3;Ly8/c;)V

    const/4 p4, 0x3

    iget-object v0, p0, Lo0/f3;->a:Lu9/t;

    invoke-static {v0, v3, v3, p3, p4}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    :cond_12
    :goto_c
    new-instance v3, Lo0/d3;

    move-object v6, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v9}, Lo0/d3;-><init>(Ljava/util/ArrayList;Lc2/t0;Lo0/f3;ILjava/util/ArrayList;I)V

    sget-object p0, Lu8/s;->l:Lu8/s;

    invoke-interface {v5, p2, v9, p0, v3}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object p0

    return-object p0
.end method
