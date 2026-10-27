.class public final synthetic Lb0/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lm0/b1;

.field public final synthetic n:Lz0/d;


# direct methods
.method public synthetic constructor <init>(Lm0/b1;Lz0/d;II)V
    .locals 0

    .line 1
    iput p4, p0, Lb0/c0;->l:I

    iput-object p1, p0, Lb0/c0;->m:Lm0/b1;

    iput-object p2, p0, Lb0/c0;->n:Lz0/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lz0/d;Lm0/b1;)V
    .locals 1

    .line 2
    const/4 v0, 0x2

    iput v0, p0, Lb0/c0;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/c0;->n:Lz0/d;

    iput-object p2, p0, Lb0/c0;->m:Lm0/b1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget v0, p0, Lb0/c0;->l:I

    packed-switch v0, :pswitch_data_0

    move-object v9, p1

    check-cast v9, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    and-int/lit8 p2, p1, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v11, 0x0

    if-eq p2, v0, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v11

    :goto_0
    and-int/2addr p1, v1

    invoke-virtual {v9, p1, p2}, Lr0/q;->T(IZ)Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p2, p0, Lb0/c0;->n:Lz0/d;

    invoke-virtual {p2, v9, p1}, Lz0/d;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lb0/c0;->m:Lm0/b1;

    invoke-virtual {p0}, Lm0/b1;->g()Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lm0/b1;->i:Lr0/e1;

    invoke-virtual {p1}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Lm0/b1;->f()Lm0/a0;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p2, p1, Lm0/a0;->a:Lm0/z;

    iget-object p1, p1, Lm0/a0;->b:Lm0/z;

    invoke-static {p2, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    if-nez v1, :cond_12

    const p1, -0x677cad36

    invoke-virtual {v9, p1}, Lr0/q;->b0(I)V

    invoke-virtual {p0}, Lm0/b1;->f()Lm0/a0;

    move-result-object p1

    if-nez p1, :cond_2

    const p0, 0x77e70677

    invoke-virtual {v9, p0}, Lr0/q;->b0(I)V

    :goto_2
    invoke-virtual {v9, v11}, Lr0/q;->q(Z)V

    goto/16 :goto_9

    :cond_2
    const p2, 0x77e70678

    invoke-virtual {v9, p2}, Lr0/q;->b0(I)V

    const p2, -0x677ca73e

    invoke-virtual {v9, p2}, Lr0/q;->b0(I)V

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {p2, v0}, [Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p2}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    move v12, v11

    :goto_3
    if-ge v12, v0, :cond_11

    invoke-interface {p2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v9, v2}, Lr0/q;->h(Z)Z

    move-result v1

    invoke-virtual {v9}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lr0/m;->a:Lr0/e;

    if-nez v1, :cond_3

    if-ne v3, v4, :cond_4

    :cond_3
    new-instance v3, Lm0/a1;

    invoke-direct {v3, v2, p0}, Lm0/a1;-><init>(ZLm0/b1;)V

    invoke-virtual {v9, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_4
    check-cast v3, Lb0/c2;

    invoke-virtual {v9, v2}, Lr0/q;->h(Z)Z

    move-result v1

    invoke-virtual {v9}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    if-nez v1, :cond_5

    if-ne v5, v4, :cond_7

    :cond_5
    if-eqz v2, :cond_6

    new-instance v1, Lm0/f0;

    const/4 v5, 0x0

    invoke-direct {v1, p0, v5}, Lm0/f0;-><init>(Lm0/b1;I)V

    :goto_4
    move-object v5, v1

    goto :goto_5

    :cond_6
    new-instance v1, Lm0/f0;

    const/4 v5, 0x1

    invoke-direct {v1, p0, v5}, Lm0/f0;-><init>(Lm0/b1;I)V

    goto :goto_4

    :goto_5
    invoke-virtual {v9, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_7
    check-cast v5, Li9/a;

    if-eqz v2, :cond_8

    iget-object v1, p1, Lm0/a0;->a:Lm0/z;

    iget-object v1, v1, Lm0/z;->a:La3/j;

    goto :goto_6

    :cond_8
    iget-object v1, p1, Lm0/a0;->b:Lm0/z;

    iget-object v1, v1, Lm0/z;->a:La3/j;

    :goto_6
    const/4 v6, 0x0

    if-eqz v2, :cond_c

    invoke-virtual {p0}, Lm0/b1;->f()Lm0/a0;

    move-result-object v7

    if-nez v7, :cond_9

    goto :goto_7

    :cond_9
    iget-object v7, v7, Lm0/a0;->a:Lm0/z;

    invoke-virtual {p0, v7}, Lm0/b1;->c(Lm0/z;)Lm0/q;

    move-result-object v8

    if-nez v8, :cond_a

    goto :goto_7

    :cond_a
    iget v7, v7, Lm0/z;->b:I

    iget-object v8, v8, Lm0/q;->c:Ll0/h;

    invoke-virtual {v8}, Ll0/h;->invoke()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lp2/j0;

    if-eqz v8, :cond_b

    invoke-static {v8, v7}, Lb0/n1;->w(Lp2/j0;I)F

    move-result v6

    :cond_b
    :goto_7
    move v7, v6

    move-object v6, v3

    move-object v3, v1

    goto :goto_8

    :cond_c
    invoke-virtual {p0}, Lm0/b1;->f()Lm0/a0;

    move-result-object v7

    if-nez v7, :cond_d

    goto :goto_7

    :cond_d
    iget-object v7, v7, Lm0/a0;->b:Lm0/z;

    invoke-virtual {p0, v7}, Lm0/b1;->c(Lm0/z;)Lm0/q;

    move-result-object v8

    if-nez v8, :cond_e

    goto :goto_7

    :cond_e
    iget v7, v7, Lm0/z;->b:I

    iget-object v8, v8, Lm0/q;->c:Ll0/h;

    invoke-virtual {v8}, Ll0/h;->invoke()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lp2/j0;

    if-eqz v8, :cond_b

    invoke-static {v8, v7}, Lb0/n1;->w(Lp2/j0;I)F

    move-result v6

    goto :goto_7

    :goto_8
    new-instance v1, Lm0/k0;

    invoke-direct {v1, v5}, Lm0/k0;-><init>(Li9/a;)V

    move-object v5, v4

    iget-boolean v4, p1, Lm0/a0;->c:Z

    invoke-virtual {v9, v6}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v9}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v10

    if-nez v8, :cond_f

    if-ne v10, v5, :cond_10

    :cond_f
    new-instance v10, Lm0/j0;

    const/4 v5, 0x0

    invoke-direct {v10, v6, v5}, Lm0/j0;-><init>(Lb0/c2;I)V

    invoke-virtual {v9, v10}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_10
    check-cast v10, Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    sget-object v5, Lf1/o;->a:Lf1/o;

    invoke-static {v5, v6, v10}, Ly1/g0;->a(Lf1/r;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)Lf1/r;

    move-result-object v8

    const/4 v10, 0x0

    const-wide/16 v5, 0x0

    invoke-static/range {v1 .. v10}, Lm0/d1;->d(Lm0/r;ZLa3/j;ZJFLf1/r;Lr0/q;I)V

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    :cond_11
    invoke-virtual {v9, v11}, Lr0/q;->q(Z)V

    goto/16 :goto_2

    :goto_9
    invoke-virtual {v9, v11}, Lr0/q;->q(Z)V

    goto :goto_a

    :cond_12
    const p0, 0x778e2dcb

    invoke-virtual {v9, p0}, Lr0/q;->b0(I)V

    goto :goto_9

    :cond_13
    invoke-virtual {v9}, Lr0/q;->W()V

    :goto_a
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p2, 0x31

    invoke-static {p2}, Lr0/r;->H(I)I

    move-result p2

    iget-object v0, p0, Lb0/c0;->m:Lm0/b1;

    iget-object p0, p0, Lb0/c0;->n:Lz0/d;

    invoke-static {v0, p0, p1, p2}, Lb0/n1;->e(Lm0/b1;Lz0/d;Lr0/q;I)V

    :goto_b
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_1
    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p2, 0x31

    invoke-static {p2}, Lr0/r;->H(I)I

    move-result p2

    iget-object v0, p0, Lb0/c0;->m:Lm0/b1;

    iget-object p0, p0, Lb0/c0;->n:Lz0/d;

    invoke-static {v0, p0, p1, p2}, Lb0/n1;->c(Lm0/b1;Lz0/d;Lr0/q;I)V

    goto :goto_b

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
