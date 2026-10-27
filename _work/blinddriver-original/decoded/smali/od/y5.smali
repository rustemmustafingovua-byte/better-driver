.class public final synthetic Lod/y5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lr0/u0;

.field public final synthetic n:Lr0/r2;

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Lr0/r2;

.field public final synthetic r:Lr0/r2;

.field public final synthetic s:Lr0/r2;


# direct methods
.method public synthetic constructor <init>(Lhd/e;Lc/i;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lod/y5;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/y5;->o:Ljava/lang/Object;

    iput-object p2, p0, Lod/y5;->p:Ljava/lang/Object;

    iput-object p3, p0, Lod/y5;->m:Lr0/u0;

    iput-object p4, p0, Lod/y5;->q:Lr0/r2;

    iput-object p5, p0, Lod/y5;->r:Lr0/r2;

    iput-object p6, p0, Lod/y5;->s:Lr0/r2;

    iput-object p7, p0, Lod/y5;->n:Lr0/r2;

    return-void
.end method

.method public synthetic constructor <init>(Lua/nav/a;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lod/y5;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/y5;->o:Ljava/lang/Object;

    iput-object p2, p0, Lod/y5;->n:Lr0/r2;

    iput-object p3, p0, Lod/y5;->p:Ljava/lang/Object;

    iput-object p4, p0, Lod/y5;->q:Lr0/r2;

    iput-object p5, p0, Lod/y5;->r:Lr0/r2;

    iput-object p6, p0, Lod/y5;->s:Lr0/r2;

    iput-object p7, p0, Lod/y5;->m:Lr0/u0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 38

    move-object/from16 v0, p0

    iget v1, v0, Lod/y5;->l:I

    const/16 v2, 0x10

    const-string v3, "$this$Section"

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcd/d;->v:Lcd/c;

    iget-object v6, v0, Lod/y5;->o:Ljava/lang/Object;

    move-object v8, v6

    check-cast v8, Lhd/e;

    iget-object v6, v0, Lod/y5;->p:Ljava/lang/Object;

    move-object v9, v6

    check-cast v9, Lc/i;

    iget-object v6, v0, Lod/y5;->m:Lr0/u0;

    iget-object v7, v0, Lod/y5;->q:Lr0/r2;

    move-object v10, v7

    check-cast v10, Lr0/u0;

    iget-object v7, v0, Lod/y5;->r:Lr0/r2;

    move-object v12, v7

    check-cast v12, Lr0/u0;

    iget-object v7, v0, Lod/y5;->s:Lr0/r2;

    move-object v14, v7

    check-cast v14, Lr0/u0;

    iget-object v0, v0, Lod/y5;->n:Lr0/r2;

    move-object/from16 v7, p1

    check-cast v7, Lu/s;

    move-object/from16 v15, p2

    check-cast v15, Lr0/q;

    move-object/from16 v11, p3

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sget-object v13, Lr0/m;->a:Lr0/e;

    invoke-static {v7, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v3, v11, 0x11

    if-eq v3, v2, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    and-int/lit8 v3, v11, 0x1

    invoke-virtual {v15, v3, v2}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_c

    sget-object v2, Lcd/d;->q:Lcd/c;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcd/d;->r:Lcd/c;

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v5}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-interface {v6}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    invoke-virtual {v15, v8}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v15, v9}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v3, v5

    invoke-virtual {v15}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_2

    if-ne v5, v13, :cond_1

    goto :goto_1

    :cond_1
    move-object v7, v5

    move-object v5, v6

    move-object v3, v13

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v7, Lb0/d2;

    move-object v3, v13

    const/4 v13, 0x4

    move-object v11, v10

    move-object v10, v9

    move-object v9, v6

    invoke-direct/range {v7 .. v13}, Lb0/d2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object v5, v9

    move-object v9, v10

    move-object v10, v11

    invoke-virtual {v15, v7}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_2
    move-object/from16 v18, v7

    check-cast v18, Li9/c;

    const/16 v20, 0x0

    move-object/from16 v19, v15

    move-object v15, v2

    invoke-static/range {v15 .. v20}, Lod/v6;->F(Ljava/lang/String;Ljava/lang/String;ZLi9/c;Lr0/q;I)V

    move-object/from16 v2, v19

    invoke-interface {v5}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_b

    const v5, 0x769ae680

    invoke-virtual {v2, v5}, Lr0/q;->b0(I)V

    invoke-virtual {v2, v8}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v2, v9}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-virtual {v2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_3

    if-ne v6, v3, :cond_4

    :cond_3
    new-instance v7, Lh5/m;

    move-object v11, v12

    const/4 v12, 0x7

    invoke-direct/range {v7 .. v12}, Lh5/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v7}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v6, v7

    :cond_4
    move-object v15, v6

    check-cast v15, Li9/a;

    sget-object v3, Lf1/o;->a:Lf1/o;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v5}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v16

    new-instance v3, Lod/i;

    const/4 v5, 0x7

    invoke-direct {v3, v14, v5}, Lod/i;-><init>(Lr0/u0;I)V

    const v5, 0x43abcb66

    invoke-static {v5, v3, v2}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v22

    const v24, 0x30000030

    const/16 v25, 0x1fc

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v23, v2

    invoke-static/range {v15 .. v25}, Lo0/z2;->f(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhd/m;

    iget-object v3, v3, Lhd/m;->a:Lhd/l;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_0
    sget-object v1, Lcd/d;->E:Lcd/c;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    move-object v15, v1

    goto/16 :goto_5

    :pswitch_1
    sget-object v1, Lcd/d;->D:Lcd/c;

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhd/m;

    iget-object v3, v3, Lhd/m;->c:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :pswitch_2
    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhd/m;

    iget-object v1, v1, Lhd/m;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    sget-object v3, Lcd/d;->B:Lcd/c;

    int-to-double v5, v1

    sget-object v1, Lcd/a;->a:Lcd/b;

    invoke-static {}, Lcd/a;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    const-wide v7, 0x3ff9bfdf7e8038a0L    # 1.609344

    div-double/2addr v5, v7

    :cond_5
    invoke-static {v5, v6}, Ll9/a;->y(D)I

    move-result v1

    invoke-static {}, Lcd/a;->a()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "mph"

    goto :goto_4

    :cond_6
    invoke-static {}, Lcd/a;->b()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "km/h"

    goto :goto_4

    :cond_7
    const-string v5, "\u043a\u043c/\u0433"

    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_8
    sget-object v1, Lcd/d;->C:Lcd/c;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :pswitch_3
    sget-object v1, Lcd/d;->A:Lcd/c;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :pswitch_4
    sget-object v1, Lcd/d;->z:Lcd/c;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :pswitch_5
    sget-object v1, Lcd/d;->x:Lcd/c;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :pswitch_6
    sget-object v1, Lcd/d;->w:Lcd/c;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :pswitch_7
    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :pswitch_8
    iget-object v3, v8, Lhd/e;->e:Landroid/content/SharedPreferences;

    const-string v5, "address"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :cond_9
    sget-object v1, Lcd/d;->y:Lcd/c;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :goto_5
    sget-object v1, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v2, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/h5;

    iget-object v3, v3, Lo0/h5;->k:Lp2/m0;

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhd/m;

    iget-object v0, v0, Lhd/m;->a:Lhd/l;

    sget-object v5, Lhd/l;->r:Lhd/l;

    if-ne v0, v5, :cond_a

    const v0, -0xcb03a3c

    invoke-virtual {v2, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v2, v4}, Lr0/q;->q(Z)V

    const-wide v5, 0xff2e7d32L

    invoke-static {v5, v6}, Lm1/v;->d(J)J

    move-result-wide v5

    :goto_6
    move-wide/from16 v17, v5

    goto :goto_7

    :cond_a
    const v0, -0xcb0341d

    invoke-virtual {v2, v0}, Lr0/q;->b0(I)V

    sget-object v0, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v2, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/u0;

    iget-wide v5, v0, Lo0/u0;->s:J

    invoke-virtual {v2, v4}, Lr0/q;->q(Z)V

    goto :goto_6

    :goto_7
    const/16 v36, 0x0

    const v37, 0xfffa

    const/16 v16, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v35, 0x0

    move-object/from16 v34, v2

    move-object/from16 v33, v3

    invoke-static/range {v15 .. v37}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    sget-object v0, Lcd/d;->F:Lcd/c;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/h5;

    iget-object v0, v0, Lo0/h5;->l:Lp2/m0;

    sget-object v1, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v2, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/u0;

    iget-wide v5, v1, Lo0/u0;->s:J

    move-object/from16 v33, v0

    move-wide/from16 v17, v5

    invoke-static/range {v15 .. v37}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    invoke-virtual {v2, v4}, Lr0/q;->q(Z)V

    goto :goto_8

    :cond_b
    const v0, 0x76ac034f

    invoke-virtual {v2, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v2, v4}, Lr0/q;->q(Z)V

    goto :goto_8

    :cond_c
    move-object v2, v15

    invoke-virtual {v2}, Lr0/q;->W()V

    :goto_8
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_9
    iget-object v1, v0, Lod/y5;->o:Ljava/lang/Object;

    check-cast v1, Lua/nav/a;

    iget-object v6, v0, Lod/y5;->n:Lr0/r2;

    iget-object v7, v0, Lod/y5;->p:Ljava/lang/Object;

    check-cast v7, Lr0/r2;

    iget-object v8, v0, Lod/y5;->q:Lr0/r2;

    iget-object v9, v0, Lod/y5;->r:Lr0/r2;

    iget-object v10, v0, Lod/y5;->s:Lr0/r2;

    iget-object v0, v0, Lod/y5;->m:Lr0/u0;

    move-object/from16 v11, p1

    check-cast v11, Lu/s;

    move-object/from16 v12, p2

    check-cast v12, Lr0/q;

    move-object/from16 v13, p3

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    sget-object v14, Lr0/m;->a:Lr0/e;

    invoke-static {v11, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v3, v13, 0x11

    if-eq v3, v2, :cond_d

    move v2, v5

    goto :goto_9

    :cond_d
    move v2, v4

    :goto_9
    and-int/lit8 v3, v13, 0x1

    invoke-virtual {v12, v3, v2}, Lr0/q;->T(IZ)Z

    move-result v2

    if-eqz v2, :cond_23

    const-string v2, "\u041a\u0430\u0440\u0442\u0430 \u0431\u0435\u0440\u0435\u0442\u044c\u0441\u044f \u0437 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0443 (OpenFreeMap; \u043a\u043b\u044e\u0447 \u043d\u0435 \u043f\u043e\u0442\u0440\u0456\u0431\u0435\u043d, Mapbox \u0434\u043b\u044f \u043a\u0430\u0440\u0442\u0438 \u043d\u0435 \u0432\u0438\u043a\u043e\u0440\u0438\u0441\u0442\u043e\u0432\u0443\u0454\u0442\u044c\u0441\u044f). \u0429\u043e\u0431 \u0443 \u0434\u043e\u0440\u043e\u0437\u0456 \u0431\u0435\u0437 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0443 \u043a\u0430\u0440\u0442\u0430 \u043d\u0435 \u0437\u043d\u0438\u043a\u0430\u043b\u0430, \u0457\u0457 \u043c\u043e\u0436\u043d\u0430 \u0437\u0431\u0435\u0440\u0456\u0433\u0430\u0442\u0438 \u043d\u0430 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0456. \u041c\u0430\u0440\u0448\u0440\u0443\u0442\u0438, \u043f\u043e\u0448\u0443\u043a \u0430\u0434\u0440\u0435\u0441 \u0456 \u043f\u0435\u0440\u0435\u0431\u0443\u0434\u043e\u0432\u0430 \u0431\u0435\u0437 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0443 \u043e\u0434\u043d\u0430\u043a\u043e\u0432\u043e \u043d\u0435 \u043f\u0440\u0430\u0446\u044e\u044e\u0442\u044c; \u0432\u0435\u0434\u0435\u043d\u043d\u044f \u0432\u0436\u0435 \u043f\u043e\u0431\u0443\u0434\u043e\u0432\u0430\u043d\u0438\u043c \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u043e\u043c \u043f\u0440\u0430\u0446\u044e\u0454."

    invoke-static {v2}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v12, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo0/h5;

    iget-object v11, v11, Lo0/h5;->l:Lp2/m0;

    const/16 v33, 0x0

    const v34, 0xfffe

    const/4 v13, 0x0

    move-object/from16 v16, v14

    const-wide/16 v14, 0x0

    move-object/from16 v18, v16

    const-wide/16 v16, 0x0

    move-object/from16 v19, v18

    const/16 v18, 0x0

    move-object/from16 v20, v19

    const/16 v19, 0x0

    move-object/from16 v22, v20

    const-wide/16 v20, 0x0

    move-object/from16 v23, v22

    const/16 v22, 0x0

    move-object/from16 v25, v23

    const-wide/16 v23, 0x0

    move-object/from16 v26, v25

    const/16 v25, 0x0

    move-object/from16 v27, v26

    const/16 v26, 0x0

    move-object/from16 v28, v27

    const/16 v27, 0x0

    move-object/from16 v29, v28

    const/16 v28, 0x0

    move-object/from16 v30, v29

    const/16 v29, 0x0

    const/16 v32, 0x0

    move-object/from16 v31, v12

    move-object v12, v2

    move-object/from16 v2, v30

    move-object/from16 v30, v11

    invoke-static/range {v12 .. v34}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v11, v31

    invoke-interface {v6}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    invoke-virtual {v11, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v11}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v12

    if-nez v6, :cond_e

    if-ne v12, v2, :cond_f

    :cond_e
    new-instance v12, Lod/b6;

    invoke-direct {v12, v1, v4}, Lod/b6;-><init>(Lua/nav/a;I)V

    invoke-virtual {v11, v12}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_f
    move-object v15, v12

    check-cast v15, Li9/c;

    const/16 v17, 0x36

    const-string v12, "\u041a\u0435\u0448\u0443\u0432\u0430\u0442\u0438 \u043a\u0430\u0440\u0442\u0443 \u0432\u0437\u0434\u043e\u0432\u0436 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443"

    const-string v13, "\u041f\u0456\u0441\u043b\u044f \u0432\u0438\u0431\u043e\u0440\u0443 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443 \u043f\u0456\u0434\u0432\u0430\u043d\u0442\u0430\u0436\u0443\u0454\u0442\u044c\u0441\u044f \u0441\u043c\u0443\u0433\u0430 \u00b11,2 \u043a\u043c \u0443\u0437\u0434\u043e\u0432\u0436 \u043d\u044c\u043e\u0433\u043e (\u043e\u0440\u0456\u0454\u043d\u0442\u043e\u0432\u043d\u043e 5-15 \u041c\u0411 \u043d\u0430 10 \u043a\u043c). \u041f\u043e\u0442\u0440\u0456\u0431\u0435\u043d \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442."

    move-object/from16 v16, v11

    invoke-static/range {v12 .. v17}, Lod/v6;->F(Ljava/lang/String;Ljava/lang/String;ZLi9/c;Lr0/q;I)V

    invoke-interface {v7}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    invoke-virtual {v11, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v11}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v12

    if-nez v6, :cond_10

    if-ne v12, v2, :cond_11

    :cond_10
    new-instance v12, Lod/b6;

    invoke-direct {v12, v1, v5}, Lod/b6;-><init>(Lua/nav/a;I)V

    invoke-virtual {v11, v12}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_11
    move-object v15, v12

    check-cast v15, Li9/c;

    const/16 v17, 0x36

    const-string v12, "\u041a\u0435\u0448\u0443\u0432\u0430\u0442\u0438 \u043c\u043e\u044e \u043e\u0431\u043b\u0430\u0441\u0442\u044c"

    const-string v13, "\u0422\u0440\u0438\u043c\u0430\u0454 \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043e\u044e \u043a\u0430\u0440\u0442\u0443 \u043d\u0430\u0432\u043a\u043e\u043b\u043e \u0432\u0430\u0448\u043e\u0433\u043e \u043c\u0456\u0441\u0446\u044f. \u041a\u043e\u043b\u0438 \u0432\u0438 \u0432\u0456\u0434\'\u0457\u0434\u0435\u0442\u0435 \u0434\u0430\u043b\u0435\u043a\u043e \u0432\u0456\u0434 \u0446\u0435\u043d\u0442\u0440\u0443 \u043e\u0431\u043b\u0430\u0441\u0442\u0456, \u0432\u043e\u043d\u0430 \u043f\u0435\u0440\u0435\u043d\u043e\u0441\u0438\u0442\u044c\u0441\u044f \u043d\u0430 \u043d\u043e\u0432\u0435 \u043c\u0456\u0441\u0446\u0435."

    move-object/from16 v16, v11

    invoke-static/range {v12 .. v17}, Lod/v6;->F(Ljava/lang/String;Ljava/lang/String;ZLi9/c;Lr0/q;I)V

    invoke-interface {v7}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_19

    const v6, 0x999491b

    invoke-virtual {v11, v6}, Lr0/q;->b0(I)V

    invoke-virtual {v11, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/h5;

    iget-object v3, v3, Lo0/h5;->j:Lp2/m0;

    const/16 v33, 0x0

    const v34, 0xfffe

    const-string v12, "\u0420\u0430\u0434\u0456\u0443\u0441 \u043e\u0431\u043b\u0430\u0441\u0442\u0456"

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v32, 0x6

    move-object/from16 v30, v3

    move-object/from16 v31, v11

    invoke-static/range {v12 .. v34}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    const/16 v3, 0x8

    int-to-float v3, v3

    invoke-static {v3}, Lu/h;->g(F)Lu/f;

    move-result-object v3

    sget-object v6, Lf1/o;->a:Lf1/o;

    sget-object v12, Lf1/c;->u:Lf1/i;

    const/4 v13, 0x6

    invoke-static {v3, v12, v11, v13}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v3

    iget-wide v12, v11, Lr0/q;->T:J

    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    move-result v12

    invoke-virtual {v11}, Lr0/q;->m()Lr0/j1;

    move-result-object v13

    invoke-static {v6, v11}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v6

    sget-object v14, Le2/h;->b:Le2/g;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Le2/g;->b:Le2/f;

    invoke-virtual {v11}, Lr0/q;->e0()V

    iget-boolean v15, v11, Lr0/q;->S:Z

    if-eqz v15, :cond_12

    invoke-virtual {v11, v14}, Lr0/q;->l(Li9/a;)V

    goto :goto_a

    :cond_12
    invoke-virtual {v11}, Lr0/q;->o0()V

    :goto_a
    sget-object v14, Le2/g;->f:Le2/e;

    invoke-static {v14, v3, v11}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v3, Le2/g;->e:Le2/e;

    invoke-static {v3, v13, v11}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v12, Le2/g;->g:Le2/e;

    invoke-static {v11, v3, v12}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v3, Le2/g;->h:Le2/d;

    invoke-static {v11, v3}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v3, Le2/g;->d:Le2/e;

    invoke-static {v3, v6, v11}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const v3, -0x2fd072f8

    invoke-virtual {v11, v3}, Lr0/q;->b0(I)V

    sget-object v3, Lfd/q;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-interface {v8}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    if-ne v12, v6, :cond_13

    move v12, v5

    goto :goto_c

    :cond_13
    move v12, v4

    :goto_c
    invoke-virtual {v11, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v13

    invoke-virtual {v11, v6}, Lr0/q;->e(I)Z

    move-result v14

    or-int/2addr v13, v14

    invoke-virtual {v11}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v14

    if-nez v13, :cond_14

    if-ne v14, v2, :cond_15

    :cond_14
    new-instance v14, Lm0/d0;

    const/4 v13, 0x3

    invoke-direct {v14, v6, v13, v1}, Lm0/d0;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v11, v14}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_15
    move-object v13, v14

    check-cast v13, Li9/a;

    new-instance v14, Lod/n1;

    invoke-direct {v14, v6, v5}, Lod/n1;-><init>(II)V

    const v6, 0x4cd911c1    # 1.13806856E8f

    invoke-static {v6, v14, v11}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v14

    const/16 v22, 0x180

    const/16 v23, 0xff8

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v21, v11

    invoke-static/range {v12 .. v23}, Lo0/r0;->b(ZLi9/a;Lz0/d;Lf1/r;ZLm1/h0;Lo0/n3;Lo0/o3;Lp/x;Lr0/q;II)V

    goto :goto_b

    :cond_16
    invoke-virtual {v11, v4}, Lr0/q;->q(Z)V

    invoke-virtual {v11, v5}, Lr0/q;->q(Z)V

    sget-object v3, Lfd/q;->a:Ljava/util/List;

    invoke-interface {v8}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    int-to-double v14, v3

    mul-double/2addr v14, v12

    mul-double/2addr v14, v14

    new-instance v3, Lo9/d;

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    mul-double/2addr v12, v14

    const/16 v6, 0x400

    int-to-double v4, v6

    div-double/2addr v12, v4

    double-to-int v6, v12

    const/4 v8, 0x1

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    const-wide/high16 v12, 0x4026000000000000L    # 11.0

    mul-double/2addr v14, v12

    div-double/2addr v14, v4

    double-to-int v4, v14

    const/4 v5, 0x2

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-direct {v3, v6, v4, v8}, Lo9/b;-><init>(III)V

    iget v3, v3, Lo9/b;->m:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "\u041e\u0440\u0456\u0454\u043d\u0442\u043e\u0432\u043d\u043e "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " \u041c\u0411 \u043f\u043b\u044e\u0441 \u0431\u043b\u0438\u0437\u044c\u043a\u043e 7 \u041c\u0411 \u0448\u0440\u0438\u0444\u0442\u0456\u0432 \u0456 \u0437\u043d\u0430\u0447\u043a\u0456\u0432 (\u043c\u0456\u0441\u0442\u043e \u0432\u0430\u0436\u0447\u0435 \u0437\u0430 \u0441\u0435\u043b\u043e: 25 \u043a\u043c \u043d\u0430\u0432\u043a\u043e\u043b\u043e \u0446\u0435\u043d\u0442\u0440\u0443 \u041a\u0438\u0454\u0432\u0430 \u0446\u0435 \u0431\u043b\u0438\u0437\u044c\u043a\u043e 35 \u041c\u0411; \u0432\u0441\u044f \u041a\u0438\u0457\u0432\u0441\u044c\u043a\u0430 \u043e\u0431\u043b\u0430\u0441\u0442\u044c \u043f\u0440\u0438\u0431\u043b\u0438\u0437\u043d\u043e 100-150 \u041c\u0411). \u0422\u043e\u0447\u043d\u0438\u0439 \u0440\u043e\u0437\u043c\u0456\u0440 \u0432\u0438\u0434\u043d\u043e \u043d\u0438\u0436\u0447\u0435 \u043f\u0456\u0441\u043b\u044f \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043d\u044f."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcd/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget-object v3, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v11, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/h5;

    iget-object v3, v3, Lo0/h5;->l:Lp2/m0;

    sget-object v4, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v11, v4}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo0/u0;

    iget-wide v14, v4, Lo0/u0;->s:J

    const/16 v33, 0x0

    const v34, 0xfffa

    const/4 v13, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v32, 0x0

    move-object/from16 v30, v3

    move-object/from16 v31, v11

    invoke-static/range {v12 .. v34}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    invoke-interface {v9}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    invoke-virtual {v11, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v11}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_17

    if-ne v4, v2, :cond_18

    :cond_17
    new-instance v4, Lod/b6;

    invoke-direct {v4, v1, v5}, Lod/b6;-><init>(Lua/nav/a;I)V

    invoke-virtual {v11, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_18
    move-object v15, v4

    check-cast v15, Li9/c;

    const/16 v17, 0x36

    const-string v12, "\u041e\u0431\u043b\u0430\u0441\u0442\u044c \u043b\u0438\u0448\u0435 \u0447\u0435\u0440\u0435\u0437 Wi-Fi"

    const-string v13, "\u0412\u0438\u043c\u043a\u043d\u0456\u0442\u044c, \u0449\u043e\u0431 \u0434\u043e\u0437\u0432\u043e\u043b\u0438\u0442\u0438 \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043d\u044f \u0456 \u0447\u0435\u0440\u0435\u0437 \u043c\u043e\u0431\u0456\u043b\u044c\u043d\u0438\u0439 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442."

    move-object/from16 v16, v11

    invoke-static/range {v12 .. v17}, Lod/v6;->F(Ljava/lang/String;Ljava/lang/String;ZLi9/c;Lr0/q;I)V

    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lr0/q;->q(Z)V

    goto :goto_d

    :cond_19
    move v1, v4

    const v3, 0x9a83e17

    invoke-virtual {v11, v3}, Lr0/q;->b0(I)V

    invoke-virtual {v11, v1}, Lr0/q;->q(Z)V

    :goto_d
    invoke-static {}, Lg5/f;->r()Lv8/b;

    move-result-object v1

    invoke-interface {v10}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfd/a;

    iget v3, v3, Lfd/a;->a:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u0412\u0437\u0434\u043e\u0432\u0436 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " \u041c\u0411"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcd/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lv8/b;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1a

    invoke-interface {v10}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfd/a;

    iget v4, v4, Lfd/a;->b:I

    if-lez v4, :cond_1e

    :cond_1a
    invoke-interface {v10}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfd/a;

    iget v4, v4, Lfd/a;->b:I

    const-string v5, "\u041e\u0431\u043b\u0430\u0441\u0442\u044c: "

    invoke-static {v4, v5, v3}, Lm/a;->i(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfd/a;

    iget v4, v4, Lfd/a;->g:I

    const-string v5, ""

    if-lez v4, :cond_1b

    invoke-interface {v10}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfd/a;

    iget v4, v4, Lfd/a;->g:I

    const-string v6, " (\u0440\u0430\u0434\u0456\u0443\u0441 "

    const-string v7, " \u043a\u043c)"

    invoke-static {v4, v6, v7}, Lm/a;->i(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    :cond_1b
    move-object v4, v5

    :goto_e
    invoke-interface {v10}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lfd/a;

    iget-boolean v6, v6, Lfd/a;->d:Z

    if-eqz v6, :cond_1c

    const-string v5, ", \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043e"

    goto :goto_f

    :cond_1c
    invoke-interface {v10}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lfd/a;

    iget-boolean v6, v6, Lfd/a;->e:Z

    if-eqz v6, :cond_1d

    invoke-interface {v10}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfd/a;

    iget v5, v5, Lfd/a;->c:I

    const-string v6, ", \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0443\u0454\u0442\u044c\u0441\u044f "

    const-string v7, " %"

    invoke-static {v5, v6, v7}, Lm/a;->i(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_1d
    :goto_f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lv8/b;->add(Ljava/lang/Object;)Z

    :cond_1e
    invoke-interface {v10}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfd/a;

    iget-boolean v3, v3, Lfd/a;->e:Z

    if-eqz v3, :cond_1f

    const-string v3, "\u0406\u0434\u0435 \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043d\u044f\u2026"

    invoke-virtual {v1, v3}, Lv8/b;->add(Ljava/lang/Object;)Z

    :cond_1f
    invoke-interface {v10}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfd/a;

    iget-object v3, v3, Lfd/a;->h:Ljava/lang/String;

    if-eqz v3, :cond_20

    const-string v4, "\u041f\u043e\u043c\u0438\u043b\u043a\u0430: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcd/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lv8/b;->add(Ljava/lang/Object;)Z

    :cond_20
    invoke-static {v1}, Lg5/f;->n(Lv8/b;)Lv8/b;

    move-result-object v4

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const-string v5, "\n"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lu8/m;->k0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;I)Ljava/lang/String;

    move-result-object v12

    sget-object v1, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v11, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/h5;

    iget-object v1, v1, Lo0/h5;->l:Lp2/m0;

    invoke-interface {v10}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfd/a;

    iget-object v3, v3, Lfd/a;->h:Ljava/lang/String;

    if-eqz v3, :cond_21

    const v3, -0x4a028670

    invoke-virtual {v11, v3}, Lr0/q;->b0(I)V

    sget-object v3, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v11, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/u0;

    iget-wide v3, v3, Lo0/u0;->w:J

    const/4 v5, 0x0

    :goto_10
    invoke-virtual {v11, v5}, Lr0/q;->q(Z)V

    move-wide v14, v3

    goto :goto_11

    :cond_21
    const/4 v5, 0x0

    const v3, -0x4a0281c5

    invoke-virtual {v11, v3}, Lr0/q;->b0(I)V

    sget-object v3, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v11, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/u0;

    iget-wide v3, v3, Lo0/u0;->s:J

    goto :goto_10

    :goto_11
    const/16 v33, 0x0

    const v34, 0xfffa

    const/4 v13, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v32, 0x0

    move-object/from16 v30, v1

    move-object/from16 v31, v11

    invoke-static/range {v12 .. v34}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    invoke-virtual {v11}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_22

    new-instance v1, Lod/p4;

    const/16 v2, 0x11

    invoke-direct {v1, v0, v2}, Lod/p4;-><init>(Lr0/u0;I)V

    invoke-virtual {v11, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_22
    move-object v12, v1

    check-cast v12, Li9/a;

    sget-object v19, Lod/m;->P0:Lz0/d;

    const v21, 0x30000006

    const/16 v22, 0x1fe

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v20, v11

    invoke-static/range {v12 .. v22}, Lo0/z2;->f(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    goto :goto_12

    :cond_23
    move-object v11, v12

    invoke-virtual {v11}, Lr0/q;->W()V

    :goto_12
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
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
