.class public final synthetic Lod/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lod/u;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 2
    iput p2, p0, Lod/u;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    iget v0, v0, Lod/u;->l:I

    packed-switch v0, :pswitch_data_0

    move-object/from16 v0, p1

    check-cast v0, Lc1/b;

    move-object/from16 v0, p2

    check-cast v0, La3/m;

    iget v0, v0, La3/m;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_0
    move-object/from16 v0, p1

    check-cast v0, Lc1/b;

    move-object/from16 v0, p2

    check-cast v0, La3/k;

    iget v0, v0, La3/k;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_1
    move-object/from16 v0, p1

    check-cast v0, Lc1/b;

    move-object/from16 v1, p2

    check-cast v1, Lm1/g0;

    iget-wide v2, v1, Lm1/g0;->a:J

    new-instance v4, Lm1/p;

    invoke-direct {v4, v2, v3}, Lm1/p;-><init>(J)V

    sget-object v2, Lp2/c0;->p:Lp2/b0;

    invoke-static {v4, v2, v0}, Lp2/c0;->a(Ljava/lang/Object;Lc1/j;Lc1/b;)Ljava/lang/Object;

    move-result-object v2

    iget-wide v3, v1, Lm1/g0;->b:J

    new-instance v5, Ll1/b;

    invoke-direct {v5, v3, v4}, Ll1/b;-><init>(J)V

    sget-object v3, Lp2/c0;->x:Lp2/b0;

    invoke-static {v5, v3, v0}, Lp2/c0;->a(Ljava/lang/Object;Lc1/j;Lc1/b;)Ljava/lang/Object;

    move-result-object v0

    iget v1, v1, Lm1/g0;->c:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->l([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :pswitch_2
    move-object/from16 v0, p1

    check-cast v0, Lc1/b;

    move-object/from16 v0, p2

    check-cast v0, Lp2/l0;

    iget-wide v1, v0, Lp2/l0;->a:J

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, v0, Lp2/l0;->a:J

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->l([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :pswitch_3
    move-object/from16 v0, p1

    check-cast v0, Lc1/b;

    move-object/from16 v1, p2

    check-cast v1, Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lp2/e;

    sget-object v6, Lp2/c0;->b:Lg5/c;

    invoke-static {v5, v6, v0}, Lp2/c0;->a(Ljava/lang/Object;Lc1/j;Lc1/b;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    :pswitch_4
    move-object/from16 v0, p1

    check-cast v0, Lc1/b;

    move-object/from16 v0, p2

    check-cast v0, La3/a;

    iget v0, v0, La3/a;->a:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :pswitch_5
    move-object/from16 v0, p1

    check-cast v0, Lc1/b;

    move-object/from16 v1, p2

    check-cast v1, Lp2/l;

    iget-object v2, v1, Lp2/l;->a:Ljava/lang/String;

    iget-object v1, v1, Lp2/l;->b:Lp2/k0;

    sget-object v3, Lp2/c0;->i:Lg5/c;

    invoke-static {v1, v3, v0}, Lp2/c0;->a(Ljava/lang/Object;Lc1/j;Lc1/b;)Ljava/lang/Object;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->l([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :pswitch_6
    move-object/from16 v0, p1

    check-cast v0, Lc1/b;

    move-object/from16 v0, p2

    check-cast v0, Lt2/k;

    iget v0, v0, Lt2/k;->l:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_7
    move-object/from16 v0, p1

    check-cast v0, Lc1/b;

    move-object/from16 v1, p2

    check-cast v1, La3/q;

    iget-wide v2, v1, La3/q;->a:J

    new-instance v4, Lb3/o;

    invoke-direct {v4, v2, v3}, Lb3/o;-><init>(J)V

    sget-object v2, Lp2/c0;->v:Lp2/b0;

    invoke-static {v4, v2, v0}, Lp2/c0;->a(Ljava/lang/Object;Lc1/j;Lc1/b;)Ljava/lang/Object;

    move-result-object v3

    iget-wide v4, v1, La3/q;->b:J

    new-instance v1, Lb3/o;

    invoke-direct {v1, v4, v5}, Lb3/o;-><init>(J)V

    invoke-static {v1, v2, v0}, Lp2/c0;->a(Ljava/lang/Object;Lc1/j;Lc1/b;)Ljava/lang/Object;

    move-result-object v0

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->l([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :pswitch_8
    move-object/from16 v0, p1

    check-cast v0, Lc1/b;

    move-object/from16 v0, p2

    check-cast v0, La3/p;

    iget v1, v0, La3/p;->a:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v0, v0, La3/p;->b:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->l([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :pswitch_9
    move-object/from16 v0, p1

    check-cast v0, Lc1/b;

    move-object/from16 v0, p2

    check-cast v0, La3/l;

    iget v0, v0, La3/l;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_a
    move-object/from16 v0, p1

    check-cast v0, Lc1/b;

    move-object/from16 v1, p2

    check-cast v1, Lp2/g;

    iget-object v2, v1, Lp2/g;->m:Ljava/lang/String;

    iget-object v1, v1, Lp2/g;->l:Ljava/util/List;

    sget-object v3, Lp2/c0;->a:Lg5/c;

    invoke-static {v1, v3, v0}, Lp2/c0;->a(Ljava/lang/Object;Lc1/j;Lc1/b;)Ljava/lang/Object;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->l([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :pswitch_b
    move-object/from16 v0, p1

    check-cast v0, Lc1/b;

    move-object/from16 v0, p2

    check-cast v0, Lp/a2;

    iget-object v0, v0, Lp/a2;->a:Lr0/b1;

    invoke-virtual {v0}, Lr0/b1;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_c
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v1

    invoke-static {v0, v1}, Lod/m;->E(Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_d
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v1

    invoke-static {v0, v1}, Lod/m;->E(Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_e
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v1

    invoke-static {v0, v1}, Lod/m;->C(Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_f
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v1

    invoke-static {v0, v1}, Lod/m;->z(Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_10
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v1

    invoke-static {v0, v1}, Lod/m;->e(Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_11
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v1

    invoke-static {v0, v1}, Lod/v6;->c(Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_12
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v1

    invoke-static {v0, v1}, Lod/v6;->z(Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_13
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v1

    invoke-static {v0, v1}, Lod/v6;->v(Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_14
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v1

    invoke-static {v0, v1}, Lod/v6;->D(Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_15
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v1

    invoke-static {v0, v1}, Lod/v6;->m(Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_16
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-object/from16 v0, p2

    check-cast v0, Lua/nav/routing/SavedAddress;

    const-string v1, "a"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, v0, Lua/nav/routing/SavedAddress;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :pswitch_17
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v1

    invoke-static {v0, v1}, Lod/m;->g(Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_18
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v1

    invoke-static {v0, v1}, Lod/m;->g(Lr0/q;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_19
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    and-int/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v22, 0x0

    const v23, 0x1fffe

    const-string v1, "\u041a\u043e\u0434 (8 \u0441\u0438\u043c\u0432\u043e\u043b\u0456\u0432)"

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x6

    move-object/from16 v20, v0

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_2

    :cond_2
    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lr0/q;->W()V

    :goto_2
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_1a
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_3

    move v2, v4

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    and-int/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v22, 0x0

    const v23, 0x1fffe

    const-string v1, "\u0412\u0432\u0435\u0441\u0442\u0438 \u043a\u043e\u0434 \u043f\u0435\u0440\u0435\u043d\u043e\u0441\u0443"

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x6

    move-object/from16 v20, v0

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_4

    :cond_4
    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lr0/q;->W()V

    :goto_4
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_1b
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_5

    move v2, v4

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    and-int/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v22, 0x0

    const v23, 0x1fffe

    const-string v1, "\u041a\u043e\u0434 \u043f\u0435\u0440\u0435\u043d\u043e\u0441\u0443 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0438"

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x6

    move-object/from16 v20, v0

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_6

    :cond_6
    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lr0/q;->W()V

    :goto_6
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_1c
    move-object/from16 v0, p1

    check-cast v0, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_7

    move v2, v4

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    and-int/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v22, 0x0

    const v23, 0x1fffe

    const-string v1, "\u041e\u0444\u043e\u0440\u043c\u0438\u0442\u0438 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0443"

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x6

    move-object/from16 v20, v0

    invoke-static/range {v1 .. v23}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    goto :goto_8

    :cond_8
    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lr0/q;->W()V

    :goto_8
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
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
