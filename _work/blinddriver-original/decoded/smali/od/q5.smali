.class public final synthetic Lod/q5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lua/nav/a;


# direct methods
.method public synthetic constructor <init>(Lua/nav/a;I)V
    .locals 0

    iput p2, p0, Lod/q5;->l:I

    iput-object p1, p0, Lod/q5;->m:Lua/nav/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lod/q5;->l:I

    const/16 v1, 0x8

    sget-object v2, Lt8/z;->a:Lt8/z;

    const/16 v3, 0x10

    const-string v4, "$this$item"

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object p0, p0, Lod/q5;->m:Lua/nav/a;

    check-cast p1, Lw/b;

    check-cast p2, Lr0/q;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    packed-switch v0, :pswitch_data_0

    invoke-static {p1, v4}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 p1, p3, 0x11

    if-eq p1, v3, :cond_0

    move p1, v6

    goto :goto_0

    :cond_0
    move p1, v5

    :goto_0
    and-int/2addr p3, v6

    invoke-virtual {p2, p3, p1}, Lr0/q;->T(IZ)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lua/nav/a;->i:Lx9/l0;

    invoke-static {p0, p2}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object p0

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, -0xa499265

    invoke-virtual {p2, p0}, Lr0/q;->b0(I)V

    sget-object p0, Lsc/i0;->a:Lsc/i0;

    sget-object p0, Lsc/i0;->K:Lt8/o;

    invoke-virtual {p0}, Lt8/o;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lua/nav/routing/i;

    sget-object p1, Lua/nav/routing/i;->Companion:Lid/f1;

    const/16 p1, 0x38

    invoke-static {p0, v6, p2, p1, v5}, Lod/v6;->t(Lua/nav/routing/i;ZLr0/q;II)V

    :goto_1
    invoke-virtual {p2, v5}, Lr0/q;->q(Z)V

    goto :goto_2

    :cond_1
    const p0, -0x3ee7d17b

    invoke-virtual {p2, p0}, Lr0/q;->b0(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lr0/q;->W()V

    :goto_2
    return-object v2

    :pswitch_0
    invoke-static {p1, v4}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 p1, p3, 0x11

    if-eq p1, v3, :cond_3

    move v5, v6

    :cond_3
    and-int/lit8 p1, p3, 0x1

    invoke-virtual {p2, p1, v5}, Lr0/q;->T(IZ)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {p0, p2, v1}, Lod/v6;->H(Lua/nav/a;Lr0/q;I)V

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Lr0/q;->W()V

    :goto_3
    return-object v2

    :pswitch_1
    invoke-static {p1, v4}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 p1, p3, 0x11

    if-eq p1, v3, :cond_5

    move v5, v6

    :cond_5
    and-int/lit8 p1, p3, 0x1

    invoke-virtual {p2, p1, v5}, Lr0/q;->T(IZ)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {p0, p2, v1}, Lod/v6;->s(Lua/nav/a;Lr0/q;I)V

    goto :goto_4

    :cond_6
    invoke-virtual {p2}, Lr0/q;->W()V

    :goto_4
    return-object v2

    :pswitch_2
    invoke-static {p1, v4}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 p1, p3, 0x11

    if-eq p1, v3, :cond_7

    move v5, v6

    :cond_7
    and-int/lit8 p1, p3, 0x1

    invoke-virtual {p2, p1, v5}, Lr0/q;->T(IZ)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lua/nav/a;->o:Lx9/l0;

    invoke-static {p1, p2}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object p1

    new-instance p3, Lb0/l2;

    const/4 v0, 0x3

    invoke-direct {p3, v0, p0, p1}, Lb0/l2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const p0, -0x74d013ea

    invoke-static {p0, p3, p2}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object p0

    const-string p1, "\u0422\u0440\u0438\u0432\u043e\u0433\u0438"

    const/16 p3, 0x36

    invoke-static {p1, p0, p2, p3}, Lod/v6;->B(Ljava/lang/String;Lz0/d;Lr0/q;I)V

    goto :goto_5

    :cond_8
    invoke-virtual {p2}, Lr0/q;->W()V

    :goto_5
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
