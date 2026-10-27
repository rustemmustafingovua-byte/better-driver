.class public final Lo0/t;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public m:I

.field public final synthetic n:Ln/c;

.field public final synthetic o:F

.field public final synthetic p:Z

.field public final synthetic q:Ls/h;

.field public final synthetic r:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ln/c;FZLjava/lang/Object;Ls/h;Ly8/c;I)V
    .locals 0

    .line 1
    iput p7, p0, Lo0/t;->l:I

    iput-object p1, p0, Lo0/t;->n:Ln/c;

    iput p2, p0, Lo0/t;->o:F

    iput-boolean p3, p0, Lo0/t;->p:Z

    iput-object p4, p0, Lo0/t;->r:Ljava/lang/Object;

    iput-object p5, p0, Lo0/t;->q:Ls/h;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public constructor <init>(Ln/c;FZLs/h;Lr0/u0;Ly8/c;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lo0/t;->l:I

    .line 2
    iput-object p1, p0, Lo0/t;->n:Ln/c;

    iput p2, p0, Lo0/t;->o:F

    iput-boolean p3, p0, Lo0/t;->p:Z

    iput-object p4, p0, Lo0/t;->q:Ls/h;

    iput-object p5, p0, Lo0/t;->r:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 9

    iget p1, p0, Lo0/t;->l:I

    packed-switch p1, :pswitch_data_0

    new-instance v0, Lo0/t;

    iget-object p1, p0, Lo0/t;->r:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Lr0/u0;

    iget-object v1, p0, Lo0/t;->n:Ln/c;

    iget v2, p0, Lo0/t;->o:F

    iget-boolean v3, p0, Lo0/t;->p:Z

    iget-object v4, p0, Lo0/t;->q:Ls/h;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lo0/t;-><init>(Ln/c;FZLs/h;Lr0/u0;Ly8/c;)V

    return-object v0

    :pswitch_0
    move-object v7, p2

    new-instance v1, Lo0/t;

    iget-object p1, p0, Lo0/t;->r:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Lo0/b0;

    iget-object v6, p0, Lo0/t;->q:Ls/h;

    const/4 v8, 0x1

    iget-object v2, p0, Lo0/t;->n:Ln/c;

    iget v3, p0, Lo0/t;->o:F

    iget-boolean v4, p0, Lo0/t;->p:Z

    invoke-direct/range {v1 .. v8}, Lo0/t;-><init>(Ln/c;FZLjava/lang/Object;Ls/h;Ly8/c;I)V

    return-object v1

    :pswitch_1
    move-object v7, p2

    new-instance v1, Lo0/t;

    iget-object p1, p0, Lo0/t;->r:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Lo0/u;

    iget-object v6, p0, Lo0/t;->q:Ls/h;

    const/4 v8, 0x0

    iget-object v2, p0, Lo0/t;->n:Ln/c;

    iget v3, p0, Lo0/t;->o:F

    iget-boolean v4, p0, Lo0/t;->p:Z

    invoke-direct/range {v1 .. v8}, Lo0/t;-><init>(Ln/c;FZLjava/lang/Object;Ls/h;Ly8/c;I)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lo0/t;->l:I

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lo0/t;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lo0/t;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lo0/t;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lo0/t;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lo0/t;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lo0/t;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lo0/t;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lo0/t;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lo0/t;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lo0/t;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lo0/t;->r:Ljava/lang/Object;

    check-cast v0, Lr0/u0;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, p0, Lo0/t;->m:I

    iget-object v3, p0, Lo0/t;->q:Ls/h;

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lo0/t;->n:Ln/c;

    iget-object v2, p1, Ln/c;->e:Lr0/e1;

    invoke-virtual {v2}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb3/f;

    iget v2, v2, Lb3/f;->l:F

    iget v6, p0, Lo0/t;->o:F

    invoke-static {v2, v6}, Lb3/f;->b(FF)Z

    move-result v2

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lo0/t;->p:Z

    if-nez v2, :cond_3

    new-instance v2, Lb3/f;

    invoke-direct {v2, v6}, Lb3/f;-><init>(F)V

    iput v5, p0, Lo0/t;->m:I

    invoke-virtual {p1, v2, p0}, Ln/c;->e(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    goto :goto_2

    :cond_3
    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls/h;

    iput v4, p0, Lo0/t;->m:I

    invoke-static {p1, v6, v2, v3, p0}, Lp0/j;->a(Ln/c;FLs/h;Ls/h;La9/i;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    invoke-interface {v0, v3}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    :cond_5
    sget-object v1, Lt8/z;->a:Lt8/z;

    :goto_2
    return-object v1

    :pswitch_0
    iget-object v0, p0, Lo0/t;->r:Ljava/lang/Object;

    check-cast v0, Lo0/b0;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, p0, Lo0/t;->m:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_8

    if-eq v2, v4, :cond_7

    if-ne v2, v3, :cond_6

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_3
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_8
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lo0/t;->n:Ln/c;

    iget-object v2, p1, Ln/c;->e:Lr0/e1;

    invoke-virtual {v2}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb3/f;

    iget v2, v2, Lb3/f;->l:F

    iget v5, p0, Lo0/t;->o:F

    invoke-static {v2, v5}, Lb3/f;->b(FF)Z

    move-result v2

    if-nez v2, :cond_e

    iget-boolean v2, p0, Lo0/t;->p:Z

    if-nez v2, :cond_9

    new-instance v0, Lb3/f;

    invoke-direct {v0, v5}, Lb3/f;-><init>(F)V

    iput v4, p0, Lo0/t;->m:I

    invoke-virtual {p1, v0, p0}, Ln/c;->e(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_e

    goto :goto_6

    :cond_9
    iget-object v2, p1, Ln/c;->e:Lr0/e1;

    invoke-virtual {v2}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb3/f;

    iget v2, v2, Lb3/f;->l:F

    iget v4, v0, Lo0/b0;->b:F

    invoke-static {v2, v4}, Lb3/f;->b(FF)Z

    move-result v4

    if-eqz v4, :cond_a

    new-instance v0, Ls/k;

    const-wide/16 v6, 0x0

    invoke-direct {v0, v6, v7}, Ls/k;-><init>(J)V

    goto :goto_4

    :cond_a
    iget v4, v0, Lo0/b0;->d:F

    invoke-static {v2, v4}, Lb3/f;->b(FF)Z

    move-result v4

    if-eqz v4, :cond_b

    new-instance v0, Ls/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto :goto_4

    :cond_b
    iget v4, v0, Lo0/b0;->c:F

    invoke-static {v2, v4}, Lb3/f;->b(FF)Z

    move-result v4

    if-eqz v4, :cond_c

    new-instance v0, Ls/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto :goto_4

    :cond_c
    iget v0, v0, Lo0/b0;->e:F

    invoke-static {v2, v0}, Lb3/f;->b(FF)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Ls/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto :goto_4

    :cond_d
    const/4 v0, 0x0

    :goto_4
    iput v3, p0, Lo0/t;->m:I

    iget-object v2, p0, Lo0/t;->q:Ls/h;

    invoke-static {p1, v5, v0, v2, p0}, Lp0/j;->a(Ln/c;FLs/h;Ls/h;La9/i;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_e

    goto :goto_6

    :cond_e
    :goto_5
    sget-object v1, Lt8/z;->a:Lt8/z;

    :goto_6
    return-object v1

    :pswitch_1
    iget-object v0, p0, Lo0/t;->r:Ljava/lang/Object;

    check-cast v0, Lo0/u;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, p0, Lo0/t;->m:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_11

    if-eq v2, v4, :cond_10

    if-ne v2, v3, :cond_f

    goto :goto_7

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    :goto_7
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_9

    :cond_11
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lo0/t;->n:Ln/c;

    iget-object v2, p1, Ln/c;->e:Lr0/e1;

    invoke-virtual {v2}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb3/f;

    iget v2, v2, Lb3/f;->l:F

    iget v5, p0, Lo0/t;->o:F

    invoke-static {v2, v5}, Lb3/f;->b(FF)Z

    move-result v2

    if-nez v2, :cond_16

    iget-boolean v2, p0, Lo0/t;->p:Z

    if-nez v2, :cond_12

    new-instance v0, Lb3/f;

    invoke-direct {v0, v5}, Lb3/f;-><init>(F)V

    iput v4, p0, Lo0/t;->m:I

    invoke-virtual {p1, v0, p0}, Ln/c;->e(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_16

    goto :goto_a

    :cond_12
    iget-object v2, p1, Ln/c;->e:Lr0/e1;

    invoke-virtual {v2}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb3/f;

    iget v2, v2, Lb3/f;->l:F

    iget v4, v0, Lo0/u;->b:F

    invoke-static {v2, v4}, Lb3/f;->b(FF)Z

    move-result v4

    if-eqz v4, :cond_13

    new-instance v0, Ls/k;

    const-wide/16 v6, 0x0

    invoke-direct {v0, v6, v7}, Ls/k;-><init>(J)V

    goto :goto_8

    :cond_13
    iget v4, v0, Lo0/u;->d:F

    invoke-static {v2, v4}, Lb3/f;->b(FF)Z

    move-result v4

    if-eqz v4, :cond_14

    new-instance v0, Ls/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto :goto_8

    :cond_14
    iget v0, v0, Lo0/u;->c:F

    invoke-static {v2, v0}, Lb3/f;->b(FF)Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance v0, Ls/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto :goto_8

    :cond_15
    const/4 v0, 0x0

    :goto_8
    iput v3, p0, Lo0/t;->m:I

    iget-object v2, p0, Lo0/t;->q:Ls/h;

    invoke-static {p1, v5, v0, v2, p0}, Lp0/j;->a(Ln/c;FLs/h;Ls/h;La9/i;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_16

    goto :goto_a

    :cond_16
    :goto_9
    sget-object v1, Lt8/z;->a:Lt8/z;

    :goto_a
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
