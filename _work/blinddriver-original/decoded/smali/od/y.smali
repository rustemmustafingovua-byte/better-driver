.class public final synthetic Lod/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Z

.field public final synthetic n:Li9/a;

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ldd/k0;ZLi9/a;Li9/a;Lf1/r;I)V
    .locals 0

    .line 1
    const/4 p6, 0x0

    iput p6, p0, Lod/y;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/y;->q:Ljava/lang/Object;

    iput-boolean p2, p0, Lod/y;->m:Z

    iput-object p3, p0, Lod/y;->n:Li9/a;

    iput-object p4, p0, Lod/y;->o:Ljava/lang/Object;

    iput-object p5, p0, Lod/y;->p:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lua/nav/a;Ljd/b;ZLi9/a;Li9/a;I)V
    .locals 0

    .line 2
    const/4 p6, 0x2

    iput p6, p0, Lod/y;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/y;->q:Ljava/lang/Object;

    iput-object p2, p0, Lod/y;->p:Ljava/lang/Object;

    iput-boolean p3, p0, Lod/y;->m:Z

    iput-object p4, p0, Lod/y;->n:Li9/a;

    iput-object p5, p0, Lod/y;->o:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lua/nav/stats/CongestionCell;ZLld/j;Li9/a;Lr0/u0;)V
    .locals 1

    .line 3
    const/4 v0, 0x3

    iput v0, p0, Lod/y;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/y;->q:Ljava/lang/Object;

    iput-boolean p2, p0, Lod/y;->m:Z

    iput-object p3, p0, Lod/y;->o:Ljava/lang/Object;

    iput-object p4, p0, Lod/y;->n:Li9/a;

    iput-object p5, p0, Lod/y;->p:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ZLi9/a;Li9/a;Li9/a;Lf1/r;I)V
    .locals 0

    .line 4
    const/4 p6, 0x1

    iput p6, p0, Lod/y;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lod/y;->m:Z

    iput-object p2, p0, Lod/y;->n:Li9/a;

    iput-object p3, p0, Lod/y;->o:Ljava/lang/Object;

    iput-object p4, p0, Lod/y;->q:Ljava/lang/Object;

    iput-object p5, p0, Lod/y;->p:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

    move-object/from16 v0, p0

    iget v1, v0, Lod/y;->l:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lod/y;->q:Ljava/lang/Object;

    check-cast v1, Lua/nav/stats/CongestionCell;

    iget-object v2, v0, Lod/y;->o:Ljava/lang/Object;

    check-cast v2, Lld/j;

    iget-object v3, v0, Lod/y;->p:Ljava/lang/Object;

    check-cast v3, Lr0/u0;

    move-object/from16 v11, p1

    check-cast v11, Lr0/q;

    move-object/from16 v4, p2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/lit8 v5, v4, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v5, v6, :cond_0

    move v5, v8

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    and-int/2addr v4, v8

    invoke-virtual {v11, v4, v5}, Lr0/q;->T(IZ)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x8

    int-to-float v4, v4

    invoke-static {v4}, Lu/h;->g(F)Lu/f;

    move-result-object v4

    sget-object v5, Lf1/c;->x:Lf1/h;

    const/4 v6, 0x6

    invoke-static {v4, v5, v11, v6}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v4

    iget-wide v5, v11, Lr0/q;->T:J

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {v11}, Lr0/q;->m()Lr0/j1;

    move-result-object v6

    sget-object v9, Lf1/o;->a:Lf1/o;

    invoke-static {v9, v11}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v9

    sget-object v10, Le2/h;->b:Le2/g;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Le2/g;->b:Le2/f;

    invoke-virtual {v11}, Lr0/q;->e0()V

    iget-boolean v12, v11, Lr0/q;->S:Z

    if-eqz v12, :cond_1

    invoke-virtual {v11, v10}, Lr0/q;->l(Li9/a;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v11}, Lr0/q;->o0()V

    :goto_1
    sget-object v10, Le2/g;->f:Le2/e;

    invoke-static {v10, v4, v11}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v4, Le2/g;->e:Le2/e;

    invoke-static {v4, v6, v11}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Le2/g;->g:Le2/e;

    invoke-static {v11, v4, v5}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v4, Le2/g;->h:Le2/d;

    invoke-static {v11, v4}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v4, Le2/g;->d:Le2/e;

    invoke-static {v4, v9, v11}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const-string v4, "\u0420\u043e\u0437\u0440\u0430\u0445\u043e\u0432\u0430\u043d\u0435: \u00d7%.2f"

    invoke-static {v4}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v9, v1, Lua/nav/stats/CongestionCell;->a:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget v5, v1, Lua/nav/stats/CongestionCell;->b:I

    if-nez v5, :cond_2

    const-string v5, " (\u0437\u0430\u043c\u0456\u0440\u0456\u0432 \u0449\u0435 \u043d\u0435\u043c\u0430\u0454)"

    goto :goto_2

    :cond_2
    const-string v6, " (\u0437\u0430\u043c\u0456\u0440\u0456\u0432: "

    const-string v9, ")"

    invoke-static {v5, v6, v9}, Lm/a;->i(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    const-string v6, ". \u0412\u043f\u0438\u0441\u0430\u043d\u0435 \u0432\u0440\u0443\u0447\u043d\u0443 \u0437\u043d\u0430\u0447\u0435\u043d\u043d\u044f \u043d\u0435 \u043f\u0435\u0440\u0435\u0437\u0430\u043f\u0438\u0441\u0443\u0454\u0442\u044c\u0441\u044f \u043f\u043e\u0457\u0437\u0434\u043a\u0430\u043c\u0438, \u0434\u043e\u043a\u0438 \u043d\u0435 \u043d\u0430\u0442\u0438\u0441\u043d\u0435\u0442\u0435 \u00ab\u0421\u043a\u0438\u043d\u0443\u0442\u0438 \u043d\u0430 \u0440\u043e\u0437\u0440\u0430\u0445\u0443\u043d\u043a\u043e\u0432\u0435\u00bb."

    invoke-static {v4, v5, v6}, La6/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v11, v5}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo0/h5;

    iget-object v5, v5, Lo0/h5;->l:Lp2/m0;

    const/16 v25, 0x0

    const v26, 0xfffe

    move-object/from16 v22, v5

    const/4 v5, 0x0

    move v9, v7

    const-wide/16 v6, 0x0

    move v12, v8

    move v10, v9

    const-wide/16 v8, 0x0

    move v13, v10

    const/4 v10, 0x0

    move-object/from16 v23, v11

    const/4 v11, 0x0

    move v15, v12

    move v14, v13

    const-wide/16 v12, 0x0

    move/from16 v16, v14

    const/4 v14, 0x0

    move/from16 v18, v15

    move/from16 v17, v16

    const-wide/16 v15, 0x0

    move/from16 v19, v17

    const/16 v17, 0x0

    move/from16 v20, v18

    const/16 v18, 0x0

    move/from16 v21, v19

    const/16 v19, 0x0

    move/from16 v24, v20

    const/16 v20, 0x0

    move/from16 v27, v21

    const/16 v21, 0x0

    move/from16 v28, v24

    const/16 v24, 0x0

    move-object/from16 v27, v2

    move/from16 v2, v28

    invoke-static/range {v4 .. v26}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v11, v23

    invoke-interface {v3}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-boolean v5, v0, Lod/y;->m:Z

    xor-int/lit8 v13, v5, 0x1

    new-instance v15, Lb0/q1;

    const/16 v5, 0x9

    const/16 v6, 0x7b

    invoke-direct {v15, v5, v6}, Lb0/q1;-><init>(II)V

    invoke-virtual {v11}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lr0/m;->a:Lr0/e;

    if-ne v5, v6, :cond_3

    new-instance v5, Lod/t6;

    const/4 v7, 0x1

    invoke-direct {v5, v3, v7}, Lod/t6;-><init>(Lr0/u0;I)V

    invoke-virtual {v11, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_3
    check-cast v5, Li9/c;

    sget-object v9, Lod/m;->B1:Lz0/d;

    sget-object v12, Lod/m;->C1:Lz0/d;

    const v24, 0xc30180

    const v25, 0x7d4fbc

    move-object v3, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v23, v11

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v22, v23

    const v23, 0x180030

    invoke-static/range {v4 .. v25}, Lo0/j2;->a(Ljava/lang/String;Li9/c;Lf1/r;ZLp2/m0;Li9/e;Li9/e;Li9/e;Li9/e;ZLu2/d0;Lb0/q1;Lb0/p1;ZIILm1/h0;Lo0/x4;Lr0/q;III)V

    move-object/from16 v11, v22

    iget-object v1, v1, Lua/nav/stats/CongestionCell;->c:Ljava/lang/Double;

    if-eqz v1, :cond_6

    const v1, -0x32935a9a

    invoke-virtual {v11, v1}, Lr0/q;->b0(I)V

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v11, v1}, Lr0/q;->e(I)Z

    move-result v1

    iget-object v0, v0, Lod/y;->n:Li9/a;

    invoke-virtual {v11, v0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v1, v4

    invoke-virtual {v11}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_4

    if-ne v4, v3, :cond_5

    :cond_4
    new-instance v4, Lb0/n;

    const/16 v1, 0x16

    move-object/from16 v3, v27

    invoke-direct {v4, v1, v3, v0}, Lb0/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v11, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_5
    check-cast v4, Li9/a;

    sget-object v10, Lod/m;->D1:Lz0/d;

    const/high16 v12, 0x30000000

    const/16 v13, 0x1fe

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v13}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lr0/q;->q(Z)V

    goto :goto_3

    :cond_6
    const/4 v13, 0x0

    const v0, -0x32912784

    invoke-virtual {v11, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v11, v13}, Lr0/q;->q(Z)V

    :goto_3
    invoke-virtual {v11, v2}, Lr0/q;->q(Z)V

    goto :goto_4

    :cond_7
    invoke-virtual {v11}, Lr0/q;->W()V

    :goto_4
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_0
    iget-object v1, v0, Lod/y;->q:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lua/nav/a;

    iget-object v1, v0, Lod/y;->p:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Ljd/b;

    iget-object v1, v0, Lod/y;->o:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Li9/a;

    move-object/from16 v7, p1

    check-cast v7, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x6c49

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v8

    iget-boolean v4, v0, Lod/y;->m:Z

    iget-object v5, v0, Lod/y;->n:Li9/a;

    invoke-static/range {v2 .. v8}, Lod/v6;->C(Lua/nav/a;Ljd/b;ZLi9/a;Li9/a;Lr0/q;I)V

    :goto_5
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_1
    iget-object v1, v0, Lod/y;->o:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Li9/a;

    iget-object v1, v0, Lod/y;->q:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Li9/a;

    iget-object v1, v0, Lod/y;->p:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Lf1/r;

    move-object/from16 v7, p1

    check-cast v7, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v8

    iget-boolean v2, v0, Lod/y;->m:Z

    iget-object v3, v0, Lod/y;->n:Li9/a;

    invoke-static/range {v2 .. v8}, Lod/g3;->X(ZLi9/a;Li9/a;Li9/a;Lf1/r;Lr0/q;I)V

    goto :goto_5

    :pswitch_2
    iget-object v1, v0, Lod/y;->q:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ldd/k0;

    iget-object v1, v0, Lod/y;->o:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Li9/a;

    iget-object v1, v0, Lod/y;->p:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Lf1/r;

    move-object/from16 v7, p1

    check-cast v7, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0xc09

    invoke-static {v1}, Lr0/r;->H(I)I

    move-result v8

    iget-boolean v3, v0, Lod/y;->m:Z

    iget-object v4, v0, Lod/y;->n:Li9/a;

    invoke-static/range {v2 .. v8}, Lod/a0;->d(Ldd/k0;ZLi9/a;Li9/a;Lf1/r;Lr0/q;I)V

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
