.class public final Lsc/s;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public m:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 1

    .line 1
    iput p1, p0, Lsc/s;->l:I

    const/4 p1, 0x2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public synthetic constructor <init>(ILy8/c;I)V
    .locals 0

    .line 2
    iput p3, p0, Lsc/s;->l:I

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 2

    iget p0, p0, Lsc/s;->l:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lsc/s;

    const/4 v0, 0x2

    const/16 v1, 0x8

    invoke-direct {p0, v0, p2, v1}, Lsc/s;-><init>(ILy8/c;I)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, Lsc/s;->m:I

    return-object p0

    :pswitch_0
    new-instance p0, Lsc/s;

    const/4 p1, 0x2

    const/4 v0, 0x7

    invoke-direct {p0, p1, p2, v0}, Lsc/s;-><init>(ILy8/c;I)V

    return-object p0

    :pswitch_1
    new-instance p0, Lsc/s;

    const/4 p1, 0x2

    const/4 v0, 0x6

    invoke-direct {p0, p1, p2, v0}, Lsc/s;-><init>(ILy8/c;I)V

    return-object p0

    :pswitch_2
    new-instance p0, Lsc/s;

    const/4 p1, 0x2

    const/4 v0, 0x5

    invoke-direct {p0, p1, p2, v0}, Lsc/s;-><init>(ILy8/c;I)V

    return-object p0

    :pswitch_3
    new-instance p0, Lsc/s;

    const/4 p1, 0x2

    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lsc/s;-><init>(ILy8/c;I)V

    return-object p0

    :pswitch_4
    new-instance p0, Lsc/s;

    const/4 p1, 0x2

    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Lsc/s;-><init>(ILy8/c;I)V

    return-object p0

    :pswitch_5
    new-instance p0, Lsc/s;

    const/4 p1, 0x2

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lsc/s;-><init>(ILy8/c;I)V

    return-object p0

    :pswitch_6
    new-instance p0, Lsc/s;

    const/4 p1, 0x2

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lsc/s;-><init>(ILy8/c;I)V

    return-object p0

    :pswitch_7
    new-instance p0, Lsc/s;

    const/4 p1, 0x2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lsc/s;-><init>(ILy8/c;I)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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

    iget v0, p0, Lsc/s;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ly8/c;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lsc/s;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lsc/s;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lsc/s;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lsc/s;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lsc/s;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lsc/s;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lz8/a;->l:Lz8/a;

    return-object p0

    :pswitch_1
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lsc/s;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lsc/s;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lsc/s;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lsc/s;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lsc/s;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lsc/s;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lz8/a;->l:Lz8/a;

    return-object p0

    :pswitch_3
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lsc/s;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lsc/s;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lsc/s;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lz8/a;->l:Lz8/a;

    return-object p0

    :pswitch_4
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lsc/s;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lsc/s;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lsc/s;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lsc/s;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lsc/s;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lsc/s;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lz8/a;->l:Lz8/a;

    return-object p0

    :pswitch_6
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lsc/s;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lsc/s;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lsc/s;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lsc/s;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lsc/s;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lsc/s;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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
    .locals 12

    iget v0, p0, Lsc/s;->l:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    sget-object v5, Lt8/z;->a:Lt8/z;

    const-string v6, "call to \'resume\' before \'invoke\' with coroutine"

    const/4 v7, 0x1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget p0, p0, Lsc/s;->m:I

    if-lez p0, :cond_0

    move v4, v7

    :cond_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lsc/s;->m:I

    if-eqz v1, :cond_2

    if-eq v1, v7, :cond_1

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_2
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object p1, Lsc/i0;->R:Lx9/l0;

    sget-object v1, Lsc/u;->q:Lsc/u;

    iput v7, p0, Lsc/s;->m:I

    invoke-virtual {p1, v1, p0}, Lx9/l0;->a(Lx9/h;Ly8/c;)Ljava/lang/Object;

    return-object v0

    :pswitch_1
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v8, p0, Lsc/s;->m:I

    if-eqz v8, :cond_4

    if-ne v8, v7, :cond_3

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object p1, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->l()Lad/j0;

    move-result-object p1

    iget-object p1, p1, Lad/j0;->k:Lx9/l0;

    new-instance v6, Lod/s2;

    const/4 v8, 0x4

    invoke-direct {v6, p1, v8}, Lod/s2;-><init>(Lx9/l0;I)V

    invoke-static {v6}, Lx9/c0;->h(Lx9/g;)Lx9/g;

    move-result-object p1

    invoke-static {}, Lsc/i0;->s()Lkd/j;

    move-result-object v6

    iget-object v6, v6, Lkd/j;->j:Lx9/l0;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v9}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object v9

    new-instance v10, Lkd/y;

    const/4 v11, 0x5

    invoke-direct {v10, v11, v1, v7}, Lkd/y;-><init>(ILy8/c;I)V

    new-array v8, v8, [Lx9/g;

    aput-object p1, v8, v4

    sget-object p1, Lsc/i0;->R:Lx9/l0;

    aput-object p1, v8, v7

    aput-object v6, v8, v3

    aput-object v9, v8, v2

    new-instance p1, Lx9/m;

    invoke-direct {p1, v8, v10}, Lx9/m;-><init>([Lx9/g;Li9/h;)V

    invoke-static {p1}, Lx9/c0;->h(Lx9/g;)Lx9/g;

    move-result-object p1

    new-instance v2, Lsc/r;

    invoke-direct {v2, v3, v1, v7}, Lsc/r;-><init>(ILy8/c;I)V

    iput v7, p0, Lsc/s;->m:I

    invoke-static {p1, v2, p0}, Lx9/c0;->f(Lx9/g;Li9/e;La9/i;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    move-object v5, v0

    :cond_5
    :goto_0
    return-object v5

    :pswitch_2
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lsc/s;->m:I

    if-eqz v1, :cond_7

    if-eq v1, v7, :cond_6

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_7
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object p1, Lsc/i0;->R:Lx9/l0;

    sget-object v1, Lsc/u;->p:Lsc/u;

    iput v7, p0, Lsc/s;->m:I

    invoke-virtual {p1, v1, p0}, Lx9/l0;->a(Lx9/h;Ly8/c;)Ljava/lang/Object;

    return-object v0

    :pswitch_3
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lsc/s;->m:I

    if-eqz v1, :cond_9

    if-eq v1, v7, :cond_8

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_9
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object p1, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->h()Luc/f;

    move-result-object p1

    iget-object p1, p1, Luc/f;->h:Lx9/l0;

    sget-object v1, Lsc/u;->o:Lsc/u;

    iput v7, p0, Lsc/s;->m:I

    invoke-virtual {p1, v1, p0}, Lx9/l0;->a(Lx9/h;Ly8/c;)Ljava/lang/Object;

    return-object v0

    :pswitch_4
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lsc/s;->m:I

    if-eqz v1, :cond_b

    if-ne v1, v7, :cond_a

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object p1, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->r()Lua/nav/a;

    move-result-object p1

    iget-object p1, p1, Lua/nav/a;->y:Lx9/l0;

    new-instance v1, Lod/s2;

    invoke-direct {v1, p1, v2}, Lod/s2;-><init>(Lx9/l0;I)V

    invoke-static {v1}, Lx9/c0;->h(Lx9/g;)Lx9/g;

    move-result-object p1

    sget-object v1, Lsc/u;->n:Lsc/u;

    iput v7, p0, Lsc/s;->m:I

    invoke-interface {p1, v1, p0}, Lx9/g;->a(Lx9/h;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_c

    move-object v5, v0

    :cond_c
    :goto_1
    return-object v5

    :pswitch_5
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lsc/s;->m:I

    if-eqz v1, :cond_e

    if-eq v1, v7, :cond_d

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_e
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object p1, Lsc/i0;->R:Lx9/l0;

    sget-object v1, Lsc/u;->m:Lsc/u;

    iput v7, p0, Lsc/s;->m:I

    invoke-virtual {p1, v1, p0}, Lx9/l0;->a(Lx9/h;Ly8/c;)Ljava/lang/Object;

    return-object v0

    :pswitch_6
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lsc/s;->m:I

    if-eqz v1, :cond_10

    if-ne v1, v7, :cond_f

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    check-cast p1, Lt8/m;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object p1, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->p()Lid/c1;

    move-result-object p1

    iput v7, p0, Lsc/s;->m:I

    invoke-virtual {p1, p0}, Lid/c1;->b(La9/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_11

    move-object v5, v0

    :cond_11
    :goto_2
    return-object v5

    :pswitch_7
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v8, p0, Lsc/s;->m:I

    if-eqz v8, :cond_13

    if-ne v8, v7, :cond_12

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_3

    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object p1, Lsc/i0;->a:Lsc/i0;

    sget-object p1, Lsc/i0;->R:Lx9/l0;

    invoke-static {}, Lsc/i0;->f()Lua/nav/support/a;

    move-result-object v6

    iget-object v6, v6, Lua/nav/support/a;->k:Lx9/l0;

    new-instance v8, Lsc/q;

    invoke-direct {v8, v2, v1}, La9/i;-><init>(ILy8/c;)V

    new-instance v2, Lx9/u;

    invoke-direct {v2, p1, v6, v8}, Lx9/u;-><init>(Lx9/g;Lx9/g;Li9/f;)V

    new-instance p1, Lsc/r;

    invoke-direct {p1, v3, v1, v4}, Lsc/r;-><init>(ILy8/c;I)V

    iput v7, p0, Lsc/s;->m:I

    invoke-static {v2, p1, p0}, Lx9/c0;->f(Lx9/g;Li9/e;La9/i;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_14

    move-object v5, v0

    :cond_14
    :goto_3
    return-object v5

    :pswitch_data_0
    .packed-switch 0x0
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
