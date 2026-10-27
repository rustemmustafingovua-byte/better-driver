.class public final Lb0/m2;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public m:I

.field public n:J

.field public o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public constructor <init>(JLjava/lang/CharSequence;Lm0/u;Ly8/c;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lb0/m2;->l:I

    .line 1
    iput-object p4, p0, Lb0/m2;->p:Ljava/lang/Object;

    iput-object p3, p0, Lb0/m2;->q:Ljava/lang/Object;

    iput-wide p1, p0, Lb0/m2;->n:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public constructor <init>(Lh0/g;JLi0/f;Lh0/f;Ly8/c;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lb0/m2;->l:I

    .line 2
    iput-object p1, p0, Lb0/m2;->o:Ljava/lang/Object;

    iput-wide p2, p0, Lb0/m2;->n:J

    iput-object p4, p0, Lb0/m2;->p:Ljava/lang/Object;

    iput-object p5, p0, Lb0/m2;->q:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;JLjava/lang/Object;Ly8/c;I)V
    .locals 0

    .line 3
    iput p6, p0, Lb0/m2;->l:I

    iput-object p1, p0, Lb0/m2;->p:Ljava/lang/Object;

    iput-wide p2, p0, Lb0/m2;->n:J

    iput-object p4, p0, Lb0/m2;->q:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public constructor <init>(Lnd/i0;Lr0/u0;Lr0/a1;Ly8/c;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lb0/m2;->l:I

    .line 4
    iput-object p1, p0, Lb0/m2;->o:Ljava/lang/Object;

    iput-object p2, p0, Lb0/m2;->p:Ljava/lang/Object;

    iput-object p3, p0, Lb0/m2;->q:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 9

    iget v0, p0, Lb0/m2;->l:I

    packed-switch v0, :pswitch_data_0

    new-instance v1, Lb0/m2;

    iget-object v0, p0, Lb0/m2;->p:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lr/n2;

    iget-wide v3, p0, Lb0/m2;->n:J

    iget-object p0, p0, Lb0/m2;->q:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Lj9/w;

    const/4 v7, 0x6

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Lb0/m2;-><init>(Ljava/lang/Object;JLjava/lang/Object;Ly8/c;I)V

    iput-object p1, v1, Lb0/m2;->o:Ljava/lang/Object;

    return-object v1

    :pswitch_0
    move-object v7, p2

    new-instance v2, Lb0/m2;

    iget-object p1, p0, Lb0/m2;->p:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lu9/v0;

    iget-wide v4, p0, Lb0/m2;->n:J

    iget-object p0, p0, Lb0/m2;->q:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Ls/i;

    const/4 v8, 0x5

    invoke-direct/range {v2 .. v8}, Lb0/m2;-><init>(Ljava/lang/Object;JLjava/lang/Object;Ly8/c;I)V

    return-object v2

    :pswitch_1
    move-object v7, p2

    new-instance v2, Lb0/m2;

    iget-object p1, p0, Lb0/m2;->p:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lp/g;

    iget-wide v4, p0, Lb0/m2;->n:J

    iget-object p0, p0, Lb0/m2;->q:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Ls/i;

    const/4 v8, 0x4

    invoke-direct/range {v2 .. v8}, Lb0/m2;-><init>(Ljava/lang/Object;JLjava/lang/Object;Ly8/c;I)V

    return-object v2

    :pswitch_2
    move-object v7, p2

    new-instance p1, Lb0/m2;

    iget-object p2, p0, Lb0/m2;->o:Ljava/lang/Object;

    check-cast p2, Lnd/i0;

    iget-object v0, p0, Lb0/m2;->p:Ljava/lang/Object;

    check-cast v0, Lr0/u0;

    iget-object p0, p0, Lb0/m2;->q:Ljava/lang/Object;

    check-cast p0, Lr0/a1;

    invoke-direct {p1, p2, v0, p0, v7}, Lb0/m2;-><init>(Lnd/i0;Lr0/u0;Lr0/a1;Ly8/c;)V

    return-object p1

    :pswitch_3
    move-object v7, p2

    new-instance v2, Lb0/m2;

    iget-object p2, p0, Lb0/m2;->p:Ljava/lang/Object;

    move-object v6, p2

    check-cast v6, Lm0/u;

    iget-object p2, p0, Lb0/m2;->q:Ljava/lang/Object;

    move-object v5, p2

    check-cast v5, Ljava/lang/CharSequence;

    iget-wide v3, p0, Lb0/m2;->n:J

    invoke-direct/range {v2 .. v7}, Lb0/m2;-><init>(JLjava/lang/CharSequence;Lm0/u;Ly8/c;)V

    iput-object p1, v2, Lb0/m2;->o:Ljava/lang/Object;

    return-object v2

    :pswitch_4
    move-object v7, p2

    new-instance v2, Lb0/m2;

    iget-object p1, p0, Lb0/m2;->o:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lh0/g;

    iget-wide v4, p0, Lb0/m2;->n:J

    iget-object p1, p0, Lb0/m2;->p:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Li0/f;

    iget-object p0, p0, Lb0/m2;->q:Ljava/lang/Object;

    check-cast p0, Lh0/f;

    move-object v8, v7

    move-object v7, p0

    invoke-direct/range {v2 .. v8}, Lb0/m2;-><init>(Lh0/g;JLi0/f;Lh0/f;Ly8/c;)V

    return-object v2

    :pswitch_5
    move-object v7, p2

    new-instance v2, Lb0/m2;

    iget-object p1, p0, Lb0/m2;->p:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lr0/u0;

    iget-wide v4, p0, Lb0/m2;->n:J

    iget-object p0, p0, Lb0/m2;->q:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Ls/i;

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lb0/m2;-><init>(Ljava/lang/Object;JLjava/lang/Object;Ly8/c;I)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lb0/m2;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lr/l2;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lb0/m2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lb0/m2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lb0/m2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lb0/m2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lb0/m2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lb0/m2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lb0/m2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lb0/m2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lb0/m2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lb0/m2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lb0/m2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lb0/m2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Landroid/view/textclassifier/TextClassifier;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lb0/m2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lb0/m2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lb0/m2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lb0/m2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lb0/m2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lb0/m2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lb0/m2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lb0/m2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lb0/m2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iget v0, p0, Lb0/m2;->l:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    sget-object v3, Lt8/z;->a:Lt8/z;

    iget-object v4, p0, Lb0/m2;->q:Ljava/lang/Object;

    const-string v5, "call to \'resume\' before \'invoke\' with coroutine"

    const/4 v6, 0x1

    iget-object v7, p0, Lb0/m2;->p:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v7, Lr/n2;

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v2, p0, Lb0/m2;->m:I

    if-eqz v2, :cond_1

    if-ne v2, v6, :cond_0

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lb0/m2;->o:Ljava/lang/Object;

    check-cast p1, Lr/l2;

    iget-wide v8, p0, Lb0/m2;->n:J

    invoke-virtual {v7, v8, v9}, Lr/n2;->g(J)F

    move-result v2

    check-cast v4, Lj9/w;

    new-instance v5, Lb0/k0;

    const/16 v8, 0xb

    invoke-direct {v5, v4, v7, p1, v8}, Lb0/k0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput v6, p0, Lb0/m2;->m:I

    const/16 p1, 0xc

    invoke-static {v2, v1, v5, p0, p1}, Ln/d;->d(FLn/j;Li9/e;La9/i;I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    move-object v3, v0

    :cond_2
    :goto_0
    return-object v3

    :pswitch_0
    check-cast v4, Ls/i;

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v8, p0, Lb0/m2;->m:I

    const/4 v9, 0x3

    if-eqz v8, :cond_6

    if-eq v8, v6, :cond_5

    if-eq v8, v2, :cond_4

    if-ne v8, v9, :cond_3

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_4

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    iget-object v2, p0, Lb0/m2;->o:Ljava/lang/Object;

    check-cast v2, Ls/l;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    check-cast v7, Lu9/v0;

    iput v6, p0, Lb0/m2;->m:I

    invoke-interface {v7, p0}, Lu9/v0;->e(La9/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    goto :goto_3

    :cond_7
    :goto_1
    new-instance p1, Ls/k;

    iget-wide v5, p0, Lb0/m2;->n:J

    invoke-direct {p1, v5, v6}, Ls/k;-><init>(J)V

    new-instance v5, Ls/l;

    invoke-direct {v5, p1}, Ls/l;-><init>(Ls/k;)V

    iput-object v5, p0, Lb0/m2;->o:Ljava/lang/Object;

    iput v2, p0, Lb0/m2;->m:I

    invoke-virtual {v4, p1, p0}, Ls/i;->a(Ls/h;Ly8/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    goto :goto_3

    :cond_8
    move-object v2, v5

    :goto_2
    iput-object v1, p0, Lb0/m2;->o:Ljava/lang/Object;

    iput v9, p0, Lb0/m2;->m:I

    invoke-virtual {v4, v2, p0}, Ls/i;->a(Ls/h;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_9

    :goto_3
    move-object v3, v0

    :cond_9
    :goto_4
    return-object v3

    :pswitch_1
    check-cast v7, Lp/g;

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lb0/m2;->m:I

    if-eqz v1, :cond_c

    if-eq v1, v6, :cond_b

    if-ne v1, v2, :cond_a

    iget-object p0, p0, Lb0/m2;->o:Ljava/lang/Object;

    check-cast p0, Ls/k;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_7

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_5

    :cond_c
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lp/g;->R0()Z

    move-result p1

    if-eqz p1, :cond_d

    sget-wide v8, Lp/b0;->a:J

    iput v6, p0, Lb0/m2;->m:I

    invoke-static {v8, v9, p0}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_d

    goto :goto_6

    :cond_d
    :goto_5
    new-instance p1, Ls/k;

    iget-wide v5, p0, Lb0/m2;->n:J

    invoke-direct {p1, v5, v6}, Ls/k;-><init>(J)V

    check-cast v4, Ls/i;

    iput-object p1, p0, Lb0/m2;->o:Ljava/lang/Object;

    iput v2, p0, Lb0/m2;->m:I

    invoke-virtual {v4, p1, p0}, Ls/i;->a(Ls/h;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_e

    :goto_6
    move-object v3, v0

    goto :goto_8

    :cond_e
    move-object p0, p1

    :goto_7
    iput-object p0, v7, Lp/g;->M:Ls/k;

    :goto_8
    return-object v3

    :pswitch_2
    iget-object v0, p0, Lb0/m2;->o:Ljava/lang/Object;

    check-cast v0, Lnd/i0;

    check-cast v4, Lr0/a1;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, p0, Lb0/m2;->m:I

    if-eqz v2, :cond_10

    if-ne v2, v6, :cond_f

    iget-wide v2, p0, Lb0/m2;->n:J

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_a

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, v0, Lnd/i0;->a:Lnd/m;

    sget-object v2, Lnd/m;->m:Lnd/m;

    if-ne p1, v2, :cond_14

    check-cast v7, Lr0/u0;

    sget p1, Lnd/h0;->a:F

    invoke-interface {v7}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_14

    iget p1, v0, Lnd/i0;->e:F

    invoke-virtual {v4, p1}, Lr0/a1;->h(F)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    :goto_9
    iput-wide v2, p0, Lb0/m2;->n:J

    iput v6, p0, Lb0/m2;->m:I

    invoke-static {p0}, Lv9/e;->c(Lb0/m2;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_11

    move-object v3, v1

    goto :goto_c

    :cond_11
    :goto_a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long v2, v7, v2

    long-to-float p1, v2

    const v2, 0x4e6e6b28    # 1.0E9f

    div-float/2addr p1, v2

    sget v2, Lnd/h0;->a:F

    invoke-virtual {v4}, Lr0/a1;->g()F

    move-result v2

    const v3, 0x3dcccccd    # 0.1f

    cmpl-float v5, p1, v3

    if-lez v5, :cond_12

    move p1, v3

    :cond_12
    const/high16 v3, 0x428c0000    # 70.0f

    mul-float/2addr p1, v3

    add-float/2addr p1, v2

    invoke-virtual {v4, p1}, Lr0/a1;->h(F)V

    invoke-virtual {v4}, Lr0/a1;->g()F

    move-result p1

    iget v2, v0, Lnd/i0;->f:F

    cmpl-float p1, p1, v2

    if-lez p1, :cond_13

    iget p1, v0, Lnd/i0;->e:F

    invoke-virtual {v4, p1}, Lr0/a1;->h(F)V

    :cond_13
    move-wide v2, v7

    goto :goto_9

    :cond_14
    iget-object p0, v0, Lnd/i0;->a:Lnd/m;

    if-ne p0, v2, :cond_15

    iget p0, v0, Lnd/i0;->g:F

    goto :goto_b

    :cond_15
    const/high16 p0, 0x43960000    # 300.0f

    :goto_b
    sget p1, Lnd/h0;->a:F

    invoke-virtual {v4, p0}, Lr0/a1;->h(F)V

    :goto_c
    return-object v3

    :pswitch_3
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lb0/m2;->m:I

    if-eqz v1, :cond_17

    if-ne v1, v6, :cond_16

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_d

    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lb0/m2;->o:Ljava/lang/Object;

    move-object v12, p1

    check-cast v12, Landroid/view/textclassifier/TextClassifier;

    move-object v8, v7

    check-cast v8, Lm0/u;

    move-object v9, v4

    check-cast v9, Ljava/lang/CharSequence;

    iget-wide v10, p0, Lb0/m2;->n:J

    iput v6, p0, Lb0/m2;->m:I

    move-object v13, p0

    invoke-static/range {v8 .. v13}, Lm0/u;->a(Lm0/u;Ljava/lang/CharSequence;JLandroid/view/textclassifier/TextClassifier;La9/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_18

    move-object v3, v0

    :cond_18
    :goto_d
    return-object v3

    :pswitch_4
    move-object v13, p0

    sget-object p0, Lz8/a;->l:Lz8/a;

    iget v0, v13, Lb0/m2;->m:I

    if-eqz v0, :cond_1b

    if-eq v0, v6, :cond_1a

    if-ne v0, v2, :cond_19

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_10

    :cond_19
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1a
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_e

    :cond_1b
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, v13, Lb0/m2;->o:Ljava/lang/Object;

    check-cast p1, Lh0/g;

    iget-object p1, p1, Lh0/g;->B:La9/i;

    if-eqz p1, :cond_1c

    iget-wide v0, v13, Lb0/m2;->n:J

    new-instance v5, Ll1/b;

    invoke-direct {v5, v0, v1}, Ll1/b;-><init>(J)V

    iput v6, v13, Lb0/m2;->m:I

    invoke-interface {p1, v5, v13}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p0, :cond_1c

    goto :goto_f

    :cond_1c
    :goto_e
    check-cast v7, Li0/f;

    check-cast v4, Lh0/f;

    iput v2, v13, Lb0/m2;->m:I

    invoke-interface {v7, v4, v13}, Li0/f;->a(Li0/e;La9/i;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p0, :cond_1d

    :goto_f
    move-object v3, p0

    :cond_1d
    :goto_10
    return-object v3

    :pswitch_5
    move-object v13, p0

    check-cast v4, Ls/i;

    check-cast v7, Lr0/u0;

    sget-object p0, Lz8/a;->l:Lz8/a;

    iget v0, v13, Lb0/m2;->m:I

    if-eqz v0, :cond_20

    if-eq v0, v6, :cond_1f

    if-ne v0, v2, :cond_1e

    iget-object p0, v13, Lb0/m2;->o:Ljava/lang/Object;

    check-cast p0, Ls/k;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_13

    :cond_1e
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1f
    iget-object v0, v13, Lb0/m2;->o:Ljava/lang/Object;

    check-cast v0, Lr0/u0;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_11

    :cond_20
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    invoke-interface {v7}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls/k;

    if-eqz p1, :cond_22

    new-instance v0, Ls/j;

    invoke-direct {v0, p1}, Ls/j;-><init>(Ls/k;)V

    if-eqz v4, :cond_21

    iput-object v7, v13, Lb0/m2;->o:Ljava/lang/Object;

    iput v6, v13, Lb0/m2;->m:I

    invoke-virtual {v4, v0, v13}, Ls/i;->a(Ls/h;Ly8/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p0, :cond_21

    goto :goto_12

    :cond_21
    move-object v0, v7

    :goto_11
    invoke-interface {v0, v1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    :cond_22
    new-instance p1, Ls/k;

    iget-wide v0, v13, Lb0/m2;->n:J

    invoke-direct {p1, v0, v1}, Ls/k;-><init>(J)V

    if-eqz v4, :cond_24

    iput-object p1, v13, Lb0/m2;->o:Ljava/lang/Object;

    iput v2, v13, Lb0/m2;->m:I

    invoke-virtual {v4, p1, v13}, Ls/i;->a(Ls/h;Ly8/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_23

    :goto_12
    move-object v3, p0

    goto :goto_14

    :cond_23
    move-object p0, p1

    :goto_13
    move-object p1, p0

    :cond_24
    invoke-interface {v7, p1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    :goto_14
    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
