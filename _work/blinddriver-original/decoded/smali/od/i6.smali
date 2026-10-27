.class public final synthetic Lod/i6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public final synthetic l:Z

.field public final synthetic m:Z

.field public final synthetic n:Lua/nav/routing/i;

.field public final synthetic o:Lr0/r2;

.field public final synthetic p:Lr0/u0;


# direct methods
.method public synthetic constructor <init>(ZZLua/nav/routing/i;Lr0/u0;Lr0/u0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lod/i6;->l:Z

    iput-boolean p2, p0, Lod/i6;->m:Z

    iput-object p3, p0, Lod/i6;->n:Lua/nav/routing/i;

    iput-object p4, p0, Lod/i6;->o:Lr0/r2;

    iput-object p5, p0, Lod/i6;->p:Lr0/u0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lu/s;

    move-object/from16 v10, p2

    check-cast v10, Lr0/q;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "$this$Section"

    invoke-static {v1, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v1, v2, 0x11

    const/16 v3, 0x10

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v3, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v5

    :goto_0
    and-int/2addr v2, v4

    invoke-virtual {v10, v2, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-boolean v1, v0, Lod/i6;->l:Z

    if-nez v1, :cond_1

    const v2, -0x61393edd

    invoke-virtual {v10, v2}, Lr0/q;->b0(I)V

    sget-object v2, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v10, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo0/h5;

    iget-object v2, v2, Lo0/h5;->k:Lp2/m0;

    const-wide v6, 0xffef6c00L

    invoke-static {v6, v7}, Lm1/v;->d(J)J

    move-result-wide v6

    const/16 v23, 0x0

    const v24, 0xfffa

    move-object/from16 v20, v2

    const-string v2, "\u041f\u043b\u0430\u0442\u043d\u0430 \u0444\u0443\u043d\u043a\u0446\u0456\u044f: \u0434\u043e\u0441\u0442\u0443\u043f\u043d\u0430 \u0432 \u043f\u0440\u043e\u0431\u043d\u043e\u043c\u0443 \u043f\u0435\u0440\u0456\u043e\u0434\u0456 \u0439 \u0437 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u043e\u044e. \u041d\u0430 \u0431\u0435\u0437\u043a\u043e\u0448\u0442\u043e\u0432\u043d\u043e\u043c\u0443 \u0442\u0430\u0440\u0438\u0444\u0456 \u043e\u0444\u043b\u0430\u0439\u043d-\u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438 \u0432\u0438\u043c\u043a\u043d\u0435\u043d\u043e."

    const/4 v3, 0x0

    move v8, v4

    move v9, v5

    move-wide v4, v6

    const-wide/16 v6, 0x0

    move v11, v8

    const/4 v8, 0x0

    move v12, v9

    const/4 v9, 0x0

    move-object/from16 v21, v10

    move v13, v11

    const-wide/16 v10, 0x0

    move v14, v12

    const/4 v12, 0x0

    move v15, v13

    move/from16 v16, v14

    const-wide/16 v13, 0x0

    move/from16 v17, v15

    const/4 v15, 0x0

    move/from16 v18, v16

    const/16 v16, 0x0

    move/from16 v19, v17

    const/16 v17, 0x0

    move/from16 v22, v18

    const/16 v18, 0x0

    move/from16 v25, v19

    const/16 v19, 0x0

    move/from16 v26, v22

    const/16 v22, 0x186

    move/from16 p1, v1

    move/from16 v1, v26

    invoke-static/range {v2 .. v24}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v10, v21

    :goto_1
    invoke-virtual {v10, v1}, Lr0/q;->q(Z)V

    goto :goto_2

    :cond_1
    move/from16 p1, v1

    move/from16 v25, v4

    move v1, v5

    const v2, -0x61367d21

    invoke-virtual {v10, v2}, Lr0/q;->b0(I)V

    goto :goto_1

    :goto_2
    iget-boolean v2, v0, Lod/i6;->m:Z

    if-eqz v2, :cond_2

    const v2, 0x78bc3203

    invoke-virtual {v10, v2}, Lr0/q;->b0(I)V

    const-string v2, "\u041e\u043a\u0440\u0435\u043c\u0438\u0439 \u0433\u0440\u0430\u0444 \u0434\u043b\u044f \u0432\u0430\u043d\u0442\u0430\u0436\u043d\u043e\u0433\u043e \u0440\u0435\u0436\u0438\u043c\u0443: \u0434\u043e \u0437\u0432\u0438\u0447\u0430\u0439\u043d\u0438\u0445 \u0434\u043e\u0440\u0456\u0433 \u0434\u043e\u0434\u0430\u043d\u043e \u0437\u043d\u0430\u043a\u0438 OpenStreetMap \u043f\u0440\u043e \u043c\u0430\u043a\u0441\u0438\u043c\u0430\u043b\u044c\u043d\u0443 \u043c\u0430\u0441\u0443, \u0432\u0438\u0441\u043e\u0442\u0443, \u0448\u0438\u0440\u0438\u043d\u0443 \u0439 \u0437\u0430\u0431\u043e\u0440\u043e\u043d\u0443 \u0432\u0430\u043d\u0442\u0430\u0436\u043d\u043e\u0433\u043e \u0440\u0443\u0445\u0443. \u041c\u0430\u0440\u0448\u0440\u0443\u0442 \u0432\u0430\u043d\u0442\u0430\u0436\u0456\u0432\u043a\u0438 \u0431\u0443\u0434\u0443\u0454\u0442\u044c\u0441\u044f \u043b\u0438\u0448\u0435 \u0437\u0430 \u0446\u0438\u043c \u0433\u0440\u0430\u0444\u043e\u043c (\u043d\u0430\u0432\u0456\u0442\u044c \u0437 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u043e\u043c), Mapbox \u0456 OSRM \u0446\u0438\u0445 \u0437\u043d\u0430\u043a\u0456\u0432 \u043d\u0435 \u0437\u043d\u0430\u044e\u0442\u044c. \u0413\u0440\u0430\u0444 \u0437\u0432\u0438\u0447\u0430\u0439\u043d\u0438\u0445 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0456\u0432 \u043b\u0438\u0448\u0430\u0454\u0442\u044c\u0441\u044f \u043e\u043a\u0440\u0435\u043c\u043e \u0439 \u043f\u043e\u0442\u0440\u0456\u0431\u0435\u043d \u0434\u043b\u044f \u043d\u043e\u0432\u043e\u0433\u043e \u0432\u0435\u0434\u0435\u043d\u043d\u044f \u0431\u0435\u0437 GPS. \u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043d\u044f \u0432\u0435\u043b\u0438\u043a\u043e\u0433\u043e \u0444\u0430\u0439\u043b\u0430: \u043a\u0440\u0430\u0449\u0435 \u043f\u043e Wi-Fi."

    invoke-static {v2}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v10, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/h5;

    iget-object v3, v3, Lo0/h5;->l:Lp2/m0;

    const/16 v23, 0x0

    const v24, 0xfffe

    move-object/from16 v20, v3

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v21, v10

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    invoke-static/range {v2 .. v24}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v10, v21

    invoke-virtual {v10, v1}, Lr0/q;->q(Z)V

    goto :goto_3

    :cond_2
    const v2, 0x78bc72d3

    invoke-virtual {v10, v2}, Lr0/q;->b0(I)V

    const-string v2, "\u0411\u0443\u0434\u0443\u0454 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438 \u0431\u0435\u0437 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0443 \u0437\u0430 \u0433\u0440\u0430\u0444\u043e\u043c \u0434\u043e\u0440\u0456\u0433 \u0423\u043a\u0440\u0430\u0457\u043d\u0438 (OpenStreetMap, \u0440\u0443\u0448\u0456\u0439 GraphHopper). \u0411\u0435\u0437 \u0437\u0430\u0442\u043e\u0440\u0456\u0432, \u0437\u043d\u0430\u043a\u0456\u0432 \u043e\u0431\u043c\u0435\u0436\u0435\u043d\u043d\u044f \u0448\u0432\u0438\u0434\u043a\u043e\u0441\u0442\u0456 \u0456 \u0441\u0432\u0456\u0442\u043b\u043e\u0444\u043e\u0440\u0456\u0432, \u043b\u0438\u0448\u0435 \u0430\u0432\u0442\u043e\u043c\u043e\u0431\u0456\u043b\u044c. \u0417 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u043e\u043c \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438 \u0431\u0443\u0434\u0443\u044e\u0442\u044c\u0441\u044f \u044f\u043a \u0440\u0430\u043d\u0456\u0448\u0435 (Mapbox \u0430\u0431\u043e OSRM, \u0456\u0437 \u0437\u0430\u0442\u043e\u0440\u0430\u043c\u0438), \u0430 \u0433\u0440\u0430\u0444 \u043f\u0456\u0434\u0445\u043e\u043f\u043b\u044e\u0454, \u043a\u043e\u043b\u0438 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0443 \u043d\u0435\u043c\u0430\u0454 \u0430\u0431\u043e \u043e\u043d\u043b\u0430\u0439\u043d-\u0441\u0435\u0440\u0432\u0456\u0441 \u043d\u0435 \u0432\u0456\u0434\u043f\u043e\u0432\u0456\u0432. \u041f\u0435\u0440\u0435\u0431\u0443\u0434\u043e\u0432\u0430 \u043f\u0456\u0434 \u0447\u0430\u0441 \u0432\u0435\u0434\u0435\u043d\u043d\u044f \u0442\u0435\u0436 \u043f\u0440\u0430\u0446\u044e\u0454 \u043e\u0444\u043b\u0430\u0439\u043d. \u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043d\u044f \u0432\u0435\u043b\u0438\u043a\u043e\u0433\u043e \u0444\u0430\u0439\u043b\u0430: \u043a\u0440\u0430\u0449\u0435 \u043f\u043e Wi-Fi."

    invoke-static {v2}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v10, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/h5;

    iget-object v3, v3, Lo0/h5;->l:Lp2/m0;

    const/16 v23, 0x0

    const v24, 0xfffe

    move-object/from16 v20, v3

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v21, v10

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    invoke-static/range {v2 .. v24}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v10, v21

    invoke-virtual {v10, v1}, Lr0/q;->q(Z)V

    :goto_3
    iget-object v2, v0, Lod/i6;->o:Lr0/r2;

    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lid/e1;

    iget-object v3, v3, Lid/e1;->a:Lua/nav/routing/RoutingPackInfo;

    sget-object v4, Lf1/o;->a:Lf1/o;

    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v6, v0, Lod/i6;->n:Lua/nav/routing/i;

    sget-object v7, Lr0/m;->a:Lr0/e;

    const/16 v26, 0x0

    if-eqz v3, :cond_b

    iget-object v8, v3, Lua/nav/routing/RoutingPackInfo;->c:Ljava/lang/String;

    const v9, -0x61250e95

    invoke-virtual {v10, v9}, Lr0/q;->b0(I)V

    iget-object v9, v3, Lua/nav/routing/RoutingPackInfo;->b:Ljava/lang/String;

    iget-wide v11, v3, Lua/nav/routing/RoutingPackInfo;->h:J

    invoke-static {v11, v12}, Lod/v6;->u(J)Ljava/lang/String;

    move-result-object v11

    const-string v12, ": \u0434\u0430\u043d\u0456 \u0432\u0456\u0434 "

    const-string v13, ", "

    const-string v14, "\u2713 "

    invoke-static {v14, v9, v12, v8, v13}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcd/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v11, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v10, v11}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo0/h5;

    iget-object v11, v11, Lo0/h5;->j:Lp2/m0;

    const/16 v23, 0x0

    const v24, 0xfffe

    move-object v12, v3

    const/4 v3, 0x0

    move-object v13, v4

    move v14, v5

    const-wide/16 v4, 0x0

    move-object v15, v6

    move-object/from16 v16, v7

    const-wide/16 v6, 0x0

    move-object/from16 v17, v8

    const/4 v8, 0x0

    move-object/from16 v18, v2

    move-object v2, v9

    const/4 v9, 0x0

    move-object/from16 v21, v10

    move-object/from16 v20, v11

    const-wide/16 v10, 0x0

    move-object/from16 v19, v12

    const/4 v12, 0x0

    move-object/from16 v22, v13

    move/from16 v27, v14

    const-wide/16 v13, 0x0

    move-object/from16 v28, v15

    const/4 v15, 0x0

    move-object/from16 v29, v16

    const/16 v16, 0x0

    move-object/from16 v30, v17

    const/16 v17, 0x0

    move-object/from16 v31, v18

    const/16 v18, 0x0

    move-object/from16 v32, v19

    const/16 v19, 0x0

    move-object/from16 v33, v22

    const/16 v22, 0x0

    move-object/from16 v35, v28

    move-object/from16 v36, v29

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    move-object/from16 v34, v33

    invoke-static/range {v2 .. v24}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v10, v21

    invoke-interface/range {v31 .. v31}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lid/e1;

    iget-object v2, v2, Lid/e1;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lua/nav/routing/RoutingPackInfo;

    iget-object v5, v4, Lua/nav/routing/RoutingPackInfo;->a:Ljava/lang/String;

    iget-object v6, v1, Lua/nav/routing/RoutingPackInfo;->a:Ljava/lang/String;

    invoke-static {v5, v6}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v4, v4, Lua/nav/routing/RoutingPackInfo;->c:Ljava/lang/String;

    invoke-static {v4, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_4

    :cond_4
    move-object/from16 v3, v26

    :goto_4
    check-cast v3, Lua/nav/routing/RoutingPackInfo;

    const/16 v0, 0x8

    int-to-float v0, v0

    invoke-static {v0}, Lu/h;->g(F)Lu/f;

    move-result-object v0

    move-object/from16 v14, v34

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-static {v14, v15}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v2

    sget-object v4, Lf1/c;->x:Lf1/h;

    const/4 v5, 0x6

    invoke-static {v0, v4, v10, v5}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v0

    iget-wide v4, v10, Lr0/q;->T:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v10}, Lr0/q;->m()Lr0/j1;

    move-result-object v5

    invoke-static {v2, v10}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v2

    sget-object v6, Le2/h;->b:Le2/g;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Le2/g;->b:Le2/f;

    invoke-virtual {v10}, Lr0/q;->e0()V

    iget-boolean v7, v10, Lr0/q;->S:Z

    if-eqz v7, :cond_5

    invoke-virtual {v10, v6}, Lr0/q;->l(Li9/a;)V

    goto :goto_5

    :cond_5
    invoke-virtual {v10}, Lr0/q;->o0()V

    :goto_5
    sget-object v6, Le2/g;->f:Le2/e;

    invoke-static {v6, v0, v10}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v0, Le2/g;->e:Le2/e;

    invoke-static {v0, v5, v10}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v4, Le2/g;->g:Le2/e;

    invoke-static {v10, v0, v4}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v0, Le2/g;->h:Le2/d;

    invoke-static {v10, v0}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v0, Le2/g;->d:Le2/e;

    invoke-static {v0, v2, v10}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    if-eqz v3, :cond_9

    const v0, 0x192326bd

    invoke-virtual {v10, v0}, Lr0/q;->b0(I)V

    invoke-interface/range {v31 .. v31}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lid/e1;

    iget-boolean v0, v0, Lid/e1;->c:Z

    if-nez v0, :cond_6

    if-eqz p1, :cond_6

    move/from16 v4, v25

    goto :goto_6

    :cond_6
    const/4 v4, 0x0

    :goto_6
    invoke-static {v14, v15}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v0

    move-object/from16 v2, v35

    invoke-virtual {v10, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v10, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_8

    move-object/from16 v5, v36

    if-ne v6, v5, :cond_7

    goto :goto_7

    :cond_7
    const/4 v7, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v5, v36

    :goto_7
    new-instance v6, Lod/r6;

    const/4 v7, 0x0

    invoke-direct {v6, v2, v1, v7}, Lod/r6;-><init>(Lua/nav/routing/i;Lua/nav/routing/RoutingPackInfo;I)V

    invoke-virtual {v10, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_8
    check-cast v6, Li9/a;

    new-instance v1, Lod/s6;

    invoke-direct {v1, v3, v7}, Lod/s6;-><init>(Lua/nav/routing/RoutingPackInfo;I)V

    const v3, 0x77f236f7

    invoke-static {v3, v1, v10}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v1

    const v12, 0x30000030

    const/16 v13, 0x1f8

    move-object/from16 v29, v5

    const/4 v5, 0x0

    move-object/from16 v28, v2

    move-object v2, v6

    const/4 v6, 0x0

    move/from16 v16, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v0

    move-object v11, v10

    move/from16 v15, v16

    move-object/from16 v0, v28

    move-object v10, v1

    move-object/from16 v1, v29

    invoke-static/range {v2 .. v13}, Lo0/z2;->b(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lo0/u;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    move-object v10, v11

    :goto_9
    invoke-virtual {v10, v15}, Lr0/q;->q(Z)V

    goto :goto_a

    :cond_9
    move-object/from16 v0, v35

    move-object/from16 v1, v36

    const/4 v15, 0x0

    const v2, 0x19256516

    invoke-virtual {v10, v2}, Lr0/q;->b0(I)V

    goto :goto_9

    :goto_a
    invoke-interface/range {v31 .. v31}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lid/e1;

    iget-boolean v2, v2, Lid/e1;->c:Z

    xor-int/lit8 v4, v2, 0x1

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-static {v14, v15}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v3

    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_a

    new-instance v2, Lod/p4;

    const/16 v5, 0x1c

    move-object/from16 v6, p0

    iget-object v6, v6, Lod/i6;->p:Lr0/u0;

    invoke-direct {v2, v6, v5}, Lod/p4;-><init>(Lr0/u0;I)V

    invoke-virtual {v10, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_a
    check-cast v2, Li9/a;

    sget-object v9, Lod/m;->G0:Lz0/d;

    const v11, 0x30000036

    const/16 v12, 0x1f8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v12}, Lo0/z2;->f(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    move/from16 v13, v25

    invoke-virtual {v10, v13}, Lr0/q;->q(Z)V

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lr0/q;->q(Z)V

    goto :goto_b

    :cond_b
    move v12, v1

    move-object/from16 v31, v2

    move-object v14, v4

    move-object v0, v6

    move-object v1, v7

    const v2, -0x61189041

    invoke-virtual {v10, v2}, Lr0/q;->b0(I)V

    invoke-virtual {v10, v12}, Lr0/q;->q(Z)V

    :goto_b
    const v2, 0x78bd270a

    invoke-virtual {v10, v2}, Lr0/q;->b0(I)V

    invoke-interface/range {v31 .. v31}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lid/e1;

    iget-object v2, v2, Lid/e1;->b:Ljava/util/List;

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lua/nav/routing/RoutingPackInfo;

    invoke-interface/range {v31 .. v31}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lid/e1;

    iget-object v5, v5, Lid/e1;->a:Lua/nav/routing/RoutingPackInfo;

    if-eqz v5, :cond_d

    iget-object v5, v5, Lua/nav/routing/RoutingPackInfo;->a:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v5, v26

    :goto_d
    iget-object v4, v4, Lua/nav/routing/RoutingPackInfo;->a:Ljava/lang/String;

    invoke-static {v5, v4}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_e
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x0

    :goto_e
    if-ge v5, v2, :cond_12

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v16, v5, 0x1

    check-cast v3, Lua/nav/routing/RoutingPackInfo;

    invoke-interface/range {v31 .. v31}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lid/e1;

    iget-boolean v4, v4, Lid/e1;->c:Z

    if-nez v4, :cond_f

    if-eqz p1, :cond_f

    const/4 v4, 0x1

    :goto_f
    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_10

    :cond_f
    const/4 v4, 0x0

    goto :goto_f

    :goto_10
    invoke-static {v14, v5}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v6

    invoke-virtual {v10, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v10, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v7, v8

    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_11

    if-ne v8, v1, :cond_10

    goto :goto_11

    :cond_10
    const/4 v13, 0x1

    goto :goto_12

    :cond_11
    :goto_11
    new-instance v8, Lod/r6;

    const/4 v13, 0x1

    invoke-direct {v8, v0, v3, v13}, Lod/r6;-><init>(Lua/nav/routing/i;Lua/nav/routing/RoutingPackInfo;I)V

    invoke-virtual {v10, v8}, Lr0/q;->l0(Ljava/lang/Object;)V

    :goto_12
    check-cast v8, Li9/a;

    new-instance v7, Lod/s6;

    invoke-direct {v7, v3, v13}, Lod/s6;-><init>(Lua/nav/routing/RoutingPackInfo;I)V

    const v3, -0x121b2e8b

    invoke-static {v3, v7, v10}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v3

    const v12, 0x30000030

    const/16 v13, 0x1f8

    move/from16 v27, v5

    const/4 v5, 0x0

    move-object/from16 v21, v10

    move-object v10, v3

    move-object v3, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v9, v2

    move-object v2, v8

    const/4 v8, 0x0

    move v11, v9

    const/4 v9, 0x0

    move/from16 v17, v11

    move-object/from16 v11, v21

    invoke-static/range {v2 .. v13}, Lo0/z2;->b(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lo0/u;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    move-object v10, v11

    move/from16 v5, v16

    move/from16 v2, v17

    goto :goto_e

    :cond_12
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lr0/q;->q(Z)V

    invoke-interface/range {v31 .. v31}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lid/e1;

    iget-boolean v2, v2, Lid/e1;->c:Z

    if-eqz v2, :cond_13

    invoke-interface/range {v31 .. v31}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lid/e1;

    iget-object v2, v2, Lid/e1;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_13

    const v2, 0x78bd54d5

    invoke-virtual {v10, v2}, Lr0/q;->b0(I)V

    invoke-interface/range {v31 .. v31}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lid/e1;

    iget-object v2, v2, Lid/e1;->e:Ljava/lang/String;

    invoke-interface/range {v31 .. v31}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lid/e1;

    iget v3, v3, Lid/e1;->d:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u2026 "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " %"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v10, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/h5;

    iget-object v3, v3, Lo0/h5;->k:Lp2/m0;

    const/16 v23, 0x0

    const v24, 0xfffe

    move-object/from16 v20, v3

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v21, v10

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    invoke-static/range {v2 .. v24}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v10, v21

    const/4 v12, 0x0

    :goto_13
    invoke-virtual {v10, v12}, Lr0/q;->q(Z)V

    goto :goto_14

    :cond_13
    const/4 v12, 0x0

    const v2, -0x61118661

    invoke-virtual {v10, v2}, Lr0/q;->b0(I)V

    goto :goto_13

    :goto_14
    invoke-interface/range {v31 .. v31}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lid/e1;

    iget-object v2, v2, Lid/e1;->a:Lua/nav/routing/RoutingPackInfo;

    if-nez v2, :cond_15

    invoke-interface/range {v31 .. v31}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lid/e1;

    iget-object v2, v2, Lid/e1;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface/range {v31 .. v31}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lid/e1;

    iget-boolean v2, v2, Lid/e1;->c:Z

    if-nez v2, :cond_15

    invoke-interface/range {v31 .. v31}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lid/e1;

    iget-object v2, v2, Lid/e1;->f:Ljava/lang/String;

    if-nez v2, :cond_15

    const v2, -0x610fc72e

    invoke-virtual {v10, v2}, Lr0/q;->b0(I)V

    sget-object v2, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->n()Lfd/o;

    move-result-object v2

    invoke-virtual {v2}, Lfd/o;->h()Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, "\u0421\u043f\u0438\u0441\u043e\u043a \u043f\u0430\u043a\u0435\u0442\u0456\u0432 \u043f\u043e\u0440\u043e\u0436\u043d\u0456\u0439."

    goto :goto_15

    :cond_14
    const-string v2, "\u041d\u0435\u043c\u0430\u0454 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0443: \u0441\u043f\u0438\u0441\u043e\u043a \u043f\u0430\u043a\u0435\u0442\u0456\u0432 \u043d\u0435\u0434\u043e\u0441\u0442\u0443\u043f\u043d\u0438\u0439."

    invoke-static {v2}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_15
    sget-object v3, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v10, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/h5;

    iget-object v3, v3, Lo0/h5;->l:Lp2/m0;

    sget-object v4, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v10, v4}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo0/u0;

    iget-wide v4, v4, Lo0/u0;->s:J

    const/16 v23, 0x0

    const v24, 0xfffa

    move-object/from16 v20, v3

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v21, v10

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    invoke-static/range {v2 .. v24}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v10, v21

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lr0/q;->q(Z)V

    goto :goto_16

    :cond_15
    const/4 v12, 0x0

    const v2, -0x610baea1

    invoke-virtual {v10, v2}, Lr0/q;->b0(I)V

    invoke-virtual {v10, v12}, Lr0/q;->q(Z)V

    :goto_16
    invoke-interface/range {v31 .. v31}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lid/e1;

    iget-object v2, v2, Lid/e1;->f:Ljava/lang/String;

    if-nez v2, :cond_16

    const v2, -0x610b58c7

    invoke-virtual {v10, v2}, Lr0/q;->b0(I)V

    :goto_17
    invoke-virtual {v10, v12}, Lr0/q;->q(Z)V

    goto :goto_18

    :cond_16
    const v3, -0x610b58c6

    invoke-virtual {v10, v3}, Lr0/q;->b0(I)V

    sget-object v3, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v10, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/h5;

    iget-object v3, v3, Lo0/h5;->l:Lp2/m0;

    sget-object v4, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v10, v4}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo0/u0;

    iget-wide v4, v4, Lo0/u0;->w:J

    const/16 v23, 0x0

    const v24, 0xfffa

    move-object/from16 v20, v3

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v21, v10

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    invoke-static/range {v2 .. v24}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v10, v21

    const/4 v12, 0x0

    goto :goto_17

    :goto_18
    invoke-virtual {v10, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_17

    if-ne v3, v1, :cond_18

    :cond_17
    new-instance v3, Lod/x4;

    const/4 v1, 0x2

    invoke-direct {v3, v1, v0}, Lod/x4;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v10, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_18
    move-object v2, v3

    check-cast v2, Li9/a;

    invoke-interface/range {v31 .. v31}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lid/e1;

    iget-boolean v0, v0, Lid/e1;->c:Z

    const/16 v25, 0x1

    xor-int/lit8 v4, v0, 0x1

    sget-object v9, Lod/m;->H0:Lz0/d;

    const/high16 v11, 0x30000000

    const/16 v12, 0x1fa

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v12}, Lo0/z2;->f(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    goto :goto_19

    :cond_19
    move-object/from16 v21, v10

    invoke-virtual/range {v21 .. v21}, Lr0/q;->W()V

    :goto_19
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
