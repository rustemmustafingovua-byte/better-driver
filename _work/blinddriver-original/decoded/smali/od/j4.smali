.class public final synthetic Lod/j4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Li9/a;

.field public final synthetic n:Z

.field public final synthetic o:Lua/nav/routing/RoutingPackInfo;


# direct methods
.method public synthetic constructor <init>(Li9/a;ZLua/nav/routing/RoutingPackInfo;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lod/j4;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/j4;->m:Li9/a;

    iput-boolean p2, p0, Lod/j4;->n:Z

    iput-object p3, p0, Lod/j4;->o:Lua/nav/routing/RoutingPackInfo;

    return-void
.end method

.method public synthetic constructor <init>(ZLua/nav/routing/RoutingPackInfo;Li9/a;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lod/j4;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lod/j4;->n:Z

    iput-object p2, p0, Lod/j4;->o:Lua/nav/routing/RoutingPackInfo;

    iput-object p3, p0, Lod/j4;->m:Li9/a;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget v0, p0, Lod/j4;->l:I

    packed-switch v0, :pswitch_data_0

    move-object v8, p1

    check-cast v8, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    and-int/lit8 p2, p1, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v0, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    and-int/2addr p1, v1

    invoke-virtual {v8, p1, p2}, Lr0/q;->T(IZ)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lm0/h;

    iget-boolean p2, p0, Lod/j4;->n:Z

    iget-object v0, p0, Lod/j4;->o:Lua/nav/routing/RoutingPackInfo;

    invoke-direct {p1, p2, v0}, Lm0/h;-><init>(ZLua/nav/routing/RoutingPackInfo;)V

    const p2, -0x12d1ff98

    invoke-static {p2, p1, v8}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v7

    const/high16 v9, 0x30000000

    const/16 v10, 0x1fe

    iget-object v1, p0, Lod/j4;->m:Li9/a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v10}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    goto :goto_1

    :cond_1
    invoke-virtual {v8}, Lr0/q;->W()V

    :goto_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    move-object v7, p1

    check-cast v7, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    and-int/lit8 p2, p1, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v10, 0x0

    if-eq p2, v0, :cond_2

    move p2, v1

    goto :goto_2

    :cond_2
    move p2, v10

    :goto_2
    and-int/2addr p1, v1

    invoke-virtual {v7, p1, p2}, Lr0/q;->T(IZ)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lod/j4;->n:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lod/j4;->o:Lua/nav/routing/RoutingPackInfo;

    if-eqz p1, :cond_5

    const p2, 0xd66e117

    invoke-virtual {v7, p2}, Lr0/q;->b0(I)V

    invoke-virtual {v7, p1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result p2

    iget-object p0, p0, Lod/j4;->m:Li9/a;

    invoke-virtual {v7, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr p2, v0

    invoke-virtual {v7}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-nez p2, :cond_3

    sget-object p2, Lr0/m;->a:Lr0/e;

    if-ne v0, p2, :cond_4

    :cond_3
    new-instance v0, Lb0/n;

    const/16 p2, 0x13

    invoke-direct {v0, p2, p1, p0}, Lb0/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_4
    check-cast v0, Li9/a;

    sget-object v6, Lod/m;->N:Lz0/d;

    const/high16 v8, 0x30000000

    const/16 v9, 0x1fe

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v9}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    :goto_3
    invoke-virtual {v7, v10}, Lr0/q;->q(Z)V

    goto :goto_4

    :cond_5
    const p0, -0x60892147

    invoke-virtual {v7, p0}, Lr0/q;->b0(I)V

    goto :goto_3

    :cond_6
    invoke-virtual {v7}, Lr0/q;->W()V

    :goto_4
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
