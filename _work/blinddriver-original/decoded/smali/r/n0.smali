.class public final Lr/n0;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public m:Lj9/y;

.field public n:Lj9/y;

.field public o:I

.field public synthetic p:Ljava/lang/Object;

.field public final synthetic q:Lr/o0;


# direct methods
.method public constructor <init>(Lj9/y;Lr/o0;Ly8/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lr/n0;->l:I

    .line 1
    iput-object p1, p0, Lr/n0;->n:Lj9/y;

    iput-object p2, p0, Lr/n0;->q:Lr/o0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public constructor <init>(Lr/o0;Ly8/c;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lr/n0;->l:I

    .line 2
    iput-object p1, p0, Lr/n0;->q:Lr/o0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 2

    iget v0, p0, Lr/n0;->l:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lr/n0;

    iget-object p0, p0, Lr/n0;->q:Lr/o0;

    invoke-direct {v0, p0, p2}, Lr/n0;-><init>(Lr/o0;Ly8/c;)V

    iput-object p1, v0, Lr/n0;->p:Ljava/lang/Object;

    return-object v0

    :pswitch_0
    new-instance v0, Lr/n0;

    iget-object v1, p0, Lr/n0;->n:Lj9/y;

    iget-object p0, p0, Lr/n0;->q:Lr/o0;

    invoke-direct {v0, v1, p0, p2}, Lr/n0;-><init>(Lj9/y;Lr/o0;Ly8/c;)V

    iput-object p1, v0, Lr/n0;->p:Ljava/lang/Object;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lr/n0;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lr/n0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lr/n0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lr/n0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Li9/c;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lr/n0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lr/n0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lr/n0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lr/n0;->l:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lr/n0;->o:I

    const/4 v2, 0x0

    iget-object v3, p0, Lr/n0;->q:Lr/o0;

    packed-switch v1, :pswitch_data_1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object v1, p0, Lr/n0;->p:Ljava/lang/Object;

    check-cast v1, Lu9/t;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lr/n0;->p:Ljava/lang/Object;

    check-cast v1, Lu9/t;

    :goto_0
    :try_start_0
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lr/n0;->p:Ljava/lang/Object;

    check-cast v1, Lu9/t;

    goto :goto_0

    :cond_0
    :goto_1
    move-object v5, v1

    goto :goto_2

    :pswitch_3
    iget-object v1, p0, Lr/n0;->m:Lj9/y;

    iget-object v4, p0, Lr/n0;->p:Ljava/lang/Object;

    check-cast v4, Lu9/t;

    :try_start_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    move-object v5, v4

    goto/16 :goto_6

    :catch_0
    move-object v1, v4

    goto/16 :goto_7

    :pswitch_4
    iget-object v1, p0, Lr/n0;->m:Lj9/y;

    iget-object v4, p0, Lr/n0;->p:Ljava/lang/Object;

    check-cast v4, Lu9/t;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_5

    :pswitch_5
    iget-object v1, p0, Lr/n0;->n:Lj9/y;

    iget-object v4, p0, Lr/n0;->m:Lj9/y;

    iget-object v5, p0, Lr/n0;->p:Ljava/lang/Object;

    check-cast v5, Lu9/t;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_6
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lr/n0;->p:Ljava/lang/Object;

    check-cast p1, Lu9/t;

    move-object v5, p1

    :cond_2
    :goto_2
    invoke-static {v5}, Lu9/v;->r(Lu9/t;)Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance v1, Lj9/y;

    invoke-direct {v1}, Lj9/y;-><init>()V

    iget-object p1, v3, Lr/o0;->F:Lw9/e;

    if-eqz p1, :cond_4

    iput-object v5, p0, Lr/n0;->p:Ljava/lang/Object;

    iput-object v1, p0, Lr/n0;->m:Lj9/y;

    iput-object v1, p0, Lr/n0;->n:Lj9/y;

    const/4 v4, 0x1

    iput v4, p0, Lr/n0;->o:I

    invoke-virtual {p1, p0}, Lw9/e;->h(Ly8/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto/16 :goto_8

    :cond_3
    move-object v4, v1

    :goto_3
    check-cast p1, Lr/w;

    goto :goto_4

    :cond_4
    move-object v4, v1

    move-object p1, v2

    :goto_4
    iput-object p1, v1, Lj9/y;->m:Ljava/lang/Object;

    iget-object p1, v4, Lj9/y;->m:Ljava/lang/Object;

    instance-of v1, p1, Lr/u;

    if-eqz v1, :cond_2

    check-cast p1, Lr/u;

    iput-object v5, p0, Lr/n0;->p:Ljava/lang/Object;

    iput-object v4, p0, Lr/n0;->m:Lj9/y;

    iput-object v2, p0, Lr/n0;->n:Lj9/y;

    const/4 v1, 0x2

    iput v1, p0, Lr/n0;->o:I

    invoke-static {v3, p1, p0}, Lr/o0;->Q0(Lr/o0;Lr/u;La9/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    goto :goto_8

    :cond_5
    move-object v1, v4

    move-object v4, v5

    :goto_5
    :try_start_2
    new-instance p1, Lr/n0;

    invoke-direct {p1, v1, v3, v2}, Lr/n0;-><init>(Lj9/y;Lr/o0;Ly8/c;)V

    iput-object v4, p0, Lr/n0;->p:Ljava/lang/Object;

    iput-object v1, p0, Lr/n0;->m:Lj9/y;

    const/4 v5, 0x3

    iput v5, p0, Lr/n0;->o:I

    invoke-virtual {v3, p1, p0}, Lr/o0;->T0(Lr/n0;Lr/n0;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0

    if-ne p1, v0, :cond_1

    goto :goto_8

    :goto_6
    :try_start_3
    iget-object p1, v1, Lj9/y;->m:Ljava/lang/Object;

    instance-of v1, p1, Lr/v;

    if-eqz v1, :cond_6

    check-cast p1, Lr/v;

    iput-object v5, p0, Lr/n0;->p:Ljava/lang/Object;

    iput-object v2, p0, Lr/n0;->m:Lj9/y;

    const/4 v1, 0x4

    iput v1, p0, Lr/n0;->o:I

    invoke-static {v3, p1, p0}, Lr/o0;->R0(Lr/o0;Lr/v;La9/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    goto :goto_8

    :catch_1
    move-object v1, v5

    goto :goto_7

    :cond_6
    instance-of p1, p1, Lr/s;

    if-eqz p1, :cond_2

    iput-object v5, p0, Lr/n0;->p:Ljava/lang/Object;

    iput-object v2, p0, Lr/n0;->m:Lj9/y;

    const/4 p1, 0x5

    iput p1, p0, Lr/n0;->o:I

    invoke-static {v3, p0}, Lr/o0;->P0(Lr/o0;La9/c;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_1

    if-ne p1, v0, :cond_2

    goto :goto_8

    :catch_2
    :goto_7
    iput-object v1, p0, Lr/n0;->p:Ljava/lang/Object;

    iput-object v2, p0, Lr/n0;->m:Lj9/y;

    const/4 p1, 0x6

    iput p1, p0, Lr/n0;->o:I

    invoke-static {v3, p0}, Lr/o0;->P0(Lr/o0;La9/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    goto :goto_8

    :cond_7
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_8
    return-object v0

    :pswitch_7
    iget-object v0, p0, Lr/n0;->n:Lj9/y;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, p0, Lr/n0;->o:I

    const/4 v3, 0x1

    if-eqz v2, :cond_9

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Lr/n0;->m:Lj9/y;

    iget-object v4, p0, Lr/n0;->p:Ljava/lang/Object;

    check-cast v4, Li9/c;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_b

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lr/n0;->p:Ljava/lang/Object;

    check-cast p1, Li9/c;

    move-object v4, p1

    :goto_9
    iget-object p1, v0, Lj9/y;->m:Ljava/lang/Object;

    instance-of v2, p1, Lr/v;

    if-nez v2, :cond_e

    instance-of v2, p1, Lr/s;

    if-nez v2, :cond_e

    instance-of v2, p1, Lr/t;

    const/4 v5, 0x0

    if-eqz v2, :cond_a

    check-cast p1, Lr/t;

    goto :goto_a

    :cond_a
    move-object p1, v5

    :goto_a
    if-eqz p1, :cond_b

    invoke-interface {v4, p1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iget-object p1, p0, Lr/n0;->q:Lr/o0;

    iget-object p1, p1, Lr/o0;->F:Lw9/e;

    if-eqz p1, :cond_d

    iput-object v4, p0, Lr/n0;->p:Ljava/lang/Object;

    iput-object v0, p0, Lr/n0;->m:Lj9/y;

    iput v3, p0, Lr/n0;->o:I

    invoke-virtual {p1, p0}, Lw9/e;->h(Ly8/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_c

    goto :goto_d

    :cond_c
    move-object v2, v0

    :goto_b
    move-object v5, p1

    check-cast v5, Lr/w;

    goto :goto_c

    :cond_d
    move-object v2, v0

    :goto_c
    iput-object v5, v2, Lj9/y;->m:Ljava/lang/Object;

    goto :goto_9

    :cond_e
    sget-object v1, Lt8/z;->a:Lt8/z;

    :goto_d
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
