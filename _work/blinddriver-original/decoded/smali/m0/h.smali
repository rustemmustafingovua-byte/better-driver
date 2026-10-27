.class public final synthetic Lm0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Z

.field public final synthetic n:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ZI)V
    .locals 0

    .line 1
    iput p3, p0, Lm0/h;->l:I

    iput-object p1, p0, Lm0/h;->n:Ljava/lang/Object;

    iput-boolean p2, p0, Lm0/h;->m:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ZLua/nav/routing/RoutingPackInfo;)V
    .locals 1

    .line 2
    const/4 v0, 0x2

    iput v0, p0, Lm0/h;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lm0/h;->m:Z

    iput-object p2, p0, Lm0/h;->n:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p0

    iget v1, v0, Lm0/h;->l:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lm0/h;->n:Ljava/lang/Object;

    check-cast v1, Lua/nav/routing/RoutingPackInfo;

    move-object/from16 v2, p1

    check-cast v2, Lu/y0;

    move-object/from16 v3, p2

    check-cast v3, Lr0/q;

    move-object/from16 v4, p3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "$this$TextButton"

    invoke-static {v2, v5}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v2, v4, 0x11

    const/16 v5, 0x10

    const/4 v6, 0x1

    if-eq v2, v5, :cond_0

    move v2, v6

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/2addr v4, v6

    invoke-virtual {v3, v4, v2}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v0, v0, Lm0/h;->m:Z

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    const-string v0, "\u041f\u0456\u0437\u043d\u0456\u0448\u0435"

    goto :goto_1

    :cond_1
    const-string v0, "\u0417\u0440\u043e\u0437\u0443\u043c\u0456\u043b\u043e"

    invoke-static {v0}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/16 v24, 0x0

    const v25, 0x1fffe

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    move-object/from16 v22, v3

    move-object v3, v0

    invoke-static/range {v3 .. v25}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_2

    :cond_2
    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Lr0/q;->W()V

    :goto_2
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_0
    iget-object v1, v0, Lm0/h;->n:Ljava/lang/Object;

    check-cast v1, Lr0/r2;

    move-object/from16 v2, p1

    check-cast v2, Lc2/t0;

    move-object/from16 v3, p2

    check-cast v3, Lc2/q0;

    move-object/from16 v4, p3

    check-cast v4, Lb3/a;

    iget-wide v4, v4, Lb3/a;->a:J

    invoke-interface {v3, v4, v5}, Lc2/q0;->C(J)Lc2/f1;

    move-result-object v3

    iget v4, v3, Lc2/f1;->l:I

    iget v5, v3, Lc2/f1;->m:I

    new-instance v6, Lo0/k3;

    iget-boolean v0, v0, Lm0/h;->m:Z

    invoke-direct {v6, v1, v0, v3}, Lo0/k3;-><init>(Lr0/r2;ZLc2/f1;)V

    sget-object v0, Lu8/s;->l:Lu8/s;

    invoke-interface {v2, v4, v5, v0, v6}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v1, v0, Lm0/h;->n:Ljava/lang/Object;

    check-cast v1, Li9/a;

    move-object/from16 v2, p1

    check-cast v2, Lf1/r;

    move-object/from16 v3, p2

    check-cast v3, Lr0/q;

    move-object/from16 v4, p3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, -0xbba9706

    invoke-virtual {v3, v4}, Lr0/q;->b0(I)V

    sget-object v4, Lm0/b2;->a:Lr0/a0;

    invoke-virtual {v3, v4}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm0/a2;

    iget-wide v4, v4, Lm0/a2;->a:J

    invoke-virtual {v3, v4, v5}, Lr0/q;->f(J)Z

    move-result v6

    invoke-virtual {v3, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v6, v7

    iget-boolean v0, v0, Lm0/h;->m:Z

    invoke-virtual {v3, v0}, Lr0/q;->h(Z)Z

    move-result v7

    or-int/2addr v6, v7

    invoke-virtual {v3}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_3

    sget-object v6, Lr0/m;->a:Lr0/e;

    if-ne v7, v6, :cond_4

    :cond_3
    new-instance v7, Lm0/i;

    invoke-direct {v7, v4, v5, v1, v0}, Lm0/i;-><init>(JLi9/a;Z)V

    invoke-virtual {v3, v7}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_4
    check-cast v7, Li9/c;

    invoke-static {v2, v7}, Lj1/g;->e(Lf1/r;Li9/c;)Lf1/r;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lr0/q;->q(Z)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
