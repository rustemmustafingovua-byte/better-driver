.class public final synthetic Lod/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lua/nav/support/a;


# direct methods
.method public synthetic constructor <init>(Lua/nav/support/a;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, Lod/w;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/w;->m:Lua/nav/support/a;

    return-void
.end method

.method public synthetic constructor <init>(Lua/nav/support/a;II)V
    .locals 0

    .line 2
    iput p3, p0, Lod/w;->l:I

    iput-object p1, p0, Lod/w;->m:Lua/nav/support/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lod/w;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p2, 0x9

    invoke-static {p2}, Lr0/r;->H(I)I

    move-result p2

    iget-object p0, p0, Lod/w;->m:Lua/nav/support/a;

    invoke-static {p0, p1, p2}, Lod/m;->c(Lua/nav/support/a;Lr0/q;I)V

    :goto_0
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

    if-eq p2, v0, :cond_0

    move p2, v1

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    :goto_1
    and-int/2addr p1, v1

    invoke-virtual {v7, p1, p2}, Lr0/q;->T(IZ)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lod/w;->m:Lua/nav/support/a;

    invoke-virtual {v7, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v7}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object p2

    if-nez p1, :cond_1

    sget-object p1, Lr0/m;->a:Lr0/e;

    if-ne p2, p1, :cond_2

    :cond_1
    new-instance p2, Lod/x;

    const/4 p1, 0x1

    invoke-direct {p2, p0, p1}, Lod/x;-><init>(Lua/nav/support/a;I)V

    invoke-virtual {v7, p2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2
    move-object v0, p2

    check-cast v0, Li9/a;

    sget-object v6, Lod/m;->f:Lz0/d;

    const/high16 v8, 0x30000000

    const/16 v9, 0x1fe

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v9}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    goto :goto_2

    :cond_3
    invoke-virtual {v7}, Lr0/q;->W()V

    :goto_2
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_1
    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p2, 0x9

    invoke-static {p2}, Lr0/r;->H(I)I

    move-result p2

    iget-object p0, p0, Lod/w;->m:Lua/nav/support/a;

    invoke-static {p0, p1, p2}, Lod/m;->b(Lua/nav/support/a;Lr0/q;I)V

    goto :goto_0

    :pswitch_2
    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p2, 0x9

    invoke-static {p2}, Lr0/r;->H(I)I

    move-result p2

    iget-object p0, p0, Lod/w;->m:Lua/nav/support/a;

    invoke-static {p0, p1, p2}, Lod/m;->c(Lua/nav/support/a;Lr0/q;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
