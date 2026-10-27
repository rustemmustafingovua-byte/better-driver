.class public final Lb0/y0;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public m:I

.field public final synthetic n:Ly1/x;

.field public final synthetic o:Lb0/c2;


# direct methods
.method public synthetic constructor <init>(Ly1/x;Lb0/c2;Ly8/c;I)V
    .locals 0

    iput p4, p0, Lb0/y0;->l:I

    iput-object p1, p0, Lb0/y0;->n:Ly1/x;

    iput-object p2, p0, Lb0/y0;->o:Lb0/c2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 2

    iget p1, p0, Lb0/y0;->l:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lb0/y0;

    iget-object v0, p0, Lb0/y0;->o:Lb0/c2;

    const/4 v1, 0x2

    iget-object p0, p0, Lb0/y0;->n:Ly1/x;

    invoke-direct {p1, p0, v0, p2, v1}, Lb0/y0;-><init>(Ly1/x;Lb0/c2;Ly8/c;I)V

    return-object p1

    :pswitch_0
    new-instance p1, Lb0/y0;

    iget-object v0, p0, Lb0/y0;->o:Lb0/c2;

    const/4 v1, 0x1

    iget-object p0, p0, Lb0/y0;->n:Ly1/x;

    invoke-direct {p1, p0, v0, p2, v1}, Lb0/y0;-><init>(Ly1/x;Lb0/c2;Ly8/c;I)V

    return-object p1

    :pswitch_1
    new-instance p1, Lb0/y0;

    iget-object v0, p0, Lb0/y0;->o:Lb0/c2;

    const/4 v1, 0x0

    iget-object p0, p0, Lb0/y0;->n:Ly1/x;

    invoke-direct {p1, p0, v0, p2, v1}, Lb0/y0;-><init>(Ly1/x;Lb0/c2;Ly8/c;I)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lb0/y0;->l:I

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lb0/y0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lb0/y0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lb0/y0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lb0/y0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lb0/y0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lb0/y0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lb0/y0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lb0/y0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lb0/y0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lb0/y0;->l:I

    const/4 v2, 0x0

    iget-object v3, v0, Lb0/y0;->o:Lb0/c2;

    iget-object v4, v0, Lb0/y0;->n:Ly1/x;

    const-string v5, "call to \'resume\' before \'invoke\' with coroutine"

    sget-object v6, Lt8/z;->a:Lt8/z;

    const/4 v7, 0x1

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v8, v0, Lb0/y0;->m:I

    if-eqz v8, :cond_1

    if-ne v8, v7, :cond_0

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iput v7, v0, Lb0/y0;->m:I

    new-instance v5, Lb0/v1;

    invoke-direct {v5, v3, v2}, Lb0/v1;-><init>(Lb0/c2;I)V

    new-instance v8, Lb0/w1;

    invoke-direct {v8, v3, v2}, Lb0/w1;-><init>(Lb0/c2;I)V

    new-instance v15, Lb0/w1;

    invoke-direct {v15, v3, v7}, Lb0/w1;-><init>(Lb0/c2;I)V

    new-instance v14, Lb0/x;

    const/4 v2, 0x2

    invoke-direct {v14, v2, v3}, Lb0/x;-><init>(ILjava/lang/Object;)V

    sget v2, Lr/i0;->a:F

    new-instance v13, Lb0/x2;

    const/16 v2, 0x12

    invoke-direct {v13, v2, v5}, Lb0/x2;-><init>(ILjava/lang/Object;)V

    new-instance v2, Lm0/f1;

    const/4 v3, 0x6

    invoke-direct {v2, v8, v3}, Lm0/f1;-><init>(Li9/a;I)V

    new-instance v10, Lp/a1;

    const/4 v3, 0x5

    invoke-direct {v10, v3}, Lp/a1;-><init>(I)V

    new-instance v11, Lj9/x;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    new-instance v9, Lr/d0;

    const/16 v17, 0x0

    const/4 v12, 0x0

    move-object/from16 v16, v2

    invoke-direct/range {v9 .. v17}, Lr/d0;-><init>(Li9/a;Lj9/x;Lr/m1;Li9/f;Li9/e;Li9/a;Li9/c;Ly8/c;)V

    invoke-static {v4, v9, v0}, Ly4/s;->e(Ly1/x;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v6

    :goto_0
    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v6

    :goto_1
    if-ne v0, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v0, v6

    :goto_2
    if-ne v0, v1, :cond_5

    move-object v6, v1

    :cond_5
    :goto_3
    return-object v6

    :pswitch_0
    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v8, v0, Lb0/y0;->m:I

    if-eqz v8, :cond_7

    if-ne v8, v7, :cond_6

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_5

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iput v7, v0, Lb0/y0;->m:I

    new-instance v5, Lb0/y1;

    const/4 v7, 0x0

    invoke-direct {v5, v3, v7, v2}, Lb0/y1;-><init>(Ljava/lang/Object;Ly8/c;I)V

    invoke-static {v4, v5, v0}, Ly4/s;->e(Ly1/x;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_8

    goto :goto_4

    :cond_8
    move-object v0, v6

    :goto_4
    if-ne v0, v1, :cond_9

    move-object v6, v1

    :cond_9
    :goto_5
    return-object v6

    :pswitch_1
    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lb0/y0;->m:I

    if-eqz v2, :cond_b

    if-ne v2, v7, :cond_a

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_6

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iput v7, v0, Lb0/y0;->m:I

    invoke-static {v4, v3, v0}, Lb0/n1;->p(Ly1/x;Lb0/c2;Ly8/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_c

    move-object v6, v1

    :cond_c
    :goto_6
    return-object v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
