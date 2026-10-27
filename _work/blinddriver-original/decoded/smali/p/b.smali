.class public final Lp/b;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public m:I

.field public synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V
    .locals 0

    .line 1
    iput p4, p0, Lp/b;->l:I

    iput-object p1, p0, Lp/b;->n:Ljava/lang/Object;

    iput-object p2, p0, Lp/b;->o:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ly8/c;I)V
    .locals 0

    .line 2
    iput p3, p0, Lp/b;->l:I

    iput-object p1, p0, Lp/b;->o:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 2

    iget v0, p0, Lp/b;->l:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Lp/b;

    iget-object v0, p0, Lp/b;->n:Ljava/lang/Object;

    check-cast v0, Lua/nav/geo/c;

    iget-object p0, p0, Lp/b;->o:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const/16 v1, 0x11

    invoke-direct {p1, v0, p0, p2, v1}, Lp/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_0
    new-instance v0, Lp/b;

    iget-object p0, p0, Lp/b;->o:Ljava/lang/Object;

    check-cast p0, Lx9/h;

    const/16 v1, 0x10

    invoke-direct {v0, p0, p2, v1}, Lp/b;-><init>(Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, v0, Lp/b;->n:Ljava/lang/Object;

    return-object v0

    :pswitch_1
    new-instance v0, Lp/b;

    iget-object p0, p0, Lp/b;->o:Ljava/lang/Object;

    check-cast p0, Ly9/f;

    const/16 v1, 0xf

    invoke-direct {v0, p0, p2, v1}, Lp/b;-><init>(Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, v0, Lp/b;->n:Ljava/lang/Object;

    return-object v0

    :pswitch_2
    new-instance v0, Lp/b;

    iget-object p0, p0, Lp/b;->o:Ljava/lang/Object;

    check-cast p0, Ly9/e;

    const/16 v1, 0xe

    invoke-direct {v0, p0, p2, v1}, Lp/b;-><init>(Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, v0, Lp/b;->n:Ljava/lang/Object;

    return-object v0

    :pswitch_3
    new-instance p1, Lp/b;

    iget-object v0, p0, Lp/b;->n:Ljava/lang/Object;

    check-cast v0, Ly/g;

    iget-object p0, p0, Lp/b;->o:Ljava/lang/Object;

    check-cast p0, Lb0/c3;

    const/16 v1, 0xd

    invoke-direct {p1, v0, p0, p2, v1}, Lp/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_4
    new-instance p1, Lp/b;

    iget-object v0, p0, Lp/b;->n:Ljava/lang/Object;

    check-cast v0, Ldadb/Dadb;

    iget-object p0, p0, Lp/b;->o:Ljava/lang/Object;

    check-cast p0, Lvc/f;

    const/16 v1, 0xc

    invoke-direct {p1, v0, p0, p2, v1}, Lp/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_5
    new-instance p1, Lp/b;

    iget-object v0, p0, Lp/b;->n:Ljava/lang/Object;

    check-cast v0, Lgd/d;

    iget-object p0, p0, Lp/b;->o:Ljava/lang/Object;

    check-cast p0, Luc/f;

    const/16 v1, 0xb

    invoke-direct {p1, v0, p0, p2, v1}, Lp/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_6
    new-instance p1, Lp/b;

    iget-object v0, p0, Lp/b;->n:Ljava/lang/Object;

    check-cast v0, Lsc/e;

    iget-object p0, p0, Lp/b;->o:Ljava/lang/Object;

    check-cast p0, Lua/nav/routing/Favorite;

    const/16 v1, 0xa

    invoke-direct {p1, v0, p0, p2, v1}, Lp/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_7
    new-instance p1, Lp/b;

    iget-object v0, p0, Lp/b;->n:Ljava/lang/Object;

    check-cast v0, Lua/nav/routing/SavedRoute;

    iget-object p0, p0, Lp/b;->o:Ljava/lang/Object;

    check-cast p0, Lua/nav/c;

    const/16 v1, 0x9

    invoke-direct {p1, v0, p0, p2, v1}, Lp/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_8
    new-instance p1, Lp/b;

    iget-object v0, p0, Lp/b;->n:Ljava/lang/Object;

    check-cast v0, Lua/nav/routing/GeoPoint;

    iget-object p0, p0, Lp/b;->o:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const/16 v1, 0x8

    invoke-direct {p1, v0, p0, p2, v1}, Lp/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_9
    new-instance p1, Lp/b;

    iget-object v0, p0, Lp/b;->n:Ljava/lang/Object;

    check-cast v0, Ls/i;

    iget-object p0, p0, Lp/b;->o:Ljava/lang/Object;

    check-cast p0, Lr0/u0;

    const/4 v1, 0x7

    invoke-direct {p1, v0, p0, p2, v1}, Lp/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_a
    new-instance p1, Lp/b;

    iget-object v0, p0, Lp/b;->n:Ljava/lang/Object;

    check-cast v0, Lu9/v0;

    iget-object p0, p0, Lp/b;->o:Ljava/lang/Object;

    check-cast p0, Lr/p1;

    const/4 v1, 0x6

    invoke-direct {p1, v0, p0, p2, v1}, Lp/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_b
    new-instance p1, Lp/b;

    iget-object v0, p0, Lp/b;->n:Ljava/lang/Object;

    check-cast v0, Lr/v;

    iget-object p0, p0, Lp/b;->o:Ljava/lang/Object;

    check-cast p0, Lr/g2;

    const/4 v1, 0x5

    invoke-direct {p1, v0, p0, p2, v1}, Lp/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_c
    new-instance p1, Lp/b;

    iget-object v0, p0, Lp/b;->n:Ljava/lang/Object;

    check-cast v0, Lr/n2;

    iget-object p0, p0, Lp/b;->o:Ljava/lang/Object;

    check-cast p0, Li9/e;

    const/4 v1, 0x4

    invoke-direct {p1, v0, p0, p2, v1}, Lp/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_d
    new-instance v0, Lp/b;

    iget-object p0, p0, Lp/b;->o:Ljava/lang/Object;

    check-cast p0, Lgc/f;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p2, v1}, Lp/b;-><init>(Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, v0, Lp/b;->n:Ljava/lang/Object;

    return-object v0

    :pswitch_e
    new-instance v0, Lp/b;

    iget-object p0, p0, Lp/b;->o:Ljava/lang/Object;

    check-cast p0, Lw9/i;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p2, v1}, Lp/b;-><init>(Ljava/lang/Object;Ly8/c;I)V

    iput-object p1, v0, Lp/b;->n:Ljava/lang/Object;

    return-object v0

    :pswitch_f
    new-instance p1, Lp/b;

    iget-object v0, p0, Lp/b;->n:Ljava/lang/Object;

    check-cast v0, Lu9/v0;

    iget-object p0, p0, Lp/b;->o:Ljava/lang/Object;

    check-cast p0, Lp/m1;

    const/4 v1, 0x1

    invoke-direct {p1, v0, p0, p2, v1}, Lp/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    :pswitch_10
    new-instance p1, Lp/b;

    iget-object v0, p0, Lp/b;->n:Ljava/lang/Object;

    check-cast v0, Ls/i;

    iget-object p0, p0, Lp/b;->o:Ljava/lang/Object;

    check-cast p0, Ls/g;

    const/4 v1, 0x0

    invoke-direct {p1, v0, p0, p2, v1}, Lp/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

    iget v0, p0, Lp/b;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lp/b;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lp/b;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lp/b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lp/b;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lp/b;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lp/b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lx9/h;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lp/b;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lp/b;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lp/b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lw9/r;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lp/b;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lp/b;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lp/b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lp/b;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lp/b;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lp/b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lp/b;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lp/b;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lp/b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lp/b;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lp/b;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lp/b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lp/b;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lp/b;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lp/b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lp/b;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lp/b;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lp/b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lp/b;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lp/b;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lp/b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lp/b;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lp/b;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lp/b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_a
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lp/b;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lp/b;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lp/b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lp/b;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lp/b;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lp/b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lp/b;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lp/b;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lp/b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lp/b;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lp/b;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lp/b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_e
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lp/b;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lp/b;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lp/b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_f
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lp/b;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lp/b;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lp/b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_10
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lp/b;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lp/b;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lp/b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
    .locals 20

    move-object/from16 v6, p0

    iget v0, v6, Lp/b;->l:I

    const-string v1, "unlimited_saved"

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    const-string v4, "call to \'resume\' before \'invoke\' with coroutine"

    const/4 v9, 0x1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v6, Lp/b;->m:I

    if-eqz v1, :cond_1

    if-ne v1, v9, :cond_0

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v6, Lp/b;->n:Ljava/lang/Object;

    check-cast v1, Lua/nav/geo/c;

    iget-object v2, v6, Lp/b;->o:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iput v9, v6, Lp/b;->m:I

    invoke-virtual {v1, v2, v6}, Lua/nav/geo/c;->f(Ljava/lang/String;La9/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_1
    return-object v0

    :pswitch_0
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v6, Lp/b;->m:I

    if-eqz v1, :cond_4

    if-ne v1, v9, :cond_3

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v6, Lp/b;->n:Ljava/lang/Object;

    iget-object v2, v6, Lp/b;->o:Ljava/lang/Object;

    check-cast v2, Lx9/h;

    iput v9, v6, Lp/b;->m:I

    invoke-interface {v2, v1, v6}, Lx9/h;->d(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_3
    return-object v0

    :pswitch_1
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v6, Lp/b;->m:I

    if-eqz v1, :cond_7

    if-ne v1, v9, :cond_6

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v6, Lp/b;->n:Ljava/lang/Object;

    check-cast v1, Lx9/h;

    iget-object v2, v6, Lp/b;->o:Ljava/lang/Object;

    check-cast v2, Ly9/f;

    iput v9, v6, Lp/b;->m:I

    invoke-virtual {v2, v1, v6}, Ly9/f;->f(Lx9/h;Ly8/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_8

    goto :goto_5

    :cond_8
    :goto_4
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_5
    return-object v0

    :pswitch_2
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v6, Lp/b;->m:I

    if-eqz v1, :cond_a

    if-ne v1, v9, :cond_9

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_6

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v6, Lp/b;->n:Ljava/lang/Object;

    check-cast v1, Lw9/r;

    iget-object v2, v6, Lp/b;->o:Ljava/lang/Object;

    check-cast v2, Ly9/e;

    iput v9, v6, Lp/b;->m:I

    invoke-virtual {v2, v1, v6}, Ly9/e;->c(Lw9/r;Ly8/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_b

    goto :goto_7

    :cond_b
    :goto_6
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_7
    return-object v0

    :pswitch_3
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v6, Lp/b;->m:I

    if-eqz v1, :cond_d

    if-ne v1, v9, :cond_c

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_8

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v6, Lp/b;->n:Ljava/lang/Object;

    check-cast v1, Ly/g;

    iget-object v2, v6, Lp/b;->o:Ljava/lang/Object;

    check-cast v2, Lb0/c3;

    iput v9, v6, Lp/b;->m:I

    invoke-static {v1, v2, v6}, Lr5/h1;->b(Le2/j;Li9/a;La9/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_e

    goto :goto_9

    :cond_e
    :goto_8
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_9
    return-object v0

    :pswitch_4
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v6, Lp/b;->m:I

    if-eqz v1, :cond_10

    if-ne v1, v9, :cond_f

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    goto :goto_a

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object v1, Lu9/e0;->a:Lba/e;

    sget-object v1, Lba/d;->n:Lba/d;

    iget-object v2, v6, Lp/b;->n:Ljava/lang/Object;

    check-cast v2, Ldadb/Dadb;

    iget-object v3, v6, Lp/b;->o:Ljava/lang/Object;

    check-cast v3, Lvc/f;

    new-instance v4, Lr0/w0;

    const/4 v5, 0x6

    invoke-direct {v4, v5, v2, v3}, Lr0/w0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput v9, v6, Lp/b;->m:I

    new-instance v2, Lad/t0;

    const/16 v3, 0xc

    invoke-direct {v2, v4, v8, v3}, Lad/t0;-><init>(Ljava/lang/Object;Ly8/c;I)V

    invoke-static {v1, v2, v6}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_11

    goto :goto_a

    :cond_11
    move-object v0, v1

    :goto_a
    return-object v0

    :pswitch_5
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v6, Lp/b;->m:I

    if-eqz v1, :cond_13

    if-ne v1, v9, :cond_12

    :try_start_0
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v1, p1

    goto :goto_b

    :catchall_0
    move-exception v0

    goto :goto_d

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    :try_start_1
    iget-object v1, v6, Lp/b;->n:Ljava/lang/Object;

    check-cast v1, Lgd/d;

    iput v9, v6, Lp/b;->m:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lu9/e0;->a:Lba/e;

    sget-object v2, Lba/d;->n:Lba/d;

    new-instance v4, Lua/nav/net/a;

    invoke-direct {v4, v1, v8}, Lua/nav/net/a;-><init>(Lgd/d;Ly8/c;)V

    invoke-static {v2, v4, v6}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_14

    goto :goto_c

    :cond_14
    :goto_b
    check-cast v1, Lua/nav/net/EntitlementDto;

    if-eqz v1, :cond_15

    iget-object v0, v6, Lp/b;->o:Ljava/lang/Object;

    check-cast v0, Luc/f;

    invoke-static {v0, v1}, Luc/f;->a(Luc/f;Lua/nav/net/EntitlementDto;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_15
    iget-object v0, v6, Lp/b;->o:Ljava/lang/Object;

    check-cast v0, Luc/f;

    iput-boolean v3, v0, Luc/f;->d:Z

    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_c
    return-object v0

    :goto_d
    iget-object v1, v6, Lp/b;->o:Ljava/lang/Object;

    check-cast v1, Luc/f;

    iput-boolean v3, v1, Luc/f;->d:Z

    throw v0

    :pswitch_6
    iget-object v0, v6, Lp/b;->o:Ljava/lang/Object;

    check-cast v0, Lua/nav/routing/Favorite;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v6, Lp/b;->m:I

    if-eqz v2, :cond_18

    if-eq v2, v9, :cond_17

    if-ne v2, v7, :cond_16

    goto :goto_e

    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    :goto_e
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_f

    :cond_18
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v2, v6, Lp/b;->n:Ljava/lang/Object;

    check-cast v2, Lsc/e;

    sget-object v3, Lsc/e;->l:Lsc/e;

    if-ne v2, v3, :cond_19

    sget-object v2, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->p()Lid/c1;

    move-result-object v2

    iput v9, v6, Lp/b;->m:I

    invoke-virtual {v2, v0, v6}, Lid/c1;->j(Lua/nav/routing/Favorite;La9/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_1a

    goto :goto_10

    :cond_19
    sget-object v2, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->p()Lid/c1;

    move-result-object v2

    iput v7, v6, Lp/b;->m:I

    invoke-virtual {v2, v0, v6}, Lid/c1;->k(Lua/nav/routing/Favorite;La9/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_1a

    goto :goto_10

    :cond_1a
    :goto_f
    sget-object v1, Lt8/z;->a:Lt8/z;

    :goto_10
    return-object v1

    :pswitch_7
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v3, v6, Lp/b;->m:I

    if-eqz v3, :cond_1c

    if-ne v3, v9, :cond_1b

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_12

    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object v3, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->p()Lid/c1;

    move-result-object v3

    iget-object v4, v6, Lp/b;->n:Ljava/lang/Object;

    check-cast v4, Lua/nav/routing/SavedRoute;

    invoke-static {}, Lsc/i0;->h()Luc/f;

    move-result-object v5

    iget-object v5, v5, Luc/f;->h:Lx9/l0;

    invoke-virtual {v5}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Luc/c;

    invoke-virtual {v5, v1}, Luc/c;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_11

    :cond_1d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_11
    iput v9, v6, Lp/b;->m:I

    invoke-virtual {v3, v4, v8, v6}, Lid/c1;->a(Lua/nav/routing/SavedRoute;Ljava/lang/Integer;La9/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_1e

    goto :goto_13

    :cond_1e
    :goto_12
    iget-object v0, v6, Lp/b;->o:Ljava/lang/Object;

    check-cast v0, Lua/nav/c;

    iget-object v0, v0, Lua/nav/c;->q:Lx9/l0;

    :cond_1f
    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lsc/q0;

    const-string v18, "\u041c\u0430\u0440\u0448\u0440\u0443\u0442 \u0437\u0431\u0435\u0440\u0435\u0436\u0435\u043d\u043e"

    const/16 v19, 0x7fff

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v2 .. v19}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_13
    return-object v0

    :pswitch_8
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v3, v6, Lp/b;->m:I

    if-eqz v3, :cond_21

    if-ne v3, v9, :cond_20

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_16

    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object v3, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->p()Lid/c1;

    move-result-object v3

    iget-object v4, v6, Lp/b;->n:Ljava/lang/Object;

    check-cast v4, Lua/nav/routing/GeoPoint;

    iget-object v5, v6, Lp/b;->o:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {}, Lsc/i0;->h()Luc/f;

    move-result-object v7

    iget-object v7, v7, Luc/f;->h:Lx9/l0;

    invoke-virtual {v7}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Luc/c;

    invoke-virtual {v7, v1}, Luc/c;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_14

    :cond_22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_14
    if-eqz v8, :cond_23

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_15

    :cond_23
    const/16 v1, 0x14

    :goto_15
    iput v9, v6, Lp/b;->m:I

    invoke-virtual {v3, v1, v6, v5, v4}, Lid/c1;->l(ILa9/c;Ljava/lang/String;Lua/nav/routing/GeoPoint;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_24

    goto :goto_17

    :cond_24
    :goto_16
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_17
    return-object v0

    :pswitch_9
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v6, Lp/b;->m:I

    if-eqz v1, :cond_26

    if-ne v1, v9, :cond_25

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    goto :goto_18

    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v6, Lp/b;->n:Ljava/lang/Object;

    check-cast v3, Ls/i;

    iget-object v3, v3, Ls/i;->a:Lx9/b0;

    new-instance v4, Lb0/s1;

    iget-object v5, v6, Lp/b;->o:Ljava/lang/Object;

    check-cast v5, Lr0/u0;

    invoke-direct {v4, v2, v1, v5}, Lb0/s1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput v9, v6, Lp/b;->m:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4, v6}, Lx9/b0;->k(Lx9/b0;Lx9/h;Ly8/c;)V

    :goto_18
    return-object v0

    :pswitch_a
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v6, Lp/b;->m:I

    if-eqz v1, :cond_29

    if-eq v1, v9, :cond_28

    if-ne v1, v7, :cond_27

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1a

    :cond_27
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_19

    :cond_29
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v6, Lp/b;->n:Ljava/lang/Object;

    check-cast v1, Lu9/v0;

    iput v9, v6, Lp/b;->m:I

    invoke-interface {v1, v6}, Lu9/v0;->e(La9/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2a

    goto :goto_1b

    :cond_2a
    :goto_19
    iget-object v1, v6, Lp/b;->o:Ljava/lang/Object;

    check-cast v1, Lr/p1;

    iput v7, v6, Lp/b;->m:I

    invoke-virtual {v1, v6}, Lr/p1;->e(La9/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2b

    goto :goto_1b

    :cond_2b
    :goto_1a
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_1b
    return-object v0

    :pswitch_b
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v6, Lp/b;->m:I

    if-eqz v1, :cond_2d

    if-ne v1, v9, :cond_2c

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1d

    :cond_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v6, Lp/b;->n:Ljava/lang/Object;

    check-cast v1, Lr/v;

    iget-boolean v2, v1, Lr/v;->b:Z

    if-eqz v2, :cond_2e

    const/high16 v2, -0x40800000    # -1.0f

    goto :goto_1c

    :cond_2e
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1c
    iget-object v4, v6, Lp/b;->o:Ljava/lang/Object;

    check-cast v4, Lr/g2;

    iget-object v4, v4, Lr/g2;->Y:Lr/n2;

    iget-wide v7, v1, Lr/v;->a:J

    invoke-static {v2, v7, v8}, Lb3/q;->f(FJ)J

    move-result-wide v1

    iput v9, v6, Lp/b;->m:I

    invoke-virtual {v4, v1, v2, v3, v6}, Lr/n2;->b(JZLa9/i;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2f

    goto :goto_1e

    :cond_2f
    :goto_1d
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_1e
    return-object v0

    :pswitch_c
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v6, Lp/b;->m:I

    if-eqz v1, :cond_31

    if-ne v1, v9, :cond_30

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1f

    :cond_30
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v6, Lp/b;->n:Ljava/lang/Object;

    check-cast v1, Lr/n2;

    sget-object v2, Lp/n1;->m:Lp/n1;

    iget-object v3, v6, Lp/b;->o:Ljava/lang/Object;

    check-cast v3, Li9/e;

    iput v9, v6, Lp/b;->m:I

    invoke-virtual {v1, v2, v3, v6}, Lr/n2;->f(Lp/n1;Li9/e;La9/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_32

    goto :goto_20

    :cond_32
    :goto_1f
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_20
    return-object v0

    :pswitch_d
    iget-object v0, v6, Lp/b;->o:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lgc/f;

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v2, v6, Lp/b;->m:I

    if-eqz v2, :cond_36

    if-eq v2, v9, :cond_34

    if-ne v2, v7, :cond_33

    iget-object v2, v6, Lp/b;->n:Ljava/lang/Object;

    check-cast v2, Lu9/t;

    :try_start_2
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_21

    :catchall_1
    move-exception v0

    goto :goto_24

    :cond_33
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    iget-object v2, v6, Lp/b;->n:Ljava/lang/Object;

    check-cast v2, Lu9/t;

    :try_start_3
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v3, p1

    :cond_35
    move-object v10, v2

    goto :goto_22

    :cond_36
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v2, v6, Lp/b;->n:Ljava/lang/Object;

    check-cast v2, Lu9/t;

    :goto_21
    :try_start_4
    invoke-interface {v2}, Lu9/t;->C()Ly8/h;

    move-result-object v3

    invoke-static {v3}, Lu9/v;->s(Ly8/h;)Z

    move-result v3

    if-eqz v3, :cond_38

    iget-object v3, v1, Lgc/f;->f:Ljava/lang/Object;

    check-cast v3, Lw9/e;

    iput-object v2, v6, Lp/b;->n:Ljava/lang/Object;

    iput v9, v6, Lp/b;->m:I

    invoke-virtual {v3, v6}, Lw9/e;->h(Ly8/c;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_35

    goto :goto_23

    :goto_22
    check-cast v3, Lr/g1;

    iget-object v2, v1, Lgc/f;->e:Ljava/lang/Object;

    check-cast v2, Lb3/c;

    sget v4, Lr/f1;->a:F

    invoke-interface {v2, v4}, Lb3/c;->V(F)F

    move-result v4

    iget-object v2, v1, Lgc/f;->e:Ljava/lang/Object;

    check-cast v2, Lb3/c;

    sget v5, Lr/f1;->b:F

    invoke-interface {v2, v5}, Lb3/c;->V(F)F

    move-result v5

    iget-object v2, v1, Lgc/f;->b:Ljava/lang/Object;

    check-cast v2, Lr/n2;

    iput-object v10, v6, Lp/b;->n:Ljava/lang/Object;

    iput v7, v6, Lp/b;->m:I

    invoke-static/range {v1 .. v6}, Lgc/f;->a(Lgc/f;Lr/n2;Lr/g1;FFLa9/c;)Ljava/lang/Object;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-ne v2, v0, :cond_37

    goto :goto_23

    :cond_37
    move-object v2, v10

    goto :goto_21

    :cond_38
    iput-object v8, v1, Lgc/f;->g:Ljava/lang/Object;

    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_23
    return-object v0

    :goto_24
    iput-object v8, v1, Lgc/f;->g:Ljava/lang/Object;

    throw v0

    :pswitch_e
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v6, Lp/b;->m:I

    if-eqz v1, :cond_3a

    if-ne v1, v9, :cond_39

    iget-object v0, v6, Lp/b;->n:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lu9/v0;

    :try_start_5
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v2, p1

    goto :goto_25

    :catchall_2
    move-exception v0

    goto :goto_27

    :cond_39
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v6, Lp/b;->n:Ljava/lang/Object;

    check-cast v1, Lu9/t;

    new-instance v2, Lr/h1;

    invoke-direct {v2, v7, v8, v3}, Lr/h1;-><init>(ILy8/c;I)V

    const/4 v3, 0x3

    invoke-static {v1, v8, v8, v2, v3}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    move-result-object v1

    :try_start_6
    iget-object v2, v6, Lp/b;->o:Ljava/lang/Object;

    check-cast v2, Lw9/i;

    iput-object v1, v6, Lp/b;->n:Ljava/lang/Object;

    iput v9, v6, Lp/b;->m:I

    invoke-interface {v2, v6}, Lw9/t;->h(Ly8/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_3b

    goto :goto_26

    :cond_3b
    :goto_25
    move-object v0, v2

    check-cast v0, Lr/g1;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-interface {v1, v8}, Lu9/v0;->c(Ljava/util/concurrent/CancellationException;)V

    :goto_26
    return-object v0

    :goto_27
    invoke-interface {v1, v8}, Lu9/v0;->c(Ljava/util/concurrent/CancellationException;)V

    throw v0

    :pswitch_f
    sget-object v0, Lt8/z;->a:Lt8/z;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v6, Lp/b;->m:I

    if-eqz v2, :cond_3e

    if-eq v2, v9, :cond_3d

    if-ne v2, v7, :cond_3c

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_2b

    :cond_3c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_28

    :cond_3e
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v2, v6, Lp/b;->n:Ljava/lang/Object;

    check-cast v2, Lu9/v0;

    if-eqz v2, :cond_3f

    iput v9, v6, Lp/b;->m:I

    invoke-interface {v2, v6}, Lu9/v0;->e(La9/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3f

    goto :goto_2a

    :cond_3f
    :goto_28
    iget-object v2, v6, Lp/b;->o:Ljava/lang/Object;

    check-cast v2, Lp/m1;

    iput v7, v6, Lp/b;->m:I

    sget-object v3, Lp/m0;->l:Lp/m0;

    new-instance v4, Lad/w;

    const/16 v5, 0x11

    invoke-direct {v4, v2, v8, v5}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    invoke-static {v3, v4, v6}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_40

    goto :goto_29

    :cond_40
    move-object v2, v0

    :goto_29
    if-ne v2, v1, :cond_41

    :goto_2a
    move-object v0, v1

    :cond_41
    :goto_2b
    return-object v0

    :pswitch_10
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, v6, Lp/b;->m:I

    if-eqz v1, :cond_43

    if-ne v1, v9, :cond_42

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_2c

    :cond_42
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_43
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, v6, Lp/b;->n:Ljava/lang/Object;

    check-cast v1, Ls/i;

    iget-object v2, v6, Lp/b;->o:Ljava/lang/Object;

    check-cast v2, Ls/g;

    iput v9, v6, Lp/b;->m:I

    invoke-virtual {v1, v2, v6}, Ls/i;->a(Ls/h;Ly8/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_44

    goto :goto_2d

    :cond_44
    :goto_2c
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_2d
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
