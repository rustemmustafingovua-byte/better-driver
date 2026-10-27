.class public final Lod/s2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx9/g;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lx9/g;


# direct methods
.method public synthetic constructor <init>(Lx9/l0;I)V
    .locals 0

    iput p2, p0, Lod/s2;->l:I

    iput-object p1, p0, Lod/s2;->m:Lx9/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lx9/h;Ly8/c;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lod/s2;->l:I

    packed-switch v0, :pswitch_data_0

    instance-of v0, p2, Lsc/g0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lsc/g0;

    iget v1, v0, Lsc/g0;->m:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lsc/g0;->m:I

    goto :goto_0

    :cond_0
    new-instance v0, Lsc/g0;

    invoke-direct {v0, p0, p2}, Lsc/g0;-><init>(Lod/s2;Ly8/c;)V

    :goto_0
    iget-object p2, v0, Lsc/g0;->l:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lsc/g0;->m:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    new-instance p2, Lod/r2;

    const/4 v2, 0x6

    invoke-direct {p2, p1, v2}, Lod/r2;-><init>(Lx9/h;I)V

    iput v3, v0, Lsc/g0;->m:I

    iget-object p0, p0, Lod/s2;->m:Lx9/g;

    invoke-interface {p0, p2, v0}, Lx9/g;->a(Lx9/h;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    sget-object v1, Lt8/z;->a:Lt8/z;

    :goto_2
    return-object v1

    :pswitch_0
    instance-of v0, p2, Lsc/e0;

    if-eqz v0, :cond_4

    move-object v0, p2

    check-cast v0, Lsc/e0;

    iget v1, v0, Lsc/e0;->m:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_4

    sub-int/2addr v1, v2

    iput v1, v0, Lsc/e0;->m:I

    goto :goto_3

    :cond_4
    new-instance v0, Lsc/e0;

    invoke-direct {v0, p0, p2}, Lsc/e0;-><init>(Lod/s2;Ly8/c;)V

    :goto_3
    iget-object p2, v0, Lsc/e0;->l:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lsc/e0;->m:I

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    if-ne v2, v3, :cond_5

    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_4

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    new-instance p2, Lod/r2;

    const/4 v2, 0x5

    invoke-direct {p2, p1, v2}, Lod/r2;-><init>(Lx9/h;I)V

    iput v3, v0, Lsc/e0;->m:I

    iget-object p0, p0, Lod/s2;->m:Lx9/g;

    invoke-interface {p0, p2, v0}, Lx9/g;->a(Lx9/h;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7

    goto :goto_5

    :cond_7
    :goto_4
    sget-object v1, Lt8/z;->a:Lt8/z;

    :goto_5
    return-object v1

    :pswitch_1
    instance-of v0, p2, Lsc/b0;

    if-eqz v0, :cond_8

    move-object v0, p2

    check-cast v0, Lsc/b0;

    iget v1, v0, Lsc/b0;->m:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_8

    sub-int/2addr v1, v2

    iput v1, v0, Lsc/b0;->m:I

    goto :goto_6

    :cond_8
    new-instance v0, Lsc/b0;

    invoke-direct {v0, p0, p2}, Lsc/b0;-><init>(Lod/s2;Ly8/c;)V

    :goto_6
    iget-object p2, v0, Lsc/b0;->l:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lsc/b0;->m:I

    const/4 v3, 0x1

    if-eqz v2, :cond_a

    if-ne v2, v3, :cond_9

    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_7

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    new-instance p2, Lod/r2;

    const/4 v2, 0x4

    invoke-direct {p2, p1, v2}, Lod/r2;-><init>(Lx9/h;I)V

    iput v3, v0, Lsc/b0;->m:I

    iget-object p0, p0, Lod/s2;->m:Lx9/g;

    invoke-interface {p0, p2, v0}, Lx9/g;->a(Lx9/h;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_b

    goto :goto_8

    :cond_b
    :goto_7
    sget-object v1, Lt8/z;->a:Lt8/z;

    :goto_8
    return-object v1

    :pswitch_2
    instance-of v0, p2, Lsc/v;

    if-eqz v0, :cond_c

    move-object v0, p2

    check-cast v0, Lsc/v;

    iget v1, v0, Lsc/v;->m:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_c

    sub-int/2addr v1, v2

    iput v1, v0, Lsc/v;->m:I

    goto :goto_9

    :cond_c
    new-instance v0, Lsc/v;

    invoke-direct {v0, p0, p2}, Lsc/v;-><init>(Lod/s2;Ly8/c;)V

    :goto_9
    iget-object p2, v0, Lsc/v;->l:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lsc/v;->m:I

    const/4 v3, 0x1

    if-eqz v2, :cond_e

    if-ne v2, v3, :cond_d

    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_a

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    new-instance p2, Lod/r2;

    const/4 v2, 0x3

    invoke-direct {p2, p1, v2}, Lod/r2;-><init>(Lx9/h;I)V

    iput v3, v0, Lsc/v;->m:I

    iget-object p0, p0, Lod/s2;->m:Lx9/g;

    invoke-interface {p0, p2, v0}, Lx9/g;->a(Lx9/h;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_f

    goto :goto_b

    :cond_f
    :goto_a
    sget-object v1, Lt8/z;->a:Lt8/z;

    :goto_b
    return-object v1

    :pswitch_3
    instance-of v0, p2, Lsc/m;

    if-eqz v0, :cond_10

    move-object v0, p2

    check-cast v0, Lsc/m;

    iget v1, v0, Lsc/m;->m:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_10

    sub-int/2addr v1, v2

    iput v1, v0, Lsc/m;->m:I

    goto :goto_c

    :cond_10
    new-instance v0, Lsc/m;

    invoke-direct {v0, p0, p2}, Lsc/m;-><init>(Lod/s2;Ly8/c;)V

    :goto_c
    iget-object p2, v0, Lsc/m;->l:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lsc/m;->m:I

    const/4 v3, 0x1

    if-eqz v2, :cond_12

    if-ne v2, v3, :cond_11

    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_d

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    new-instance p2, Lod/r2;

    const/4 v2, 0x2

    invoke-direct {p2, p1, v2}, Lod/r2;-><init>(Lx9/h;I)V

    iput v3, v0, Lsc/m;->m:I

    iget-object p0, p0, Lod/s2;->m:Lx9/g;

    invoke-interface {p0, p2, v0}, Lx9/g;->a(Lx9/h;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_13

    goto :goto_e

    :cond_13
    :goto_d
    sget-object v1, Lt8/z;->a:Lt8/z;

    :goto_e
    return-object v1

    :pswitch_4
    instance-of v0, p2, Lsc/k;

    if-eqz v0, :cond_14

    move-object v0, p2

    check-cast v0, Lsc/k;

    iget v1, v0, Lsc/k;->m:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_14

    sub-int/2addr v1, v2

    iput v1, v0, Lsc/k;->m:I

    goto :goto_f

    :cond_14
    new-instance v0, Lsc/k;

    invoke-direct {v0, p0, p2}, Lsc/k;-><init>(Lod/s2;Ly8/c;)V

    :goto_f
    iget-object p2, v0, Lsc/k;->l:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lsc/k;->m:I

    const/4 v3, 0x1

    if-eqz v2, :cond_16

    if-ne v2, v3, :cond_15

    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_10

    :cond_15
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    new-instance p2, Lod/r2;

    const/4 v2, 0x1

    invoke-direct {p2, p1, v2}, Lod/r2;-><init>(Lx9/h;I)V

    iput v3, v0, Lsc/k;->m:I

    iget-object p0, p0, Lod/s2;->m:Lx9/g;

    invoke-interface {p0, p2, v0}, Lx9/g;->a(Lx9/h;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_17

    goto :goto_11

    :cond_17
    :goto_10
    sget-object v1, Lt8/z;->a:Lt8/z;

    :goto_11
    return-object v1

    :pswitch_5
    instance-of v0, p2, Lod/p2;

    if-eqz v0, :cond_18

    move-object v0, p2

    check-cast v0, Lod/p2;

    iget v1, v0, Lod/p2;->m:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_18

    sub-int/2addr v1, v2

    iput v1, v0, Lod/p2;->m:I

    goto :goto_12

    :cond_18
    new-instance v0, Lod/p2;

    invoke-direct {v0, p0, p2}, Lod/p2;-><init>(Lod/s2;Ly8/c;)V

    :goto_12
    iget-object p2, v0, Lod/p2;->l:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lod/p2;->m:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1a

    if-ne v2, v3, :cond_19

    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_13

    :cond_19
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1a
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    new-instance p2, Lod/r2;

    const/4 v2, 0x0

    invoke-direct {p2, p1, v2}, Lod/r2;-><init>(Lx9/h;I)V

    iput v3, v0, Lod/p2;->m:I

    iget-object p0, p0, Lod/s2;->m:Lx9/g;

    invoke-interface {p0, p2, v0}, Lx9/g;->a(Lx9/h;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_1b

    goto :goto_14

    :cond_1b
    :goto_13
    sget-object v1, Lt8/z;->a:Lt8/z;

    :goto_14
    return-object v1

    nop

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
