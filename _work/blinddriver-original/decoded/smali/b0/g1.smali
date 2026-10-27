.class public final synthetic Lb0/g1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:I

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lb0/g1;->l:I

    iput-object p3, p0, Lb0/g1;->o:Ljava/lang/Object;

    iput-object p4, p0, Lb0/g1;->m:Ljava/lang/Object;

    iput-object p5, p0, Lb0/g1;->p:Ljava/lang/Object;

    iput p1, p0, Lb0/g1;->n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/ArrayList;Lc2/t0;ILjava/util/ArrayList;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lb0/g1;->l:I

    sget v0, Lo0/j;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/g1;->o:Ljava/lang/Object;

    iput-object p2, p0, Lb0/g1;->m:Ljava/lang/Object;

    iput p3, p0, Lb0/g1;->n:I

    iput-object p4, p0, Lb0/g1;->p:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>([Lc2/f1;Lu/x0;I[I)V
    .locals 1

    .line 3
    const/4 v0, 0x3

    iput v0, p0, Lb0/g1;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/g1;->o:Ljava/lang/Object;

    iput-object p2, p0, Lb0/g1;->m:Ljava/lang/Object;

    iput p3, p0, Lb0/g1;->n:I

    iput-object p4, p0, Lb0/g1;->p:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iget v0, p0, Lb0/g1;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lb0/g1;->o:Ljava/lang/Object;

    check-cast v0, [Lc2/f1;

    iget-object v1, p0, Lb0/g1;->m:Ljava/lang/Object;

    check-cast v1, Lu/x0;

    iget-object v2, p0, Lb0/g1;->p:Ljava/lang/Object;

    check-cast v2, [I

    check-cast p1, Lc2/e1;

    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v6, v0, v4

    add-int/lit8 v7, v5, 0x1

    invoke-static {v6}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lc2/f1;->G()Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Lu/v0;

    const/4 v10, 0x0

    if-eqz v9, :cond_0

    check-cast v8, Lu/v0;

    goto :goto_1

    :cond_0
    move-object v8, v10

    :goto_1
    if-eqz v8, :cond_1

    iget-object v10, v8, Lu/v0;->c:Lu/t;

    :cond_1
    iget v8, p0, Lb0/g1;->n:I

    if-eqz v10, :cond_2

    iget v9, v6, Lc2/f1;->m:I

    sget-object v11, Lb3/m;->l:Lb3/m;

    iget-object v10, v10, Lu/t;->a:Lf1/d;

    invoke-interface {v10, v9, v8, v11}, Lf1/d;->a(IILb3/m;)I

    move-result v8

    goto :goto_2

    :cond_2
    iget-object v9, v1, Lu/x0;->b:Lf1/i;

    iget v10, v6, Lc2/f1;->m:I

    invoke-virtual {v9, v10, v8}, Lf1/i;->a(II)I

    move-result v8

    :goto_2
    aget v5, v2, v5

    invoke-static {p1, v6, v5, v8}, Lc2/e1;->j(Lc2/e1;Lc2/f1;II)V

    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_0

    :cond_3
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lb0/g1;->o:Ljava/lang/Object;

    check-cast v0, Lr0/d0;

    iget-object v1, p0, Lb0/g1;->m:Ljava/lang/Object;

    check-cast v1, Lz0/e;

    iget-object v2, p0, Lb0/g1;->p:Ljava/lang/Object;

    check-cast v2, Lk/d0;

    if-eq p1, v0, :cond_6

    instance-of v0, p1, Ld1/h0;

    if-eqz v0, :cond_5

    iget v0, v1, Lz0/e;->a:I

    iget p0, p0, Lb0/g1;->n:I

    sub-int/2addr v0, p0

    invoke-virtual {v2, p1}, Lk/d0;->d(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_4

    iget-object v1, v2, Lk/d0;->c:[I

    aget p0, v1, p0

    goto :goto_3

    :cond_4
    const p0, 0x7fffffff

    :goto_3
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-virtual {v2, p0, p1}, Lk/d0;->g(ILjava/lang/Object;)V

    :cond_5
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "A derived state calculation cannot read itself"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    iget-object v0, p0, Lb0/g1;->o:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lb0/g1;->m:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Lc2/t0;

    sget v1, Lo0/j;->c:F

    iget-object v2, p0, Lb0/g1;->p:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Ljava/util/ArrayList;

    check-cast p1, Lc2/e1;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    move v11, v10

    :goto_4
    if-ge v11, v9, :cond_a

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    new-array v5, v2, [I

    move v4, v10

    :goto_5
    if-ge v4, v2, :cond_8

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc2/f1;

    iget v6, v6, Lc2/f1;->l:I

    invoke-static {v12}, Lg5/f;->A(Ljava/util/List;)I

    move-result v7

    if-ge v4, v7, :cond_7

    invoke-interface {v3, v1}, Lb3/c;->h0(F)I

    move-result v7

    goto :goto_6

    :cond_7
    move v7, v10

    :goto_6
    add-int/2addr v6, v7

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_8
    move v4, v2

    sget-object v2, Lu/h;->b:Lu/n;

    new-array v7, v4, [I

    invoke-interface {v3}, Lc2/p;->getLayoutDirection()Lb3/m;

    move-result-object v6

    iget v4, p0, Lb0/g1;->n:I

    invoke-virtual/range {v2 .. v7}, Lu/n;->b(Lb3/c;I[ILb3/m;[I)V

    invoke-interface {v12}, Ljava/util/Collection;->size()I

    move-result v2

    move v4, v10

    :goto_7
    if-ge v4, v2, :cond_9

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc2/f1;

    aget v6, v7, v4

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    invoke-static {p1, v5, v6, v13}, Lc2/e1;->j(Lc2/e1;Lc2/f1;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_a
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_2
    iget-object v0, p0, Lb0/g1;->o:Ljava/lang/Object;

    check-cast v0, Lb0/h1;

    iget-object v1, p0, Lb0/g1;->m:Ljava/lang/Object;

    check-cast v1, Lc2/t0;

    iget-object v2, p0, Lb0/g1;->p:Ljava/lang/Object;

    check-cast v2, Lc2/f1;

    move-object v3, p1

    check-cast v3, Lc2/e1;

    iget v4, v0, Lb0/h1;->b:I

    iget-object p1, v0, Lb0/h1;->a:Lb0/v2;

    iget-object v5, v0, Lb0/h1;->c:Lu2/b0;

    iget-object v0, v0, Lb0/h1;->d:Li9/a;

    invoke-interface {v0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb0/z2;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lb0/z2;->a:Lp2/j0;

    :goto_8
    move-object v6, v0

    goto :goto_9

    :cond_b
    const/4 v0, 0x0

    goto :goto_8

    :goto_9
    invoke-interface {v1}, Lc2/p;->getLayoutDirection()Lb3/m;

    move-result-object v0

    sget-object v1, Lb3/m;->m:Lb3/m;

    const/4 v9, 0x0

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    move v7, v0

    goto :goto_a

    :cond_c
    move v7, v9

    :goto_a
    iget v8, v2, Lc2/f1;->l:I

    invoke-static/range {v3 .. v8}, Lb0/n1;->l(Lc2/e1;ILu2/b0;Lp2/j0;ZI)Ll1/c;

    move-result-object v0

    sget-object v1, Lr/m1;->m:Lr/m1;

    iget v4, v2, Lc2/f1;->l:I

    iget p0, p0, Lb0/g1;->n:I

    invoke-virtual {p1, v1, v0, p0, v4}, Lb0/v2;->a(Lr/m1;Ll1/c;II)V

    iget-object p0, p1, Lb0/v2;->a:Lr0/a1;

    invoke-virtual {p0}, Lr0/a1;->g()F

    move-result p0

    neg-float p0, p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {v3, v2, p0, v9}, Lc2/e1;->l(Lc2/e1;Lc2/f1;II)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
