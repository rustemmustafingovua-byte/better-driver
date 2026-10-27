.class public final synthetic Lod/p5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lua/nav/a;

.field public final synthetic n:Li9/c;

.field public final synthetic o:Lr0/r2;

.field public final synthetic p:Lr0/r2;

.field public final synthetic q:Lr0/r2;

.field public final synthetic r:Lr0/u0;


# direct methods
.method public synthetic constructor <init>(Lua/nav/a;Li9/c;Lr0/r2;Lr0/r2;Lr0/r2;Lr0/u0;I)V
    .locals 0

    iput p7, p0, Lod/p5;->l:I

    iput-object p1, p0, Lod/p5;->m:Lua/nav/a;

    iput-object p2, p0, Lod/p5;->n:Li9/c;

    iput-object p3, p0, Lod/p5;->o:Lr0/r2;

    iput-object p4, p0, Lod/p5;->p:Lr0/r2;

    iput-object p5, p0, Lod/p5;->q:Lr0/r2;

    iput-object p6, p0, Lod/p5;->r:Lr0/u0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    move-object/from16 v0, p0

    iget v1, v0, Lod/p5;->l:I

    sget-object v2, Lt8/z;->a:Lt8/z;

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Lu/s;

    move-object/from16 v10, p2

    check-cast v10, Lr0/q;

    move-object/from16 v6, p3

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "$this$Section"

    invoke-static {v1, v7}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v1, v6, 0x11

    if-eq v1, v3, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    and-int/lit8 v3, v6, 0x1

    invoke-virtual {v10, v3, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, v0, Lod/p5;->m:Lua/nav/a;

    iget-object v3, v1, Lua/nav/a;->g:Lx9/l0;

    invoke-static {v3, v10}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v3

    sget-object v6, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->q()Lua/nav/routing/i;

    move-result-object v6

    iget-object v6, v6, Lua/nav/routing/i;->i:Lx9/l0;

    invoke-static {v6, v10}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v29

    invoke-static {}, Lsc/i0;->h()Luc/f;

    move-result-object v6

    iget-object v6, v6, Luc/f;->h:Lx9/l0;

    invoke-static {v6, v10}, Lc6/o;->J(Lx9/j0;Lr0/q;)Lr0/u0;

    move-result-object v6

    invoke-interface {v6}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Luc/c;

    iget-object v6, v6, Luc/c;->a:Luc/a;

    sget-object v7, Luc/a;->n:Luc/a;

    if-eq v6, v7, :cond_1

    const v6, 0x159f633

    invoke-virtual {v10, v6}, Lr0/q;->b0(I)V

    :goto_1
    invoke-virtual {v10, v4}, Lr0/q;->q(Z)V

    goto :goto_2

    :cond_1
    const v6, 0x1576544

    invoke-virtual {v10, v6}, Lr0/q;->b0(I)V

    sget-object v6, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v10, v6}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo0/h5;

    iget-object v6, v6, Lo0/h5;->k:Lp2/m0;

    const-wide v7, 0xffef6c00L

    invoke-static {v7, v8}, Lm1/v;->d(J)J

    move-result-wide v8

    const/16 v27, 0x0

    const v28, 0xfffa

    move-object/from16 v24, v6

    const-string v6, "\u041d\u043e\u0432\u0435 \u0432\u0435\u0434\u0435\u043d\u043d\u044f \u0431\u0435\u0437 GPS \u2014 \u0443 \u043f\u0440\u043e\u0431\u043d\u043e\u043c\u0443 \u043f\u0435\u0440\u0456\u043e\u0434\u0456 \u0439 \u0437 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u043e\u044e. \u0417\u0430\u0440\u0430\u0437 \u043f\u0440\u0430\u0446\u044e\u0454 \u043f\u043e\u043f\u0435\u0440\u0435\u0434\u043d\u044f \u043b\u043e\u0433\u0456\u043a\u0430 \u0432\u0435\u0434\u0435\u043d\u043d\u044f."

    const/4 v7, 0x0

    move-object/from16 v25, v10

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x186

    invoke-static/range {v6 .. v28}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v10, v25

    goto :goto_1

    :goto_2
    const-string v6, "\u0411\u0435\u0437 GPS \u043f\u043e\u0437\u0438\u0446\u0456\u044f \u0440\u0430\u0445\u0443\u0454\u0442\u044c\u0441\u044f \u0437\u0430 \u043a\u0430\u0440\u0442\u043e\u044e \u0434\u043e\u0440\u0456\u0433 \u0423\u043a\u0440\u0430\u0457\u043d\u0438: \u0442\u0435\u043b\u0435\u0444\u043e\u043d \u043f\u0435\u0440\u0435\u0431\u0438\u0440\u0430\u0454 \u0441\u043e\u0442\u043d\u0456 \u043c\u043e\u0436\u043b\u0438\u0432\u0438\u0445 \u043f\u043e\u043b\u043e\u0436\u0435\u043d\u044c \u043c\u0430\u0448\u0438\u043d\u0438 \u043d\u0430 \u0434\u043e\u0440\u043e\u0433\u0430\u0445 \u0456 \u0432\u0456\u0434\u043a\u0438\u0434\u0430\u0454 \u0442\u0456, \u0449\u043e \u043d\u0435 \u0437\u0431\u0456\u0433\u0430\u044e\u0442\u044c\u0441\u044f \u0437 \u043f\u043e\u0432\u043e\u0440\u043e\u0442\u0430\u043c\u0438 \u0437\u0430 \u0433\u0456\u0440\u043e\u0441\u043a\u043e\u043f\u043e\u043c \u0456 \u0437 \u043c\u0435\u0440\u0435\u0436\u0435\u044e. \u041d\u0430 \u043d\u0430\u0448\u0438\u0445 \u0442\u0435\u0441\u0442\u0430\u0445 \u043f\u043e\u0445\u0438\u0431\u043a\u0430 \u0431\u0435\u0437 GPS \u043f\u0440\u0438\u0431\u043b\u0438\u0437\u043d\u043e \u0432\u0434\u0432\u0456\u0447\u0456 \u043c\u0435\u043d\u0448\u0430, \u0445\u0438\u0431\u043d\u0438\u0445 \u00ab\u0421\u0445\u043e\u0436\u0435, \u0432\u0438 \u0437\u0456\u0439\u0448\u043b\u0438 \u0437 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443\u00bb \u043c\u0435\u043d\u0448\u0435. \u041f\u043e\u0442\u0440\u0456\u0431\u0435\u043d \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u0438\u0439 \u0433\u0440\u0430\u0444 \u0434\u043e\u0440\u0456\u0433 (\u041a\u0430\u0440\u0442\u0430 \u0439 \u043e\u0444\u043b\u0430\u0439\u043d \u2192 \u041e\u0444\u043b\u0430\u0439\u043d-\u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438). \u0411\u0435\u0437 \u0433\u0440\u0430\u0444\u0430 \u0430\u0431\u043e \u0432\u0438\u043c\u043a\u043d\u0435\u043d\u043e \u2014 \u043f\u043e\u043f\u0435\u0440\u0435\u0434\u043d\u044f \u043b\u043e\u0433\u0456\u043a\u0430 \u0432\u0435\u0434\u0435\u043d\u043d\u044f. \u042f\u043a\u0449\u043e \u0442\u0435\u043b\u0435\u0444\u043e\u043d \u043d\u0435 \u0432\u0441\u0442\u0438\u0433\u0430\u0454 \u0440\u0430\u0445\u0443\u0432\u0430\u0442\u0438, \u0432\u0438\u043c\u0438\u043a\u0430\u0454\u0442\u044c\u0441\u044f \u0441\u0430\u043c\u0430."

    invoke-static {v6}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v29 .. v29}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lid/e1;

    iget-object v7, v7, Lid/e1;->a:Lua/nav/routing/RoutingPackInfo;

    if-nez v7, :cond_2

    const-string v7, "\n\n\u0413\u0440\u0430\u0444 \u0434\u043e\u0440\u0456\u0433 \u043d\u0435 \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043e: \u0437\u0430\u0440\u0430\u0437 \u043f\u0440\u0430\u0446\u044e\u0454 \u043f\u043e\u043f\u0435\u0440\u0435\u0434\u043d\u044f \u043b\u043e\u0433\u0456\u043a\u0430."

    goto :goto_3

    :cond_2
    invoke-interface {v3}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, v1, Lua/nav/a;->a:Landroid/content/SharedPreferences;

    const-string v8, "road_filter_auto_off"

    invoke-interface {v7, v8, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "\n\n\u0412\u0438\u043c\u043a\u043d\u0443\u043b\u043e\u0441\u044c \u0441\u0430\u043c\u043e: \u0442\u0435\u043b\u0435\u0444\u043e\u043d \u043d\u0435 \u0432\u0441\u0442\u0438\u0433\u0430\u0432 \u0440\u0430\u0445\u0443\u0432\u0430\u0442\u0438."

    goto :goto_3

    :cond_3
    const-string v7, ""

    :goto_3
    invoke-static {v6, v7}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v10, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    const/4 v12, 0x3

    sget-object v13, Lr0/m;->a:Lr0/e;

    if-nez v3, :cond_4

    if-ne v6, v13, :cond_5

    :cond_4
    new-instance v6, Lod/b6;

    invoke-direct {v6, v1, v12}, Lod/b6;-><init>(Lua/nav/a;I)V

    invoke-virtual {v10, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_5
    move-object v9, v6

    check-cast v9, Li9/c;

    const/4 v11, 0x6

    const-string v6, "\u041d\u043e\u0432\u0435 \u0432\u0435\u0434\u0435\u043d\u043d\u044f \u0431\u0435\u0437 GPS (\u0437\u0430 \u0433\u0440\u0430\u0444\u043e\u043c \u0434\u043e\u0440\u0456\u0433)"

    invoke-static/range {v6 .. v11}, Lod/v6;->F(Ljava/lang/String;Ljava/lang/String;ZLi9/c;Lr0/q;I)V

    iget-object v3, v0, Lod/p5;->p:Lr0/r2;

    invoke-interface {v3}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v10, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    const/4 v14, 0x4

    if-nez v3, :cond_6

    if-ne v6, v13, :cond_7

    :cond_6
    new-instance v6, Lod/b6;

    invoke-direct {v6, v1, v14}, Lod/b6;-><init>(Lua/nav/a;I)V

    invoke-virtual {v10, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_7
    move-object v9, v6

    check-cast v9, Li9/c;

    const/16 v11, 0x36

    const-string v6, "\u0410\u0432\u0442\u043e-\u043f\u0435\u0440\u0435\u0431\u0443\u0434\u043e\u0432\u0430 \u043f\u0440\u0438 \u043d\u0430\u0434\u0456\u0439\u043d\u043e\u043c\u0443 GPS"

    const-string v7, "\u0417\u0456\u0439\u0448\u043b\u0438 \u0437 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443 \u043f\u0440\u0438 \u0436\u0438\u0432\u043e\u043c\u0443 GPS \u2014 \u043d\u043e\u0432\u0438\u0439 \u043c\u0430\u0440\u0448\u0440\u0443\u0442 \u043e\u0434\u0440\u0430\u0437\u0443, \u043d\u0435 \u0447\u0430\u0441\u0442\u0456\u0448\u0435 \u043d\u0456\u0436 \u0440\u0430\u0437 \u043d\u0430 20 \u0441. \u041f\u0456\u0434 \u0433\u043b\u0443\u0448\u0438\u043b\u043a\u043e\u044e \u043d\u0435 \u0434\u0456\u0454."

    invoke-static/range {v6 .. v11}, Lod/v6;->F(Ljava/lang/String;Ljava/lang/String;ZLi9/c;Lr0/q;I)V

    iget-object v3, v0, Lod/p5;->q:Lr0/r2;

    invoke-interface {v3}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v10, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    const/4 v15, 0x5

    if-nez v3, :cond_8

    if-ne v6, v13, :cond_9

    :cond_8
    new-instance v6, Lod/b6;

    invoke-direct {v6, v1, v15}, Lod/b6;-><init>(Lua/nav/a;I)V

    invoke-virtual {v10, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_9
    move-object v9, v6

    check-cast v9, Li9/c;

    const/16 v11, 0x36

    const-string v6, "\u0410\u0432\u0442\u043e-\u043f\u0435\u0440\u0435\u0431\u0443\u0434\u043e\u0432\u0430 \u0431\u0435\u0437 GPS"

    const-string v7, "\u041f\u043b\u0430\u0448\u043a\u0430 \u00ab\u0421\u0445\u043e\u0436\u0435, \u0432\u0438 \u0437\u0456\u0439\u0448\u043b\u0438 \u0437 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443\u00bb \u043f\u0456\u0441\u043b\u044f \u0432\u0456\u0434\u043b\u0456\u043a\u0443 \u043f\u0435\u0440\u0435\u0431\u0443\u0434\u043e\u0432\u0443\u0454 \u0441\u0430\u043c\u0430. \u0412\u0438\u043c\u043a\u043d\u0435\u043d\u043e \u2014 \u043f\u043b\u0430\u0448\u043a\u0430 \u0447\u0435\u043a\u0430\u0454 \u0432\u0430\u0448\u043e\u0457 \u043a\u043d\u043e\u043f\u043a\u0438 \u00ab\u041f\u0435\u0440\u0435\u0431\u0443\u0434\u0443\u0432\u0430\u0442\u0438 \u0437\u0430\u0440\u0430\u0437\u00bb \u0445\u0432\u0438\u043b\u0438\u043d\u0443 \u0439 \u0437\u043d\u0438\u043a\u0430\u0454."

    invoke-static/range {v6 .. v11}, Lod/v6;->F(Ljava/lang/String;Ljava/lang/String;ZLi9/c;Lr0/q;I)V

    iget-object v1, v0, Lod/p5;->o:Lr0/r2;

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lua/nav/Tuning;

    iget-boolean v8, v3, Lua/nav/Tuning;->F:Z

    iget-object v3, v0, Lod/p5;->n:Li9/c;

    invoke-virtual {v10, v3}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v10, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v6, v7

    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_a

    if-ne v7, v13, :cond_b

    :cond_a
    new-instance v7, Lod/d6;

    invoke-direct {v7, v3, v1, v4}, Lod/d6;-><init>(Li9/c;Lr0/r2;I)V

    invoke-virtual {v10, v7}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_b
    move-object v9, v7

    check-cast v9, Li9/c;

    const/16 v11, 0x36

    const-string v6, "\u041f\u043b\u0430\u043d\u043e\u0432\u0435 \u0441\u043f\u043e\u0432\u0456\u043b\u044c\u043d\u0435\u043d\u043d\u044f \u0431\u0456\u043b\u044f \u0441\u0432\u0456\u0442\u043b\u043e\u0444\u043e\u0440\u0456\u0432 \u0456 \u043b\u0435\u0436\u0430\u0447\u0438\u0445"

    const-string v7, "\u0420\u043e\u0437\u0440\u0430\u0445\u0443\u043d\u043e\u043a \u0431\u0435\u0437 GPS \u0432\u0432\u0430\u0436\u0430\u0454, \u0449\u043e \u043f\u0435\u0440\u0435\u0434 \u043d\u0438\u043c\u0438 \u0432\u0438 \u0457\u0434\u0435\u0442\u0435 \u043f\u043e\u0432\u0456\u043b\u044c\u043d\u0456\u0448\u0435."

    invoke-static/range {v6 .. v11}, Lod/v6;->F(Ljava/lang/String;Ljava/lang/String;ZLi9/c;Lr0/q;I)V

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lua/nav/Tuning;

    iget-boolean v8, v4, Lua/nav/Tuning;->u:Z

    invoke-virtual {v10, v3}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v10, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v4, v6

    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_c

    if-ne v6, v13, :cond_d

    :cond_c
    new-instance v6, Lod/d6;

    invoke-direct {v6, v3, v1, v5}, Lod/d6;-><init>(Li9/c;Lr0/r2;I)V

    invoke-virtual {v10, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_d
    move-object v9, v6

    check-cast v9, Li9/c;

    const/16 v11, 0x36

    const-string v6, "\u041f\u0440\u0438\u0432\'\u044f\u0437\u043a\u0430 \u0441\u0442\u0440\u0456\u043b\u043a\u0438 \u0434\u043e \u0434\u043e\u0440\u043e\u0433\u0438 \u0431\u0435\u0437 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443"

    const-string v7, "\u0411\u0435\u0437 GPS \u0441\u0442\u0440\u0456\u043b\u043a\u0430 \u0441\u0442\u0430\u0432\u0438\u0442\u044c\u0441\u044f \u043d\u0430 \u043d\u0430\u0439\u0431\u043b\u0438\u0436\u0447\u0443 \u0434\u043e\u0440\u043e\u0433\u0443 \u0437\u0430 \u043a\u0443\u0440\u0441\u043e\u043c \u0440\u0443\u0445\u0443, \u0430 \u043d\u0435 \u00ab\u0432 \u043f\u043e\u043b\u0435\u00bb. \u0428\u0432\u0438\u0434\u0448\u0435 \u0437\u0430 50 \u043a\u043c/\u0433\u043e\u0434 \u2014 \u043b\u0438\u0448\u0435 \u043d\u0430 \u0432\u0435\u043b\u0438\u043a\u0456 \u0434\u043e\u0440\u043e\u0433\u0438 (\u043c\u0456\u0436 \u0431\u0443\u0434\u0438\u043d\u043a\u0430\u043c\u0438 \u0442\u0430\u043a \u043d\u0435 \u0457\u0437\u0434\u044f\u0442\u044c). \u041d\u0430\u0439\u0442\u043e\u0447\u043d\u0456\u0448\u0435 \u0437 \u043e\u0444\u043b\u0430\u0439\u043d-\u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0430\u043c\u0438 (\u0433\u0440\u0430\u0444 \u0434\u043e\u0440\u0456\u0433), \u0456\u043d\u0430\u043a\u0448\u0435 \u2014 \u0437\u0430 \u0434\u043e\u0440\u043e\u0433\u0430\u043c\u0438 \u043d\u0430 \u043a\u0430\u0440\u0442\u0456."

    invoke-static/range {v6 .. v11}, Lod/v6;->F(Ljava/lang/String;Ljava/lang/String;ZLi9/c;Lr0/q;I)V

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lua/nav/Tuning;

    iget-boolean v8, v4, Lua/nav/Tuning;->v:Z

    invoke-virtual {v10, v3}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v10, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_e

    if-ne v5, v13, :cond_f

    :cond_e
    new-instance v5, Lod/d6;

    const/4 v4, 0x2

    invoke-direct {v5, v3, v1, v4}, Lod/d6;-><init>(Li9/c;Lr0/r2;I)V

    invoke-virtual {v10, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_f
    move-object v9, v5

    check-cast v9, Li9/c;

    const/4 v11, 0x6

    const-string v6, "\u041f\u0440\u0438\u0432\'\u044f\u0437\u043a\u0430 \u0441\u0442\u0440\u0456\u043b\u043a\u0438 \u0434\u043e \u0434\u043e\u0440\u043e\u0433\u0438 \u043f\u0440\u0438 GPS"

    const-string v7, "\u0417\u0456 \u0441\u043f\u0440\u0430\u0432\u043d\u0438\u043c GPS \u0443 \u0440\u0443\u0441\u0456 (\u0432\u0456\u0434 ~10 \u043a\u043c/\u0433\u043e\u0434) \u0431\u0435\u0437 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443 \u0441\u0442\u0440\u0456\u043b\u043a\u0430 \u0441\u0442\u0430\u0432\u0438\u0442\u044c\u0441\u044f \u043d\u0430 \u0434\u043e\u0440\u043e\u0433\u0443, \u0449\u043e \u0437\u0431\u0456\u0433\u0430\u0454\u0442\u044c\u0441\u044f \u0437 \u043a\u0443\u0440\u0441\u043e\u043c (\u0434\u043e 25 \u043c \u0432\u0456\u0434 GPS-\u0442\u043e\u0447\u043a\u0438), \u0430 \u043d\u0435 \u00ab\u043f\u043e\u0440\u0443\u0447\u00bb. \u041d\u0430 \u0441\u0442\u043e\u044f\u043d\u0446\u0456, \u0443 \u0434\u0432\u043e\u0440\u0456 \u0439 \u0431\u0435\u0437 \u0447\u0456\u0442\u043a\u043e\u0433\u043e \u043a\u0443\u0440\u0441\u0443 \u043f\u043e\u043a\u0430\u0437\u0443\u0454\u0442\u044c\u0441\u044f \u0441\u0438\u0440\u0430 GPS-\u0442\u043e\u0447\u043a\u0430."

    invoke-static/range {v6 .. v11}, Lod/v6;->F(Ljava/lang/String;Ljava/lang/String;ZLi9/c;Lr0/q;I)V

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lua/nav/Tuning;

    iget-boolean v8, v4, Lua/nav/Tuning;->G:Z

    invoke-virtual {v10, v3}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v10, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_10

    if-ne v5, v13, :cond_11

    :cond_10
    new-instance v5, Lod/d6;

    invoke-direct {v5, v3, v1, v12}, Lod/d6;-><init>(Li9/c;Lr0/r2;I)V

    invoke-virtual {v10, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_11
    move-object v9, v5

    check-cast v9, Li9/c;

    const/16 v11, 0x36

    const-string v6, "\u041f\u0440\u0438\u0432\'\u044f\u0437\u043a\u0430 \u0437\u0443\u043f\u0438\u043d\u043a\u0438 \u0434\u043e \u0441\u0432\u0456\u0442\u043b\u043e\u0444\u043e\u0440\u0430"

    const-string v7, "\u0417\u0443\u043f\u0438\u043d\u043a\u0430 \u0437\u0430 \u0434\u0430\u0442\u0447\u0438\u043a\u0430\u043c\u0438 \u043f\u043e\u0431\u043b\u0438\u0437\u0443 \u0441\u0432\u0456\u0442\u043b\u043e\u0444\u043e\u0440\u0430 \u0443\u0442\u043e\u0447\u043d\u044e\u0454 \u043f\u043e\u0437\u0438\u0446\u0456\u044e \u043c\u0430\u0440\u043a\u0435\u0440\u0430."

    invoke-static/range {v6 .. v11}, Lod/v6;->F(Ljava/lang/String;Ljava/lang/String;ZLi9/c;Lr0/q;I)V

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lua/nav/Tuning;

    iget-boolean v8, v4, Lua/nav/Tuning;->H:Z

    invoke-virtual {v10, v3}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v10, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_12

    if-ne v5, v13, :cond_13

    :cond_12
    new-instance v5, Lod/d6;

    invoke-direct {v5, v3, v1, v14}, Lod/d6;-><init>(Li9/c;Lr0/r2;I)V

    invoke-virtual {v10, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_13
    move-object v9, v5

    check-cast v9, Li9/c;

    const/16 v11, 0x36

    const-string v6, "\u0412\u0438\u044f\u0432\u043b\u044f\u0442\u0438 \u0441\u0445\u0456\u0434 \u0437 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443 \u0431\u0435\u0437 GPS"

    const-string v7, "\u0411\u0435\u0437 \u043d\u0430\u0434\u0456\u0439\u043d\u043e\u0433\u043e GPS \u0441\u0445\u0456\u0434 \u043f\u043e\u043c\u0456\u0447\u0430\u044e\u0442\u044c \u0433\u0456\u0440\u043e\u0441\u043a\u043e\u043f (\u0440\u043e\u0437\u0432\u043e\u0440\u043e\u0442 \u0430\u0431\u043e \u043f\u043e\u0432\u043e\u0440\u043e\u0442 \u043d\u0435 \u0437\u0430 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u043e\u043c), \u043c\u0435\u0440\u0435\u0436\u0430 (\u043f\u043e\u0437\u0438\u0446\u0456\u044f \u0434\u0430\u043b\u0435\u043a\u043e \u0432\u0456\u0434 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443) \u0456 \u0441\u0443\u043c\u043d\u0456\u0432\u043d\u0438\u0439 GPS: \u0437\'\u044f\u0432\u043b\u044f\u0454\u0442\u044c\u0441\u044f \u043f\u043b\u0430\u0448\u043a\u0430 \u00ab\u0421\u0445\u043e\u0436\u0435, \u0432\u0438 \u0437\u0456\u0439\u0448\u043b\u0438 \u0437 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443\u00bb. \u0429\u043e \u0434\u0430\u043b\u0456 \u2014 \u0432\u0438\u0440\u0456\u0448\u0443\u0454 \u00ab\u0410\u0432\u0442\u043e-\u043f\u0435\u0440\u0435\u0431\u0443\u0434\u043e\u0432\u0430 \u0431\u0435\u0437 GPS\u00bb."

    invoke-static/range {v6 .. v11}, Lod/v6;->F(Ljava/lang/String;Ljava/lang/String;ZLi9/c;Lr0/q;I)V

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lua/nav/Tuning;

    iget-boolean v8, v4, Lua/nav/Tuning;->t:Z

    invoke-virtual {v10, v3}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v10, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_14

    if-ne v5, v13, :cond_15

    :cond_14
    new-instance v5, Lod/d6;

    invoke-direct {v5, v3, v1, v15}, Lod/d6;-><init>(Li9/c;Lr0/r2;I)V

    invoke-virtual {v10, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_15
    move-object v9, v5

    check-cast v9, Li9/c;

    const/16 v11, 0x36

    const-string v6, "\u041d\u0435 \u043c\u0438\u043d\u0430\u0442\u0438 \u043f\u043e\u0432\u043e\u0440\u043e\u0442 \u0431\u0435\u0437 GPS, \u043f\u043e\u043a\u0438 \u043d\u0435 \u043f\u0456\u0434\u0442\u0432\u0435\u0440\u0434\u0438\u0442\u044c \u0433\u0456\u0440\u043e\u0441\u043a\u043e\u043f"

    const-string v7, "\u0411\u0435\u0437 GPS \u043c\u0430\u0440\u043a\u0435\u0440 \u0437\u0443\u043f\u0438\u043d\u044f\u0454\u0442\u044c\u0441\u044f \u043f\u0435\u0440\u0435\u0434 \u043a\u0440\u0443\u0442\u0438\u043c \u043f\u043e\u0432\u043e\u0440\u043e\u0442\u043e\u043c \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443, \u043f\u043e\u043a\u0438 \u0432\u0438 \u0441\u043f\u0440\u0430\u0432\u0434\u0456 \u043d\u0435 \u043f\u043e\u0432\u0435\u0440\u043d\u0435\u0442\u0435 \u043a\u0435\u0440\u043c\u043e (\u0430\u0431\u043e \u043d\u0435 \u043c\u0438\u043d\u0435 \u0447\u0430\u0441 \u043e\u0447\u0456\u043a\u0443\u0432\u0430\u043d\u043d\u044f \u043d\u0438\u0436\u0447\u0435) \u2014 \u0440\u0430\u043d\u0456\u0448\u0435 \u043c\u0456\u0433 \u00ab\u043f\u0440\u043e\u0457\u0445\u0430\u0442\u0438\u00bb \u043f\u043e\u0432\u043e\u0440\u043e\u0442 \u0437\u0430\u0437\u0434\u0430\u043b\u0435\u0433\u0456\u0434\u044c."

    invoke-static/range {v6 .. v11}, Lod/v6;->F(Ljava/lang/String;Ljava/lang/String;ZLi9/c;Lr0/q;I)V

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lua/nav/Tuning;

    iget-boolean v8, v4, Lua/nav/Tuning;->K:Z

    invoke-virtual {v10, v3}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v10, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_16

    if-ne v5, v13, :cond_17

    :cond_16
    new-instance v5, Lod/d6;

    const/4 v4, 0x6

    invoke-direct {v5, v3, v1, v4}, Lod/d6;-><init>(Li9/c;Lr0/r2;I)V

    invoke-virtual {v10, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_17
    move-object v9, v5

    check-cast v9, Li9/c;

    const/16 v11, 0x36

    const-string v6, "\u00ab\u0421\u0445\u043e\u0436\u0435, \u0432\u0438 \u043f\u0440\u043e\u0457\u0445\u0430\u043b\u0438 \u043f\u043e\u0432\u043e\u0440\u043e\u0442\u00bb \u0431\u0435\u0437 GPS (\u0435\u043a\u0441\u043f\u0435\u0440\u0438\u043c\u0435\u043d\u0442\u0430\u043b\u044c\u043d\u043e)"

    const-string v7, "\u041c\u0430\u0440\u043a\u0435\u0440 \u0447\u0435\u043a\u0430\u0454 \u0431\u0456\u043b\u044f \u043f\u043e\u0432\u043e\u0440\u043e\u0442\u0443, \u0430 \u043c\u0430\u0448\u0438\u043d\u0430 \u0437\u0430 \u0434\u0430\u0442\u0447\u0438\u043a\u0430\u043c\u0438 \u043f\u0440\u043e\u0457\u0445\u0430\u043b\u0430 \u0432\u043a\u0430\u0437\u0430\u043d\u0443 \u043d\u0438\u0436\u0447\u0435 \u0432\u0456\u0434\u0441\u0442\u0430\u043d\u044c, \u043d\u0435 \u043f\u043e\u0432\u0435\u0440\u043d\u0443\u0432\u0448\u0438 \u043a\u0435\u0440\u043c\u043e: \u043f\u0440\u043e\u043f\u043e\u043d\u0443\u0454 \u043f\u0435\u0440\u0435\u0431\u0443\u0434\u043e\u0432\u0443. \u0411\u0435\u0437 GPS \u043c\u0430\u0440\u043a\u0435\u0440 \u0447\u0430\u0441\u0442\u043e \u043f\u0440\u0438\u0445\u043e\u0434\u0438\u0442\u044c \u0434\u043e \u043f\u043e\u0432\u043e\u0440\u043e\u0442\u0443 \u0440\u0430\u043d\u0456\u0448\u0435 \u043c\u0430\u0448\u0438\u043d\u0438, \u0442\u043e\u043c\u0443 \u043c\u043e\u0436\u043b\u0438\u0432\u0456 \u0445\u0438\u0431\u043d\u0456 \u0441\u043f\u0440\u0430\u0446\u044e\u0432\u0430\u043d\u043d\u044f."

    invoke-static/range {v6 .. v11}, Lod/v6;->F(Ljava/lang/String;Ljava/lang/String;ZLi9/c;Lr0/q;I)V

    sget-object v4, Lsc/w0;->n:Lsc/w0;

    invoke-static {v4}, Ll7/a;->y(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lua/nav/Tuning;

    iget-object v0, v0, Lod/p5;->r:Lr0/u0;

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const/4 v11, 0x6

    move-object v9, v3

    invoke-static/range {v6 .. v11}, Lod/v6;->f(Ljava/util/Set;Lua/nav/Tuning;ZLi9/c;Lr0/q;I)V

    goto :goto_4

    :cond_18
    invoke-virtual {v10}, Lr0/q;->W()V

    :goto_4
    return-object v2

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Lw/b;

    move-object/from16 v6, p2

    check-cast v6, Lr0/q;

    move-object/from16 v7, p3

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v8, "$this$item"

    invoke-static {v1, v8}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v1, v7, 0x11

    if-eq v1, v3, :cond_19

    move v4, v5

    :cond_19
    and-int/lit8 v1, v7, 0x1

    invoke-virtual {v6, v1, v4}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_1a

    new-instance v7, Lod/p5;

    const/4 v14, 0x1

    iget-object v8, v0, Lod/p5;->m:Lua/nav/a;

    iget-object v9, v0, Lod/p5;->n:Li9/c;

    iget-object v10, v0, Lod/p5;->o:Lr0/r2;

    iget-object v11, v0, Lod/p5;->p:Lr0/r2;

    iget-object v12, v0, Lod/p5;->q:Lr0/r2;

    iget-object v13, v0, Lod/p5;->r:Lr0/u0;

    invoke-direct/range {v7 .. v14}, Lod/p5;-><init>(Lua/nav/a;Li9/c;Lr0/r2;Lr0/r2;Lr0/r2;Lr0/u0;I)V

    const v0, 0x7d508e2f

    invoke-static {v0, v7, v6}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v0

    const-string v1, "\u0412\u0435\u0434\u0435\u043d\u043d\u044f"

    const/16 v3, 0x36

    invoke-static {v1, v0, v6, v3}, Lod/v6;->B(Ljava/lang/String;Lz0/d;Lr0/q;I)V

    goto :goto_5

    :cond_1a
    invoke-virtual {v6}, Lr0/q;->W()V

    :goto_5
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
