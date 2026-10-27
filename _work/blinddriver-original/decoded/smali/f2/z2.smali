.class public final Lf2/z2;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public m:I

.field public n:Ljava/lang/Object;

.field public o:Ljava/lang/Object;

.field public p:Ljava/lang/Object;

.field public synthetic q:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Object;

.field public final synthetic s:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V
    .locals 0

    .line 1
    iput p7, p0, Lf2/z2;->l:I

    iput-object p1, p0, Lf2/z2;->o:Ljava/lang/Object;

    iput-object p2, p0, Lf2/z2;->p:Ljava/lang/Object;

    iput-object p3, p0, Lf2/z2;->q:Ljava/lang/Object;

    iput-object p4, p0, Lf2/z2;->r:Ljava/lang/Object;

    iput-object p5, p0, Lf2/z2;->s:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lr0/u0;Lr0/u0;Ly8/c;I)V
    .locals 0

    .line 2
    iput p6, p0, Lf2/z2;->l:I

    iput-object p1, p0, Lf2/z2;->p:Ljava/lang/Object;

    iput-object p2, p0, Lf2/z2;->q:Ljava/lang/Object;

    iput-object p3, p0, Lf2/z2;->r:Ljava/lang/Object;

    iput-object p4, p0, Lf2/z2;->s:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public constructor <init>(Ljd/b;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lf2/z2;->l:I

    .line 3
    iput-object p1, p0, Lf2/z2;->n:Ljava/lang/Object;

    iput-object p2, p0, Lf2/z2;->o:Ljava/lang/Object;

    iput-object p3, p0, Lf2/z2;->p:Ljava/lang/Object;

    iput-object p4, p0, Lf2/z2;->q:Ljava/lang/Object;

    iput-object p5, p0, Lf2/z2;->r:Ljava/lang/Object;

    iput-object p6, p0, Lf2/z2;->s:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public constructor <init>(Ln/m0;Li9/c;Ly8/c;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lf2/z2;->l:I

    sget-object v0, Ln/j0;->l:Ln/j0;

    .line 4
    iput-object p1, p0, Lf2/z2;->r:Ljava/lang/Object;

    check-cast p2, La9/i;

    iput-object p2, p0, Lf2/z2;->s:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public constructor <init>(Lp/r1;Li9/c;Ly8/c;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lf2/z2;->l:I

    sget-object v0, Lp/n1;->l:Lp/n1;

    .line 5
    iput-object p1, p0, Lf2/z2;->r:Ljava/lang/Object;

    check-cast p2, La9/i;

    iput-object p2, p0, Lf2/z2;->s:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 12

    iget v0, p0, Lf2/z2;->l:I

    iget-object v1, p0, Lf2/z2;->s:Ljava/lang/Object;

    iget-object v2, p0, Lf2/z2;->r:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    new-instance v3, Lf2/z2;

    iget-object v0, p0, Lf2/z2;->o:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ly1/x;

    iget-object v0, p0, Lf2/z2;->p:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Li9/f;

    iget-object p0, p0, Lf2/z2;->q:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Li9/c;

    move-object v7, v2

    check-cast v7, Li9/c;

    move-object v8, v1

    check-cast v8, Li9/c;

    const/16 v10, 0x9

    move-object v9, p2

    invoke-direct/range {v3 .. v10}, Lf2/z2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, v3, Lf2/z2;->n:Ljava/lang/Object;

    return-object v3

    :pswitch_0
    move-object v9, p2

    new-instance p0, Lf2/z2;

    sget-object p2, Lp/n1;->l:Lp/n1;

    check-cast v2, Lp/r1;

    check-cast v1, La9/i;

    invoke-direct {p0, v2, v1, v9}, Lf2/z2;-><init>(Lp/r1;Li9/c;Ly8/c;)V

    iput-object p1, p0, Lf2/z2;->q:Ljava/lang/Object;

    return-object p0

    :pswitch_1
    move-object v9, p2

    new-instance v4, Lf2/z2;

    iget-object p1, p0, Lf2/z2;->n:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Ljd/b;

    iget-object p1, p0, Lf2/z2;->o:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Lr0/u0;

    iget-object p1, p0, Lf2/z2;->p:Ljava/lang/Object;

    move-object v7, p1

    check-cast v7, Lr0/u0;

    iget-object p0, p0, Lf2/z2;->q:Ljava/lang/Object;

    move-object v8, p0

    check-cast v8, Lr0/u0;

    check-cast v2, Lr0/u0;

    move-object v10, v1

    check-cast v10, Lr0/u0;

    move-object v11, v9

    move-object v9, v2

    invoke-direct/range {v4 .. v11}, Lf2/z2;-><init>(Ljd/b;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;)V

    return-object v4

    :pswitch_2
    move-object v9, p2

    new-instance v4, Lf2/z2;

    iget-object p1, p0, Lf2/z2;->o:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Lr0/u0;

    iget-object p1, p0, Lf2/z2;->p:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Lr0/u0;

    iget-object p0, p0, Lf2/z2;->q:Ljava/lang/Object;

    move-object v7, p0

    check-cast v7, Lr0/u0;

    move-object v8, v2

    check-cast v8, Lua/nav/c;

    check-cast v1, Lr0/u0;

    const/4 v11, 0x6

    move-object v10, v9

    move-object v9, v1

    invoke-direct/range {v4 .. v11}, Lf2/z2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object v4

    :pswitch_3
    move-object v9, p2

    new-instance v4, Lf2/z2;

    iget-object p2, p0, Lf2/z2;->p:Ljava/lang/Object;

    move-object v5, p2

    check-cast v5, Lr0/u0;

    iget-object p0, p0, Lf2/z2;->q:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Lr0/u0;

    move-object v7, v2

    check-cast v7, Lr0/u0;

    move-object v8, v1

    check-cast v8, Lr0/u0;

    const/4 v10, 0x5

    invoke-direct/range {v4 .. v10}, Lf2/z2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lr0/u0;Lr0/u0;Ly8/c;I)V

    iput-object p1, v4, Lf2/z2;->n:Ljava/lang/Object;

    return-object v4

    :pswitch_4
    move-object v9, p2

    new-instance v4, Lf2/z2;

    iget-object p2, p0, Lf2/z2;->p:Ljava/lang/Object;

    move-object v5, p2

    check-cast v5, Li9/e;

    iget-object p0, p0, Lf2/z2;->q:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Lr0/u0;

    move-object v7, v2

    check-cast v7, Lr0/u0;

    move-object v8, v1

    check-cast v8, Lr0/u0;

    const/4 v10, 0x4

    invoke-direct/range {v4 .. v10}, Lf2/z2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lr0/u0;Lr0/u0;Ly8/c;I)V

    iput-object p1, v4, Lf2/z2;->n:Ljava/lang/Object;

    return-object v4

    :pswitch_5
    move-object v9, p2

    new-instance p0, Lf2/z2;

    sget-object p2, Ln/j0;->l:Ln/j0;

    check-cast v2, Ln/m0;

    check-cast v1, La9/i;

    invoke-direct {p0, v2, v1, v9}, Lf2/z2;-><init>(Ln/m0;Li9/c;Ly8/c;)V

    iput-object p1, p0, Lf2/z2;->q:Ljava/lang/Object;

    return-object p0

    :pswitch_6
    move-object v9, p2

    new-instance v4, Lf2/z2;

    iget-object p2, p0, Lf2/z2;->p:Ljava/lang/Object;

    move-object v5, p2

    check-cast v5, Lw9/i;

    iget-object p0, p0, Lf2/z2;->q:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Ln/c;

    move-object v7, v2

    check-cast v7, Lr0/u0;

    move-object v8, v1

    check-cast v8, Lr0/u0;

    const/4 v10, 0x2

    invoke-direct/range {v4 .. v10}, Lf2/z2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lr0/u0;Lr0/u0;Ly8/c;I)V

    iput-object p1, v4, Lf2/z2;->n:Ljava/lang/Object;

    return-object v4

    :pswitch_7
    move-object v9, p2

    new-instance v4, Lf2/z2;

    iget-object p1, p0, Lf2/z2;->o:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Landroidx/work/impl/WorkDatabase_Impl;

    iget-object p1, p0, Lf2/z2;->p:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Lg5/c;

    iget-object p0, p0, Lf2/z2;->q:Ljava/lang/Object;

    move-object v7, p0

    check-cast v7, Lw9/e;

    move-object v8, v2

    check-cast v8, Lg5/p;

    check-cast v1, Lw9/e;

    const/4 v11, 0x1

    move-object v10, v9

    move-object v9, v1

    invoke-direct/range {v4 .. v11}, Lf2/z2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object v4

    :pswitch_8
    move-object v9, p2

    new-instance v4, Lf2/z2;

    iget-object p2, p0, Lf2/z2;->o:Ljava/lang/Object;

    move-object v5, p2

    check-cast v5, Lj9/y;

    iget-object p2, p0, Lf2/z2;->p:Ljava/lang/Object;

    move-object v6, p2

    check-cast v6, Lr0/u1;

    iget-object p0, p0, Lf2/z2;->q:Ljava/lang/Object;

    move-object v7, p0

    check-cast v7, Landroidx/lifecycle/v;

    move-object v8, v2

    check-cast v8, Lf2/a3;

    check-cast v1, Landroid/view/View;

    const/4 v11, 0x0

    move-object v10, v9

    move-object v9, v1

    invoke-direct/range {v4 .. v11}, Lf2/z2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, v4, Lf2/z2;->n:Ljava/lang/Object;

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
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

    iget v0, p0, Lf2/z2;->l:I

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lf2/z2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lf2/z2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lf2/z2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lf2/z2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lf2/z2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lf2/z2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lf2/z2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lf2/z2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lf2/z2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lf2/z2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lf2/z2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lf2/z2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lf2/z2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lf2/z2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lf2/z2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lf2/z2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lf2/z2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lf2/z2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lf2/z2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lf2/z2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lf2/z2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lf2/z2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lf2/z2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lf2/z2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p0, p1, p2}, Lf2/z2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lf2/z2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lf2/z2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-virtual {p0, p1, p2}, Lf2/z2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lf2/z2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lf2/z2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 32

    move-object/from16 v0, p0

    iget v1, v0, Lf2/z2;->l:I

    const/4 v2, 0x3

    const/4 v5, 0x7

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lf2/z2;->o:Ljava/lang/Object;

    check-cast v1, Ly1/x;

    sget-object v2, Lz8/a;->l:Lz8/a;

    iget v3, v0, Lf2/z2;->m:I

    if-eqz v3, :cond_1

    if-ne v3, v9, :cond_0

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v3, v0, Lf2/z2;->n:Ljava/lang/Object;

    move-object v11, v3

    check-cast v11, Lu9/t;

    new-instance v3, Lr/p1;

    invoke-direct {v3, v1}, Lr/p1;-><init>(Lb3/c;)V

    new-instance v10, Lr/u2;

    iget-object v4, v0, Lf2/z2;->p:Ljava/lang/Object;

    move-object v12, v4

    check-cast v12, Li9/f;

    iget-object v4, v0, Lf2/z2;->q:Ljava/lang/Object;

    move-object v13, v4

    check-cast v13, Li9/c;

    iget-object v4, v0, Lf2/z2;->r:Ljava/lang/Object;

    move-object v14, v4

    check-cast v14, Li9/c;

    iget-object v4, v0, Lf2/z2;->s:Ljava/lang/Object;

    move-object v15, v4

    check-cast v15, Li9/c;

    const/16 v17, 0x0

    move-object/from16 v16, v3

    invoke-direct/range {v10 .. v17}, Lr/u2;-><init>(Lu9/t;Li9/f;Li9/c;Li9/c;Li9/c;Lr/p1;Ly8/c;)V

    iput v9, v0, Lf2/z2;->m:I

    invoke-static {v1, v10, v0}, Ly4/s;->e(Ly1/x;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v2, Lt8/z;->a:Lt8/z;

    :goto_1
    return-object v2

    :pswitch_0
    iget-object v1, v0, Lf2/z2;->r:Ljava/lang/Object;

    check-cast v1, Lp/r1;

    sget-object v2, Lz8/a;->l:Lz8/a;

    iget v3, v0, Lf2/z2;->m:I

    if-eqz v3, :cond_5

    if-eq v3, v9, :cond_4

    if-ne v3, v7, :cond_3

    iget-object v1, v0, Lf2/z2;->n:Ljava/lang/Object;

    check-cast v1, Lp/r1;

    iget-object v2, v0, Lf2/z2;->o:Ljava/lang/Object;

    check-cast v2, Lca/a;

    iget-object v0, v0, Lf2/z2;->q:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lp/p1;

    :try_start_0
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p1

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v1, v0, Lf2/z2;->p:Ljava/lang/Object;

    check-cast v1, Lp/r1;

    iget-object v3, v0, Lf2/z2;->n:Ljava/lang/Object;

    check-cast v3, Li9/c;

    iget-object v4, v0, Lf2/z2;->o:Ljava/lang/Object;

    check-cast v4, Lca/a;

    iget-object v5, v0, Lf2/z2;->q:Ljava/lang/Object;

    check-cast v5, Lp/p1;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v31, v5

    move-object v5, v3

    move-object v3, v4

    move-object/from16 v4, v31

    goto :goto_2

    :cond_5
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v3, v0, Lf2/z2;->q:Ljava/lang/Object;

    check-cast v3, Lu9/t;

    new-instance v4, Lp/p1;

    sget-object v5, Lp/n1;->l:Lp/n1;

    invoke-interface {v3}, Lu9/t;->C()Ly8/h;

    move-result-object v3

    sget-object v6, Lu9/q;->m:Lu9/q;

    invoke-interface {v3, v6}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object v3

    invoke-static {v3}, Lj9/n;->d(Ljava/lang/Object;)V

    check-cast v3, Lu9/v0;

    invoke-direct {v4, v5, v3}, Lp/p1;-><init>(Lp/n1;Lu9/v0;)V

    invoke-static {v1, v4}, Lp/r1;->a(Lp/r1;Lp/p1;)V

    iget-object v3, v1, Lp/r1;->b:Lca/c;

    iget-object v5, v0, Lf2/z2;->s:Ljava/lang/Object;

    check-cast v5, La9/i;

    iput-object v4, v0, Lf2/z2;->q:Ljava/lang/Object;

    iput-object v3, v0, Lf2/z2;->o:Ljava/lang/Object;

    iput-object v5, v0, Lf2/z2;->n:Ljava/lang/Object;

    iput-object v1, v0, Lf2/z2;->p:Ljava/lang/Object;

    iput v9, v0, Lf2/z2;->m:I

    invoke-virtual {v3, v0}, Lca/c;->d(La9/c;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v2, :cond_6

    goto :goto_5

    :cond_6
    :goto_2
    :try_start_1
    iput-object v4, v0, Lf2/z2;->q:Ljava/lang/Object;

    iput-object v3, v0, Lf2/z2;->o:Ljava/lang/Object;

    iput-object v1, v0, Lf2/z2;->n:Ljava/lang/Object;

    iput-object v8, v0, Lf2/z2;->p:Ljava/lang/Object;

    iput v7, v0, Lf2/z2;->m:I

    invoke-interface {v5, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-ne v0, v2, :cond_7

    goto :goto_5

    :cond_7
    move-object v2, v3

    move-object v3, v4

    :goto_3
    :try_start_2
    iget-object v1, v1, Lp/r1;->a:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_8
    invoke-virtual {v1, v3, v8}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eq v4, v3, :cond_8

    :goto_4
    check-cast v2, Lca/c;

    invoke-virtual {v2, v8}, Lca/c;->f(Ljava/lang/Object;)V

    move-object v2, v0

    :goto_5
    return-object v2

    :catchall_1
    move-exception v0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    :goto_6
    :try_start_3
    iget-object v1, v1, Lp/r1;->a:Ljava/util/concurrent/atomic/AtomicReference;

    :goto_7
    invoke-virtual {v1, v3, v8}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_a

    goto :goto_7

    :cond_a
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_8
    check-cast v2, Lca/c;

    invoke-virtual {v2, v8}, Lca/c;->f(Ljava/lang/Object;)V

    throw v0

    :pswitch_1
    iget-object v1, v0, Lf2/z2;->o:Ljava/lang/Object;

    check-cast v1, Lr0/u0;

    iget-object v2, v0, Lf2/z2;->n:Ljava/lang/Object;

    check-cast v2, Ljd/b;

    sget-object v3, Lz8/a;->l:Lz8/a;

    iget v4, v0, Lf2/z2;->m:I

    if-eqz v4, :cond_c

    if-ne v4, v9, :cond_b

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v4, p1

    goto :goto_9

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput v9, v0, Lf2/z2;->m:I

    invoke-static {v2, v4, v0}, Lod/v6;->K(Ljd/b;Ljava/lang/String;La9/c;)Ljava/io/Serializable;

    move-result-object v4

    if-ne v4, v3, :cond_d

    goto :goto_a

    :cond_d
    :goto_9
    check-cast v4, Lt8/j;

    iget-object v3, v4, Lt8/j;->l:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v4, v4, Lt8/j;->m:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v6, v0, Lf2/z2;->p:Ljava/lang/Object;

    check-cast v6, Lr0/u0;

    invoke-interface {v6, v3}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    iget-object v3, v0, Lf2/z2;->q:Ljava/lang/Object;

    check-cast v3, Lr0/u0;

    invoke-interface {v3, v4}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    if-eqz v5, :cond_e

    iget-object v3, v0, Lf2/z2;->r:Ljava/lang/Object;

    check-cast v3, Lr0/u0;

    const-string v4, "mapbox_token"

    invoke-virtual {v2, v4}, Ljd/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    const-string v2, ""

    invoke-interface {v1, v2}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    :cond_e
    iget-object v0, v0, Lf2/z2;->s:Ljava/lang/Object;

    check-cast v0, Lr0/u0;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    sget-object v3, Lt8/z;->a:Lt8/z;

    :goto_a
    return-object v3

    :pswitch_2
    const-string v1, "signal"

    sget-object v2, Lt8/z;->a:Lt8/z;

    sget-object v3, Lz8/a;->l:Lz8/a;

    iget v4, v0, Lf2/z2;->m:I

    if-eqz v4, :cond_10

    if-ne v4, v9, :cond_f

    iget-object v3, v0, Lf2/z2;->n:Ljava/lang/Object;

    check-cast v3, Lorg/maplibre/android/style/sources/GeoJsonSource;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v5, p1

    goto :goto_b

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v4, v0, Lf2/z2;->o:Ljava/lang/Object;

    check-cast v4, Lr0/u0;

    sget-object v7, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    invoke-interface {v4}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_11

    goto/16 :goto_11

    :cond_11
    iget-object v4, v0, Lf2/z2;->p:Ljava/lang/Object;

    check-cast v4, Lr0/u0;

    invoke-interface {v4}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/maplibre/android/maps/MapLibreMap;

    if-eqz v4, :cond_1e

    invoke-virtual {v4}, Lorg/maplibre/android/maps/MapLibreMap;->getStyle()Lorg/maplibre/android/maps/Style;

    move-result-object v4

    if-eqz v4, :cond_1e

    const-string v7, "roadobj-src"

    invoke-virtual {v4, v7}, Lorg/maplibre/android/maps/Style;->getSourceAs(Ljava/lang/String;)Lorg/maplibre/android/style/sources/Source;

    move-result-object v4

    check-cast v4, Lorg/maplibre/android/style/sources/GeoJsonSource;

    if-nez v4, :cond_12

    goto/16 :goto_11

    :cond_12
    iget-object v7, v0, Lf2/z2;->q:Ljava/lang/Object;

    check-cast v7, Lr0/u0;

    invoke-interface {v7}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lod/e7;

    if-eqz v7, :cond_1d

    iget-wide v10, v7, Lod/e7;->e:D

    const-wide/high16 v12, 0x402e000000000000L    # 15.0

    cmpg-double v10, v10, v12

    if-gez v10, :cond_13

    goto/16 :goto_10

    :cond_13
    sget-object v10, Lu9/e0;->a:Lba/e;

    new-instance v11, Lad/t0;

    iget-object v12, v0, Lf2/z2;->r:Ljava/lang/Object;

    check-cast v12, Lua/nav/c;

    invoke-direct {v11, v12, v7, v8, v5}, Lad/t0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    iput-object v4, v0, Lf2/z2;->n:Ljava/lang/Object;

    iput v9, v0, Lf2/z2;->m:I

    invoke-static {v10, v11, v0}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_14

    move-object v2, v3

    goto/16 :goto_11

    :cond_14
    move-object v3, v4

    :goto_b
    check-cast v5, Ljava/util/List;

    iget-object v0, v0, Lf2/z2;->s:Ljava/lang/Object;

    check-cast v0, Lr0/u0;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_15
    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lbd/j;

    sget-object v9, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Luc/c;

    const-string v10, "cameras_signals"

    invoke-virtual {v9, v10}, Luc/c;->b(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_16

    iget-object v8, v8, Lbd/j;->c:Ljava/lang/String;

    invoke-static {v8, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_15

    :cond_16
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_17
    new-instance v0, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v4, v5}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_d
    if-ge v6, v5, :cond_1c

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lbd/j;

    iget-wide v8, v7, Lbd/j;->b:D

    iget-wide v10, v7, Lbd/j;->a:D

    invoke-static {v8, v9, v10, v11}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    move-result-object v8

    invoke-static {v8}, Lorg/maplibre/geojson/Feature;->fromGeometry(Lorg/maplibre/geojson/Geometry;)Lorg/maplibre/geojson/Feature;

    move-result-object v8

    const-string v9, "icon"

    iget-object v7, v7, Lbd/j;->c:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    goto :goto_e

    :sswitch_0
    const-string v10, "crossing"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18

    goto :goto_e

    :cond_18
    const-string v7, "crossing-icon"

    goto :goto_f

    :sswitch_1
    const-string v10, "rail"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_19

    goto :goto_e

    :cond_19
    const-string v7, "rail-icon"

    goto :goto_f

    :sswitch_2
    const-string v10, "bike"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1a

    goto :goto_e

    :cond_1a
    const-string v7, "bike-icon"

    goto :goto_f

    :sswitch_3
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1b

    :goto_e
    const-string v7, "bump-icon"

    goto :goto_f

    :cond_1b
    const-string v7, "signal-icon"

    :goto_f
    invoke-virtual {v8, v9, v7}, Lorg/maplibre/geojson/Feature;->addStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_1c
    invoke-static {v0}, Lorg/maplibre/geojson/FeatureCollection;->fromFeatures(Ljava/util/List;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/maplibre/android/style/sources/GeoJsonSource;->setGeoJson(Lorg/maplibre/geojson/FeatureCollection;)V

    goto :goto_11

    :cond_1d
    :goto_10
    sget-object v0, Lu8/r;->l:Lu8/r;

    invoke-static {v0}, Lorg/maplibre/geojson/FeatureCollection;->fromFeatures(Ljava/util/List;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/maplibre/android/style/sources/GeoJsonSource;->setGeoJson(Lorg/maplibre/geojson/FeatureCollection;)V

    :cond_1e
    :goto_11
    return-object v2

    :pswitch_3
    sget-object v1, Lt8/z;->a:Lt8/z;

    iget-object v2, v0, Lf2/z2;->n:Ljava/lang/Object;

    check-cast v2, Lu9/t;

    sget-object v5, Lz8/a;->l:Lz8/a;

    iget v7, v0, Lf2/z2;->m:I

    if-eqz v7, :cond_20

    if-ne v7, v9, :cond_1f

    iget-object v7, v0, Lf2/z2;->o:Ljava/lang/Object;

    check-cast v7, Lorg/maplibre/android/style/sources/GeoJsonSource;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    const-wide/16 v16, 0x0

    goto/16 :goto_1c

    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v7, v0, Lf2/z2;->p:Ljava/lang/Object;

    check-cast v7, Lr0/u0;

    sget-object v10, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    invoke-interface {v7}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_21

    goto/16 :goto_1d

    :cond_21
    iget-object v7, v0, Lf2/z2;->q:Ljava/lang/Object;

    check-cast v7, Lr0/u0;

    invoke-interface {v7}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/maplibre/android/maps/MapLibreMap;

    if-eqz v7, :cond_32

    invoke-virtual {v7}, Lorg/maplibre/android/maps/MapLibreMap;->getStyle()Lorg/maplibre/android/maps/Style;

    move-result-object v7

    if-eqz v7, :cond_32

    const-string v10, "trail-src"

    invoke-virtual {v7, v10}, Lorg/maplibre/android/maps/Style;->getSourceAs(Ljava/lang/String;)Lorg/maplibre/android/style/sources/Source;

    move-result-object v7

    check-cast v7, Lorg/maplibre/android/style/sources/GeoJsonSource;

    if-nez v7, :cond_22

    goto/16 :goto_1d

    :cond_22
    :goto_12
    invoke-static {v2}, Lu9/v;->r(Lu9/t;)Z

    move-result v10

    if-eqz v10, :cond_32

    iget-object v10, v0, Lf2/z2;->r:Ljava/lang/Object;

    check-cast v10, Lr0/u0;

    sget-object v11, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    invoke-interface {v10}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iget-object v13, v0, Lf2/z2;->s:Ljava/lang/Object;

    check-cast v13, Lr0/u0;

    invoke-interface {v13}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lua/nav/Tuning;

    iget v13, v13, Lua/nav/Tuning;->Q:I

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_13
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    const-wide/16 v16, 0x0

    if-eqz v15, :cond_2f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lt8/j;

    iget-object v6, v15, Lt8/j;->l:Ljava/lang/Object;

    check-cast v6, Ldd/l0;

    iget-object v15, v15, Lt8/j;->m:Ljava/lang/Object;

    check-cast v15, Ldd/y0;

    iget-object v8, v6, Ldd/l0;->a:Ldd/o;

    const-wide/16 v20, 0x3e8

    sget-object v3, Ldd/o;->m:Ldd/o;

    if-ne v8, v3, :cond_23

    move v3, v9

    :goto_14
    move-object/from16 p1, v10

    goto :goto_15

    :cond_23
    const/4 v3, 0x0

    goto :goto_14

    :goto_15
    iget-wide v9, v6, Ldd/l0;->c:J

    sub-long v8, v11, v9

    if-gez v13, :cond_24

    const/4 v10, 0x0

    :goto_16
    move-object/from16 v22, v5

    goto :goto_17

    :cond_24
    move v10, v13

    goto :goto_16

    :goto_17
    int-to-long v4, v10

    mul-long v4, v4, v20

    if-eqz v3, :cond_25

    long-to-double v4, v4

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    mul-double v4, v4, v20

    double-to-long v4, v4

    :cond_25
    cmp-long v10, v4, v16

    const-wide/16 v20, 0x0

    const-wide/high16 v23, 0x3ff0000000000000L    # 1.0

    if-lez v10, :cond_2a

    cmp-long v25, v8, v16

    if-gez v25, :cond_26

    goto :goto_18

    :cond_26
    cmp-long v10, v8, v4

    if-ltz v10, :cond_28

    :cond_27
    move-wide/from16 v23, v20

    goto :goto_19

    :cond_28
    long-to-double v4, v4

    const-wide v25, 0x3fd999999999999aL    # 0.4

    mul-double v25, v25, v4

    long-to-double v8, v8

    cmpg-double v10, v8, v25

    if-gtz v10, :cond_29

    goto :goto_19

    :cond_29
    sub-double v8, v8, v25

    sub-double v4, v4, v25

    div-double/2addr v8, v4

    sub-double v25, v23, v8

    const-wide/16 v27, 0x0

    const-wide/high16 v29, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v25 .. v30}, Lg6/c1;->d(DDD)D

    move-result-wide v23

    goto :goto_19

    :cond_2a
    :goto_18
    cmp-long v4, v8, v16

    if-gez v4, :cond_27

    if-lez v10, :cond_27

    :goto_19
    cmpg-double v4, v23, v20

    if-gtz v4, :cond_2b

    const/4 v4, 0x0

    goto :goto_1b

    :cond_2b
    if-eqz v3, :cond_2c

    const-string v3, "NET"

    goto :goto_1a

    :cond_2c
    if-nez v15, :cond_2d

    const-string v3, "GOOD"

    goto :goto_1a

    :cond_2d
    iget-object v3, v15, Ldd/y0;->a:Ldd/u0;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    :goto_1a
    iget-wide v4, v6, Ldd/l0;->e:D

    iget-wide v8, v6, Ldd/l0;->d:D

    invoke-static {v4, v5, v8, v9}, Lorg/maplibre/geojson/Point;->fromLngLat(DD)Lorg/maplibre/geojson/Point;

    move-result-object v4

    invoke-static {v4}, Lorg/maplibre/geojson/Feature;->fromGeometry(Lorg/maplibre/geojson/Geometry;)Lorg/maplibre/geojson/Feature;

    move-result-object v4

    const-string v5, "kind"

    invoke-virtual {v4, v5, v3}, Lorg/maplibre/geojson/Feature;->addStringProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "op"

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/maplibre/geojson/Feature;->addNumberProperty(Ljava/lang/String;Ljava/lang/Number;)V

    :goto_1b
    if-eqz v4, :cond_2e

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e
    move-object/from16 v10, p1

    move-object/from16 v5, v22

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto/16 :goto_13

    :cond_2f
    move-object/from16 v22, v5

    const-wide/16 v20, 0x3e8

    invoke-static {v14}, Lorg/maplibre/geojson/FeatureCollection;->fromFeatures(Ljava/util/List;)Lorg/maplibre/geojson/FeatureCollection;

    move-result-object v3

    const-string v4, "fromFeatures(...)"

    invoke-static {v3, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Lorg/maplibre/android/style/sources/GeoJsonSource;->setGeoJson(Lorg/maplibre/geojson/FeatureCollection;)V

    invoke-virtual {v3}, Lorg/maplibre/geojson/FeatureCollection;->features()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_32

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_30

    goto :goto_1d

    :cond_30
    iput-object v2, v0, Lf2/z2;->n:Ljava/lang/Object;

    iput-object v7, v0, Lf2/z2;->o:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, v0, Lf2/z2;->m:I

    move-wide/from16 v5, v20

    invoke-static {v5, v6, v0}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v5, v22

    if-ne v3, v5, :cond_31

    move-object v1, v5

    goto :goto_1d

    :cond_31
    :goto_1c
    const/4 v8, 0x0

    const/4 v9, 0x1

    goto/16 :goto_12

    :cond_32
    :goto_1d
    return-object v1

    :pswitch_4
    sget-object v1, Lt8/z;->a:Lt8/z;

    iget-object v2, v0, Lf2/z2;->n:Ljava/lang/Object;

    check-cast v2, Lu9/t;

    sget-object v3, Lz8/a;->l:Lz8/a;

    iget v5, v0, Lf2/z2;->m:I

    if-eqz v5, :cond_34

    const/4 v4, 0x1

    if-ne v5, v4, :cond_33

    iget-object v5, v0, Lf2/z2;->o:Ljava/lang/Object;

    check-cast v5, Lorg/maplibre/android/maps/MapLibreMap;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1e

    :cond_33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v5, v0, Lf2/z2;->q:Ljava/lang/Object;

    check-cast v5, Lr0/u0;

    sget-object v6, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    invoke-interface {v5}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_35

    goto :goto_1f

    :cond_35
    iget-object v5, v0, Lf2/z2;->r:Ljava/lang/Object;

    check-cast v5, Lr0/u0;

    invoke-interface {v5}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/maplibre/android/maps/MapLibreMap;

    if-nez v5, :cond_36

    goto :goto_1f

    :cond_36
    invoke-static {v2}, Lu9/v;->r(Lu9/t;)Z

    move-result v6

    if-eqz v6, :cond_38

    iput-object v2, v0, Lf2/z2;->n:Ljava/lang/Object;

    iput-object v5, v0, Lf2/z2;->o:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, v0, Lf2/z2;->m:I

    const-wide/16 v6, 0x4e20

    invoke-static {v6, v7, v0}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_37

    move-object v1, v3

    goto :goto_1f

    :cond_37
    :goto_1e
    sget-object v6, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->n()Lfd/o;

    move-result-object v6

    invoke-virtual {v6}, Lfd/o;->h()Z

    move-result v6

    if-eqz v6, :cond_36

    iget-object v2, v0, Lf2/z2;->s:Ljava/lang/Object;

    check-cast v2, Lr0/u0;

    sget-object v3, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v3}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    iget-object v0, v0, Lf2/z2;->p:Ljava/lang/Object;

    check-cast v0, Li9/e;

    invoke-interface {v0, v5, v3}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_38
    :goto_1f
    return-object v1

    :pswitch_5
    iget-object v1, v0, Lf2/z2;->r:Ljava/lang/Object;

    check-cast v1, Ln/m0;

    sget-object v3, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lf2/z2;->m:I

    if-eqz v2, :cond_3b

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3a

    if-ne v2, v7, :cond_39

    iget-object v1, v0, Lf2/z2;->n:Ljava/lang/Object;

    check-cast v1, Ln/m0;

    iget-object v2, v0, Lf2/z2;->o:Ljava/lang/Object;

    check-cast v2, Lca/a;

    iget-object v0, v0, Lf2/z2;->q:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ln/l0;

    :try_start_4
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v0, p1

    goto/16 :goto_23

    :catchall_3
    move-exception v0

    goto/16 :goto_26

    :cond_39
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    iget-object v1, v0, Lf2/z2;->p:Ljava/lang/Object;

    check-cast v1, Ln/m0;

    iget-object v2, v0, Lf2/z2;->n:Ljava/lang/Object;

    check-cast v2, Li9/c;

    iget-object v4, v0, Lf2/z2;->o:Ljava/lang/Object;

    check-cast v4, Lca/a;

    iget-object v5, v0, Lf2/z2;->q:Ljava/lang/Object;

    check-cast v5, Ln/l0;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_22

    :cond_3b
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v2, v0, Lf2/z2;->q:Ljava/lang/Object;

    check-cast v2, Lu9/t;

    new-instance v5, Ln/l0;

    sget-object v6, Ln/j0;->l:Ln/j0;

    invoke-interface {v2}, Lu9/t;->C()Ly8/h;

    move-result-object v2

    sget-object v6, Lu9/q;->m:Lu9/q;

    invoke-interface {v2, v6}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object v2

    invoke-static {v2}, Lj9/n;->d(Ljava/lang/Object;)V

    check-cast v2, Lu9/v0;

    invoke-direct {v5, v2}, Ln/l0;-><init>(Lu9/v0;)V

    iget-object v6, v1, Ln/m0;->a:Ljava/util/concurrent/atomic/AtomicReference;

    :goto_20
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ln/l0;

    if-eqz v8, :cond_3d

    sget-object v2, Ln/j0;->l:Ln/j0;

    invoke-virtual {v2, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-ltz v2, :cond_3c

    goto :goto_21

    :cond_3c
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Current mutation had a higher priority"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    :goto_21
    invoke-virtual {v6, v8, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    if-eqz v8, :cond_3e

    iget-object v2, v8, Ln/l0;->a:Lu9/v0;

    new-instance v6, Ln/k0;

    const-string v8, "Mutation interrupted"

    invoke-direct {v6, v8}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v6}, Lu9/v0;->c(Ljava/util/concurrent/CancellationException;)V

    :cond_3e
    iget-object v2, v1, Ln/m0;->b:Lca/c;

    iget-object v6, v0, Lf2/z2;->s:Ljava/lang/Object;

    check-cast v6, La9/i;

    iput-object v5, v0, Lf2/z2;->q:Ljava/lang/Object;

    iput-object v2, v0, Lf2/z2;->o:Ljava/lang/Object;

    iput-object v6, v0, Lf2/z2;->n:Ljava/lang/Object;

    iput-object v1, v0, Lf2/z2;->p:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, v0, Lf2/z2;->m:I

    invoke-virtual {v2, v0}, Lca/c;->d(La9/c;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_3f

    goto :goto_25

    :cond_3f
    move-object v4, v2

    move-object v2, v6

    :goto_22
    :try_start_5
    iput-object v5, v0, Lf2/z2;->q:Ljava/lang/Object;

    iput-object v4, v0, Lf2/z2;->o:Ljava/lang/Object;

    iput-object v1, v0, Lf2/z2;->n:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, v0, Lf2/z2;->p:Ljava/lang/Object;

    iput v7, v0, Lf2/z2;->m:I

    invoke-interface {v2, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-ne v0, v3, :cond_40

    goto :goto_25

    :cond_40
    move-object v2, v4

    move-object v3, v5

    :goto_23
    :try_start_6
    iget-object v1, v1, Ln/m0;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v6, 0x0

    :cond_41
    invoke-virtual {v1, v3, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    goto :goto_24

    :cond_42
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eq v4, v3, :cond_41

    :goto_24
    check-cast v2, Lca/c;

    invoke-virtual {v2, v6}, Lca/c;->f(Ljava/lang/Object;)V

    move-object v3, v0

    :goto_25
    return-object v3

    :catchall_4
    move-exception v0

    goto :goto_28

    :catchall_5
    move-exception v0

    move-object v2, v4

    move-object v3, v5

    :goto_26
    :try_start_7
    iget-object v1, v1, Ln/m0;->a:Ljava/util/concurrent/atomic/AtomicReference;

    :goto_27
    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_43

    goto :goto_27

    :cond_43
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :goto_28
    check-cast v2, Lca/c;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lca/c;->f(Ljava/lang/Object;)V

    throw v0

    :cond_44
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v8, :cond_3d

    goto/16 :goto_20

    :pswitch_6
    iget-object v1, v0, Lf2/z2;->p:Ljava/lang/Object;

    check-cast v1, Lw9/i;

    sget-object v3, Lz8/a;->l:Lz8/a;

    iget v5, v0, Lf2/z2;->m:I

    if-eqz v5, :cond_46

    const/4 v4, 0x1

    if-ne v5, v4, :cond_45

    iget-object v5, v0, Lf2/z2;->o:Ljava/lang/Object;

    check-cast v5, Lw9/b;

    iget-object v6, v0, Lf2/z2;->n:Ljava/lang/Object;

    check-cast v6, Lu9/t;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v7, p1

    goto :goto_2a

    :cond_45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v5, v0, Lf2/z2;->n:Ljava/lang/Object;

    check-cast v5, Lu9/t;

    invoke-interface {v1}, Lw9/t;->iterator()Lw9/b;

    move-result-object v6

    move-object/from16 v31, v6

    move-object v6, v5

    move-object/from16 v5, v31

    :goto_29
    iput-object v6, v0, Lf2/z2;->n:Ljava/lang/Object;

    iput-object v5, v0, Lf2/z2;->o:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, v0, Lf2/z2;->m:I

    invoke-virtual {v5, v0}, Lw9/b;->b(La9/c;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v3, :cond_47

    goto :goto_2c

    :cond_47
    :goto_2a
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_49

    invoke-virtual {v5}, Lw9/b;->c()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1}, Lw9/t;->g()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lw9/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_48

    move-object v10, v7

    goto :goto_2b

    :cond_48
    move-object v10, v8

    :goto_2b
    new-instance v9, Landroidx/lifecycle/j0;

    iget-object v7, v0, Lf2/z2;->q:Ljava/lang/Object;

    move-object v11, v7

    check-cast v11, Ln/c;

    iget-object v7, v0, Lf2/z2;->r:Ljava/lang/Object;

    move-object v12, v7

    check-cast v12, Lr0/u0;

    iget-object v7, v0, Lf2/z2;->s:Ljava/lang/Object;

    move-object v13, v7

    check-cast v13, Lr0/u0;

    const/4 v14, 0x0

    const/16 v15, 0x9

    invoke-direct/range {v9 .. v15}, Landroidx/lifecycle/j0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    const/4 v7, 0x0

    invoke-static {v6, v7, v7, v9, v2}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    goto :goto_29

    :cond_49
    sget-object v3, Lt8/z;->a:Lt8/z;

    :goto_2c
    return-object v3

    :pswitch_7
    const-wide/16 v16, 0x0

    iget-object v1, v0, Lf2/z2;->p:Ljava/lang/Object;

    check-cast v1, Lg5/c;

    iget-object v2, v0, Lf2/z2;->o:Ljava/lang/Object;

    check-cast v2, Landroidx/work/impl/WorkDatabase_Impl;

    iget-object v2, v2, Landroidx/work/impl/WorkDatabase;->d:Lk4/j;

    sget-object v3, Lz8/a;->l:Lz8/a;

    iget v5, v0, Lf2/z2;->m:I

    if-eqz v5, :cond_4c

    const/4 v4, 0x1

    if-eq v5, v4, :cond_4b

    if-ne v5, v7, :cond_4a

    iget-object v5, v0, Lf2/z2;->n:Ljava/lang/Object;

    check-cast v5, Lw9/b;

    :try_start_8
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    move-object v6, v5

    goto/16 :goto_36

    :catchall_6
    move-exception v0

    goto/16 :goto_39

    :cond_4a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4b
    iget-object v5, v0, Lf2/z2;->n:Ljava/lang/Object;

    check-cast v5, Lw9/b;

    :try_start_9
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    move-object v6, v5

    move-object/from16 v5, p1

    goto/16 :goto_37

    :cond_4c
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v1, Lg5/c;->m:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    const-string v6, "this as java.lang.String).toLowerCase(locale)"

    const-string v8, "US"

    iget-object v9, v2, Lk4/j;->c:Ljava/util/HashMap;

    new-instance v10, Lv8/i;

    invoke-direct {v10}, Lv8/i;-><init>()V

    array-length v11, v5

    const/4 v12, 0x0

    :goto_2d
    if-ge v12, v11, :cond_4e

    aget-object v13, v5, v12

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v14, v8}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v6}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4d

    invoke-virtual {v13, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v6}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lj9/n;->d(Ljava/lang/Object;)V

    check-cast v13, Ljava/util/Collection;

    invoke-virtual {v10, v13}, Lv8/i;->addAll(Ljava/util/Collection;)Z

    goto :goto_2e

    :cond_4d
    invoke-virtual {v10, v13}, Lv8/i;->add(Ljava/lang/Object;)Z

    :goto_2e
    add-int/lit8 v12, v12, 0x1

    goto :goto_2d

    :cond_4e
    invoke-static {v10}, Ll7/a;->d(Lv8/i;)Lv8/i;

    move-result-object v5

    const/4 v6, 0x0

    new-array v8, v6, [Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    new-instance v8, Ljava/util/ArrayList;

    array-length v9, v5

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    array-length v9, v5

    move v10, v6

    :goto_2f
    if-ge v10, v9, :cond_50

    aget-object v11, v5, v10

    iget-object v12, v2, Lk4/j;->d:Ljava/util/LinkedHashMap;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "US"

    invoke-static {v13, v14}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {v13, v14}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    if-eqz v12, :cond_4f

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_2f

    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "There is no table with name "

    invoke-virtual {v1, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_50
    invoke-static {v8}, Lu8/m;->A0(Ljava/util/List;)[I

    move-result-object v8

    new-instance v9, Lk4/i;

    invoke-direct {v9, v1, v8, v5}, Lk4/i;-><init>(Lg5/c;[I[Ljava/lang/String;)V

    iget-object v5, v2, Lk4/j;->j:Li/f;

    monitor-enter v5

    :try_start_a
    iget-object v10, v2, Lk4/j;->j:Li/f;

    invoke-virtual {v10, v1}, Li/f;->a(Ljava/lang/Object;)Li/c;

    move-result-object v11

    if-eqz v11, :cond_51

    iget-object v9, v11, Li/c;->m:Ljava/lang/Object;

    move-object/from16 v19, v9

    goto :goto_31

    :cond_51
    new-instance v11, Li/c;

    invoke-direct {v11, v1, v9}, Li/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v9, v10, Li/f;->o:I

    const/4 v4, 0x1

    add-int/2addr v9, v4

    iput v9, v10, Li/f;->o:I

    iget-object v9, v10, Li/f;->m:Li/c;

    if-nez v9, :cond_52

    iput-object v11, v10, Li/f;->l:Li/c;

    iput-object v11, v10, Li/f;->m:Li/c;

    goto :goto_30

    :cond_52
    iput-object v11, v9, Li/c;->n:Li/c;

    iput-object v9, v11, Li/c;->o:Li/c;

    iput-object v11, v10, Li/f;->m:Li/c;

    :goto_30
    const/16 v19, 0x0

    :goto_31
    check-cast v19, Lk4/i;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    monitor-exit v5

    if-nez v19, :cond_55

    iget-object v5, v2, Lk4/j;->i:Lk4/h;

    array-length v9, v8

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, "tableIds"

    invoke-static {v8, v9}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v5

    :try_start_b
    array-length v9, v8

    move v10, v6

    :goto_32
    if-ge v6, v9, :cond_54

    aget v11, v8, v6

    iget-object v12, v5, Lk4/h;->b:Ljava/lang/Object;

    check-cast v12, [J

    aget-wide v13, v12, v11

    const-wide/16 v18, 0x1

    add-long v18, v13, v18

    aput-wide v18, v12, v11

    cmp-long v11, v13, v16

    if-nez v11, :cond_53

    const/4 v4, 0x1

    iput-boolean v4, v5, Lk4/h;->a:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    const/4 v10, 0x1

    goto :goto_33

    :catchall_7
    move-exception v0

    goto :goto_34

    :cond_53
    :goto_33
    add-int/lit8 v6, v6, 0x1

    goto :goto_32

    :cond_54
    monitor-exit v5

    if-eqz v10, :cond_55

    iget-object v5, v2, Lk4/j;->a:Landroidx/work/impl/WorkDatabase_Impl;

    iget-object v6, v5, Landroidx/work/impl/WorkDatabase;->a:Lr4/b;

    if-eqz v6, :cond_55

    iget-object v6, v6, Lr4/b;->l:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v6

    const/4 v4, 0x1

    if-ne v6, v4, :cond_55

    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->h()Lq4/b;

    move-result-object v5

    invoke-interface {v5}, Lq4/b;->v()Lr4/b;

    move-result-object v5

    invoke-virtual {v2, v5}, Lk4/j;->d(Lr4/b;)V

    goto :goto_35

    :goto_34
    monitor-exit v5

    throw v0

    :cond_55
    :goto_35
    :try_start_c
    iget-object v5, v0, Lf2/z2;->q:Ljava/lang/Object;

    check-cast v5, Lw9/e;

    new-instance v6, Lw9/b;

    invoke-direct {v6, v5}, Lw9/b;-><init>(Lw9/e;)V

    :cond_56
    :goto_36
    iput-object v6, v0, Lf2/z2;->n:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, v0, Lf2/z2;->m:I

    invoke-virtual {v6, v0}, Lw9/b;->b(La9/c;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_57

    goto :goto_38

    :cond_57
    :goto_37
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_58

    invoke-virtual {v6}, Lw9/b;->c()Ljava/lang/Object;

    iget-object v5, v0, Lf2/z2;->r:Ljava/lang/Object;

    check-cast v5, Lg5/p;

    invoke-virtual {v5}, Lg5/p;->call()Ljava/lang/Object;

    move-result-object v5

    iget-object v8, v0, Lf2/z2;->s:Ljava/lang/Object;

    check-cast v8, Lw9/e;

    iput-object v6, v0, Lf2/z2;->n:Ljava/lang/Object;

    iput v7, v0, Lf2/z2;->m:I

    invoke-interface {v8, v5, v0}, Lw9/u;->f(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;

    move-result-object v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    if-ne v5, v3, :cond_56

    goto :goto_38

    :cond_58
    invoke-virtual {v2, v1}, Lk4/j;->b(Lg5/c;)V

    sget-object v3, Lt8/z;->a:Lt8/z;

    :goto_38
    return-object v3

    :goto_39
    invoke-virtual {v2, v1}, Lk4/j;->b(Lg5/c;)V

    throw v0

    :catchall_8
    move-exception v0

    monitor-exit v5

    throw v0

    :pswitch_8
    iget-object v1, v0, Lf2/z2;->r:Ljava/lang/Object;

    check-cast v1, Lf2/a3;

    iget-object v3, v0, Lf2/z2;->q:Ljava/lang/Object;

    check-cast v3, Landroidx/lifecycle/v;

    sget-object v6, Lt8/z;->a:Lt8/z;

    sget-object v7, Lz8/a;->l:Lz8/a;

    iget v8, v0, Lf2/z2;->m:I

    if-eqz v8, :cond_5a

    const/4 v4, 0x1

    if-ne v8, v4, :cond_59

    iget-object v0, v0, Lf2/z2;->n:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lu9/v0;

    :try_start_d
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    goto/16 :goto_3d

    :catchall_9
    move-exception v0

    move-object v6, v2

    goto/16 :goto_3f

    :cond_59
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5a
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v8, v0, Lf2/z2;->n:Ljava/lang/Object;

    check-cast v8, Lu9/t;

    :try_start_e
    iget-object v9, v0, Lf2/z2;->o:Ljava/lang/Object;

    check-cast v9, Lj9/y;

    iget-object v9, v9, Lj9/y;->m:Ljava/lang/Object;

    check-cast v9, Lf2/b2;

    if-eqz v9, :cond_5b

    iget-object v10, v0, Lf2/z2;->s:Ljava/lang/Object;

    check-cast v10, Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lf2/d3;->a(Landroid/content/Context;)Lx9/j0;

    move-result-object v10

    invoke-interface {v10}, Lx9/j0;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    move-result v11

    iget-object v12, v9, Lf2/b2;->l:Lr0/a1;

    invoke-virtual {v12, v11}, Lr0/a1;->h(F)V

    new-instance v11, Landroidx/lifecycle/i0;

    const/4 v12, 0x0

    invoke-direct {v11, v10, v9, v12, v5}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    invoke-static {v8, v12, v12, v11, v2}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    move-result-object v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    goto :goto_3a

    :catchall_a
    move-exception v0

    const/4 v6, 0x0

    goto :goto_3f

    :cond_5b
    const/4 v2, 0x0

    :goto_3a
    :try_start_f
    iget-object v5, v0, Lf2/z2;->p:Ljava/lang/Object;

    check-cast v5, Lr0/u1;

    iput-object v2, v0, Lf2/z2;->n:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, v0, Lf2/z2;->m:I

    new-instance v4, Lr0/t1;

    const/4 v12, 0x0

    invoke-direct {v4, v5, v12}, Lr0/t1;-><init>(Lr0/u1;Ly8/c;)V

    invoke-interface {v0}, Ly8/c;->getContext()Ly8/h;

    move-result-object v8

    invoke-static {v8}, Lr0/r;->v(Ly8/h;)Lf2/x0;

    move-result-object v8

    iget-object v9, v5, Lr0/u1;->a:Lf2/x0;

    new-instance v10, Landroidx/lifecycle/l0;

    invoke-direct {v10, v5, v4, v8, v12}, Landroidx/lifecycle/l0;-><init>(Lr0/u1;Lr0/t1;Lf2/x0;Ly8/c;)V

    invoke-static {v9, v10, v0}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    if-ne v0, v7, :cond_5c

    goto :goto_3b

    :cond_5c
    move-object v0, v6

    :goto_3b
    if-ne v0, v7, :cond_5d

    goto :goto_3c

    :cond_5d
    move-object v0, v6

    :goto_3c
    if-ne v0, v7, :cond_5e

    move-object v6, v7

    goto :goto_3e

    :cond_5e
    :goto_3d
    if-eqz v2, :cond_5f

    const/4 v12, 0x0

    invoke-interface {v2, v12}, Lu9/v0;->c(Ljava/util/concurrent/CancellationException;)V

    :cond_5f
    invoke-interface {v3}, Landroidx/lifecycle/v;->getLifecycle()Landroidx/lifecycle/q;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/q;->b(Landroidx/lifecycle/u;)V

    :goto_3e
    return-object v6

    :goto_3f
    if-eqz v6, :cond_60

    const/4 v12, 0x0

    invoke-interface {v6, v12}, Lu9/v0;->c(Ljava/util/concurrent/CancellationException;)V

    :cond_60
    invoke-interface {v3}, Landroidx/lifecycle/v;->getLifecycle()Landroidx/lifecycle/q;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/lifecycle/q;->b(Landroidx/lifecycle/u;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x35ca9158 -> :sswitch_3
        0x2e23e1 -> :sswitch_2
        0x354b92 -> :sswitch_1
        0x7e8f17a2 -> :sswitch_0
    .end sparse-switch
.end method
