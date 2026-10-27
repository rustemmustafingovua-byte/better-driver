.class public final synthetic Lod/k6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public final synthetic l:Z

.field public final synthetic m:Ljava/util/List;

.field public final synthetic n:Lr0/u0;

.field public final synthetic o:Lr0/r2;


# direct methods
.method public synthetic constructor <init>(ZLjava/util/List;Lr0/u0;Lr0/u0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lod/k6;->l:Z

    iput-object p2, p0, Lod/k6;->m:Ljava/util/List;

    iput-object p3, p0, Lod/k6;->n:Lr0/u0;

    iput-object p4, p0, Lod/k6;->o:Lr0/r2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lu/s;

    move-object/from16 v10, p2

    check-cast v10, Lr0/q;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Lf1/c;->v:Lf1/i;

    const-string v4, "$this$Section"

    invoke-static {v1, v4}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v1, v2, 0x11

    const/16 v4, 0x10

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v1, v4, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    move v1, v6

    :goto_0
    and-int/2addr v2, v5

    invoke-virtual {v10, v2, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_39

    iget-boolean v1, v0, Lod/k6;->l:Z

    if-nez v1, :cond_1

    const v2, 0x3089f8f8

    invoke-virtual {v10, v2}, Lr0/q;->b0(I)V

    sget-object v2, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v10, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo0/h5;

    iget-object v2, v2, Lo0/h5;->k:Lp2/m0;

    const-wide v7, 0xffef6c00L

    invoke-static {v7, v8}, Lm1/v;->d(J)J

    move-result-wide v7

    const/16 v23, 0x0

    const v24, 0xfffa

    move-object/from16 v20, v2

    const-string v2, "\u041f\u043b\u0430\u0442\u043d\u0430 \u0444\u0443\u043d\u043a\u0446\u0456\u044f: \u0434\u043e\u0441\u0442\u0443\u043f\u043d\u0430 \u0432 \u043f\u0440\u043e\u0431\u043d\u043e\u043c\u0443 \u043f\u0435\u0440\u0456\u043e\u0434\u0456 \u0439 \u0437 \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u043e\u044e. \u041d\u0430 \u0431\u0435\u0437\u043a\u043e\u0448\u0442\u043e\u0432\u043d\u043e\u043c\u0443 \u0442\u0430\u0440\u0438\u0444\u0456 \u043e\u0444\u043b\u0430\u0439\u043d-\u043f\u043e\u0448\u0443\u043a \u0432\u0438\u043c\u043a\u043d\u0435\u043d\u043e."

    move-object v4, v3

    const/4 v3, 0x0

    move v9, v5

    move v11, v6

    move-wide/from16 v42, v7

    move-object v8, v4

    move-wide/from16 v4, v42

    const-wide/16 v6, 0x0

    move-object v12, v8

    const/4 v8, 0x0

    move v13, v9

    const/4 v9, 0x0

    move-object/from16 v21, v10

    move v14, v11

    const-wide/16 v10, 0x0

    move-object v15, v12

    const/4 v12, 0x0

    move/from16 v16, v13

    move/from16 v17, v14

    const-wide/16 v13, 0x0

    move-object/from16 v18, v15

    const/4 v15, 0x0

    move/from16 v19, v16

    const/16 v16, 0x0

    move/from16 v22, v17

    const/16 v17, 0x0

    move-object/from16 v25, v18

    const/16 v18, 0x0

    move/from16 v26, v19

    const/16 v19, 0x0

    move/from16 v27, v22

    const/16 v22, 0x186

    move/from16 p1, v1

    move-object/from16 v28, v25

    move/from16 v1, v27

    invoke-static/range {v2 .. v24}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v10, v21

    :goto_1
    invoke-virtual {v10, v1}, Lr0/q;->q(Z)V

    goto :goto_2

    :cond_1
    move/from16 p1, v1

    move-object/from16 v28, v3

    move v1, v6

    const v2, 0x308caf71

    invoke-virtual {v10, v2}, Lr0/q;->b0(I)V

    goto :goto_1

    :goto_2
    const-string v2, "\u041f\u043e\u0448\u0443\u043a \u0432\u0443\u043b\u0438\u0446\u044c, \u0431\u0443\u0434\u0438\u043d\u043a\u0456\u0432, \u043d\u0430\u0441\u0435\u043b\u0435\u043d\u0438\u0445 \u043f\u0443\u043d\u043a\u0442\u0456\u0432 \u0456 \u043c\u0456\u0441\u0446\u044c \u0431\u0435\u0437 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0443 \u0437\u0430 \u043a\u0430\u0442\u0430\u043b\u043e\u0433\u043e\u043c, \u0437\u0456\u0431\u0440\u0430\u043d\u0438\u043c \u0437 OpenStreetMap. \u041a\u0430\u0442\u0430\u043b\u043e\u0433\u0438 \u043f\u043e \u043e\u0431\u043b\u0430\u0441\u0442\u044f\u0445, \u043a\u043e\u0436\u0435\u043d \u0432\u0456\u0434 \u043a\u0456\u043b\u044c\u043a\u043e\u0445 \u0434\u043e \u043a\u0456\u043b\u044c\u043a\u043e\u0445 \u0434\u0435\u0441\u044f\u0442\u043a\u0456\u0432 \u041c\u0411: \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0442\u0435 \u043b\u0438\u0448\u0435 \u0442\u0456 \u043e\u0431\u043b\u0430\u0441\u0442\u0456, \u0434\u0435 \u0432\u0438 \u0431\u0443\u0432\u0430\u0454\u0442\u0435. \u0417 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u043e\u043c \u043f\u0456\u0434\u043a\u0430\u0437\u043a\u0438 \u0439 \u0434\u0430\u043b\u0456 \u0434\u0430\u0454 \u043e\u043d\u043b\u0430\u0439\u043d-\u043f\u043e\u0448\u0443\u043a; \u043a\u0430\u0442\u0430\u043b\u043e\u0433 \u043f\u0456\u0434\u043a\u0430\u0437\u0443\u0454, \u043a\u043e\u043b\u0438 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0443 \u043d\u0435\u043c\u0430\u0454 \u0430\u0431\u043e \u043e\u043d\u043b\u0430\u0439\u043d-\u043f\u043e\u0448\u0443\u043a \u043d\u0456\u0447\u043e\u0433\u043e \u043d\u0435 \u0437\u043d\u0430\u0439\u0448\u043e\u0432. \u0423 \u0441\u0456\u043b\u044c\u0441\u044c\u043a\u0456\u0439 \u043c\u0456\u0441\u0446\u0435\u0432\u043e\u0441\u0442\u0456 \u0430\u0434\u0440\u0435\u0441\u0438 \u0432 OpenStreetMap \u043f\u043e\u0432\u043d\u0456 \u0433\u0456\u0440\u0448\u0435, \u043d\u0456\u0436 \u0443 \u043c\u0456\u0441\u0442\u0430\u0445."

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

    iget-object v13, v0, Lod/k6;->n:Lr0/u0;

    invoke-interface {v13}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyc/d;

    iget-object v2, v2, Lyc/d;->b:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lua/nav/geo/PackInfo;

    invoke-interface {v13}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lyc/d;

    iget-object v6, v6, Lyc/d;->a:Ljava/util/List;

    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_4

    :cond_2
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lua/nav/geo/PackInfo;

    iget-object v7, v7, Lua/nav/geo/PackInfo;->a:Ljava/lang/String;

    iget-object v8, v5, Lua/nav/geo/PackInfo;->a:Ljava/lang/String;

    invoke-static {v7, v8}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_4
    :goto_4
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    sget-object v14, Lf1/o;->a:Lf1/o;

    const/high16 v15, 0x3f800000    # 1.0f

    sget-object v4, Lr0/m;->a:Lr0/e;

    const/4 v9, 0x1

    if-le v2, v9, :cond_8

    const v2, 0x30973a42

    invoke-virtual {v10, v2}, Lr0/q;->b0(I)V

    invoke-interface {v13}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyc/d;

    iget-boolean v2, v2, Lyc/d;->c:Z

    if-nez v2, :cond_6

    if-eqz p1, :cond_6

    const/4 v5, 0x1

    goto :goto_5

    :cond_6
    move v5, v1

    :goto_5
    invoke-static {v14, v15}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v2

    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v4, :cond_7

    new-instance v6, Ln/k1;

    const/16 v7, 0x19

    invoke-direct {v6, v7}, Ln/k1;-><init>(I)V

    invoke-virtual {v10, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_7
    check-cast v6, Li9/a;

    new-instance v7, Lb0/x2;

    const/16 v8, 0xc

    invoke-direct {v7, v8, v3}, Lb0/x2;-><init>(ILjava/lang/Object;)V

    const v3, 0x36c7036d

    invoke-static {v3, v7, v10}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v9

    const v11, 0x30000036

    const/16 v12, 0x1f8

    move-object v3, v4

    move v4, v5

    const/4 v5, 0x0

    move-object v7, v3

    move-object v3, v2

    move-object v2, v6

    const/4 v6, 0x0

    move-object v8, v7

    const/4 v7, 0x0

    move-object/from16 v16, v8

    const/4 v8, 0x0

    move-object/from16 v17, v13

    move-object/from16 v13, v16

    invoke-static/range {v2 .. v12}, Lo0/z2;->f(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    invoke-virtual {v10, v1}, Lr0/q;->q(Z)V

    goto :goto_6

    :cond_8
    move-object/from16 v17, v13

    move-object v13, v4

    const v2, 0x309ae231

    invoke-virtual {v10, v2}, Lr0/q;->b0(I)V

    invoke-virtual {v10, v1}, Lr0/q;->q(Z)V

    :goto_6
    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v13, :cond_9

    new-instance v3, Ln/k1;

    const/16 v4, 0x1a

    invoke-direct {v3, v4}, Ln/k1;-><init>(I)V

    invoke-virtual {v10, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_9
    check-cast v3, Li9/a;

    invoke-static {v2, v3, v10}, Lc1/k;->c([Ljava/lang/Object;Li9/a;Lr0/q;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr0/u0;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v0, Lod/k6;->m:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    iget-object v7, v0, Lod/k6;->o:Lr0/r2;

    const/4 v8, 0x0

    if-eqz v6, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Lua/nav/geo/PackInfo;

    invoke-static {v7, v9}, Lod/v6;->w(Lr0/r2;Lua/nav/geo/PackInfo;)Z

    move-result v7

    if-nez v7, :cond_10

    invoke-interface/range {v17 .. v17}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lyc/d;

    iget-object v7, v7, Lyc/d;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Lua/nav/geo/PackInfo;

    iget-object v12, v12, Lua/nav/geo/PackInfo;->a:Ljava/lang/String;

    iget-object v1, v9, Lua/nav/geo/PackInfo;->a:Ljava/lang/String;

    invoke-static {v12, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object v8, v11

    goto :goto_9

    :cond_a
    const/4 v1, 0x0

    goto :goto_8

    :cond_b
    :goto_9
    check-cast v8, Lua/nav/geo/PackInfo;

    if-nez v8, :cond_c

    goto :goto_a

    :cond_c
    invoke-interface/range {v17 .. v17}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyc/d;

    iget-object v1, v1, Lyc/d;->b:Ljava/util/List;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_d

    goto :goto_a

    :cond_d
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lua/nav/geo/PackInfo;

    iget-object v11, v7, Lua/nav/geo/PackInfo;->a:Ljava/lang/String;

    iget-object v12, v9, Lua/nav/geo/PackInfo;->a:Ljava/lang/String;

    invoke-static {v11, v12}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    iget-object v7, v7, Lua/nav/geo/PackInfo;->c:Ljava/lang/String;

    iget-object v11, v8, Lua/nav/geo/PackInfo;->c:Ljava/lang/String;

    invoke-static {v7, v11}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    goto :goto_b

    :cond_f
    :goto_a
    const/4 v1, 0x0

    goto :goto_7

    :cond_10
    :goto_b
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_11
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const-string v1, "invalid weight; must be greater than zero"

    const-wide/16 v29, 0x0

    const/16 v5, 0x8

    const/16 v6, 0x30

    if-nez v0, :cond_17

    const v0, 0x30bcc461

    invoke-virtual {v10, v0}, Lr0/q;->b0(I)V

    invoke-static {v14, v15}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v0

    invoke-virtual {v10, v2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v11

    if-nez v9, :cond_12

    if-ne v11, v13, :cond_13

    :cond_12
    new-instance v11, Lod/p4;

    const/16 v9, 0x9

    invoke-direct {v11, v2, v9}, Lod/p4;-><init>(Lr0/u0;I)V

    invoke-virtual {v10, v11}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_13
    check-cast v11, Li9/a;

    const/16 v9, 0xf

    const/4 v12, 0x0

    invoke-static {v0, v12, v8, v11, v9}, Lp/o;->k(Lf1/r;ZLjava/lang/String;Li9/a;I)Lf1/r;

    move-result-object v0

    int-to-float v9, v5

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v0, v11, v9, v12}, Lu/b;->r(Lf1/r;FFI)Lf1/r;

    move-result-object v0

    sget-object v9, Lu/h;->a:Lu/n;

    move-object/from16 v11, v28

    invoke-static {v9, v11, v10, v6}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v9

    iget-wide v5, v10, Lr0/q;->T:J

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {v10}, Lr0/q;->m()Lr0/j1;

    move-result-object v6

    invoke-static {v0, v10}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v0

    sget-object v12, Le2/h;->b:Le2/g;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Le2/g;->b:Le2/f;

    invoke-virtual {v10}, Lr0/q;->e0()V

    iget-boolean v8, v10, Lr0/q;->S:Z

    if-eqz v8, :cond_14

    invoke-virtual {v10, v12}, Lr0/q;->l(Li9/a;)V

    goto :goto_c

    :cond_14
    invoke-virtual {v10}, Lr0/q;->o0()V

    :goto_c
    sget-object v8, Le2/g;->f:Le2/e;

    invoke-static {v8, v9, v10}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v8, Le2/g;->e:Le2/e;

    invoke-static {v8, v6, v10}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Le2/g;->g:Le2/e;

    invoke-static {v10, v5, v6}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v5, Le2/g;->h:Le2/d;

    invoke-static {v10, v5}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v5, Le2/g;->d:Le2/e;

    invoke-static {v5, v0, v10}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface/range {v17 .. v17}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyc/d;

    iget-object v5, v5, Lyc/d;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "\u0423\u0441\u0456 \u043e\u0431\u043b\u0430\u0441\u0442\u0456 ("

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", \u0432\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d\u043e "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcd/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v10, v5}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo0/h5;

    iget-object v6, v6, Lo0/h5;->i:Lp2/m0;

    float-to-double v8, v15

    cmpl-double v8, v8, v29

    if-lez v8, :cond_15

    :goto_d
    move-object v8, v3

    goto :goto_e

    :cond_15
    invoke-static {v1}, Lv/a;->a(Ljava/lang/String;)V

    goto :goto_d

    :goto_e
    new-instance v3, Lu/j0;

    const/4 v9, 0x1

    invoke-direct {v3, v15, v9}, Lu/j0;-><init>(FZ)V

    const/16 v23, 0x0

    const v24, 0xfffc

    move-object v12, v4

    move-object v9, v5

    const-wide/16 v4, 0x0

    move-object/from16 v20, v6

    move-object/from16 v16, v7

    const-wide/16 v6, 0x0

    move-object/from16 v18, v8

    const/4 v8, 0x0

    move-object/from16 v19, v9

    const/4 v9, 0x0

    move-object/from16 v21, v10

    move-object/from16 v28, v11

    const-wide/16 v10, 0x0

    move-object/from16 v22, v12

    const/4 v12, 0x0

    move-object/from16 v31, v13

    move-object/from16 v25, v14

    const-wide/16 v13, 0x0

    move/from16 v32, v15

    const/4 v15, 0x0

    move-object/from16 v33, v16

    const/16 v16, 0x0

    move-object/from16 v34, v17

    const/16 v17, 0x0

    move-object/from16 v35, v18

    const/16 v18, 0x0

    move-object/from16 v36, v19

    const/16 v19, 0x0

    move-object/from16 v37, v22

    const/16 v22, 0x0

    move-object/from16 p0, v2

    move-object v2, v0

    move-object/from16 v0, v25

    move-object/from16 v25, p0

    move-object/from16 p0, v1

    move-object/from16 v40, v31

    move-object/from16 v38, v33

    move-object/from16 v1, v36

    invoke-static/range {v2 .. v24}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v10, v21

    invoke-interface/range {v25 .. v25}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "\u25b2"

    goto :goto_f

    :cond_16
    const-string v2, "\u25bc"

    :goto_f
    invoke-virtual {v10, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/h5;

    iget-object v1, v1, Lo0/h5;->i:Lp2/m0;

    const/16 v23, 0x0

    const v24, 0xfffe

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

    move-object/from16 v20, v1

    invoke-static/range {v2 .. v24}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v10, v21

    const/4 v9, 0x1

    invoke-virtual {v10, v9}, Lr0/q;->q(Z)V

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lr0/q;->q(Z)V

    goto :goto_10

    :cond_17
    move-object/from16 p0, v1

    move-object/from16 v25, v2

    move-object/from16 v35, v3

    move-object/from16 v37, v4

    move-object/from16 v38, v7

    move-object/from16 v40, v13

    move-object v0, v14

    move-object/from16 v34, v17

    const/4 v12, 0x0

    const v1, 0x30c4a931

    invoke-virtual {v10, v1}, Lr0/q;->b0(I)V

    invoke-virtual {v10, v12}, Lr0/q;->q(Z)V

    :goto_10
    const v1, -0x618609b9

    invoke-virtual {v10, v1}, Lr0/q;->b0(I)V

    invoke-interface/range {v25 .. v25}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_18

    move-object/from16 v3, v37

    goto :goto_11

    :cond_18
    move-object/from16 v3, v35

    :goto_11
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lua/nav/geo/PackInfo;

    sget-object v3, Lua/nav/geo/PackInfo;->Companion:Lua/nav/geo/PackInfo$Companion;

    invoke-interface/range {v34 .. v34}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyc/d;

    iget-object v3, v3, Lyc/d;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v4, v8

    check-cast v4, Lua/nav/geo/PackInfo;

    iget-object v4, v4, Lua/nav/geo/PackInfo;->a:Ljava/lang/String;

    iget-object v5, v2, Lua/nav/geo/PackInfo;->a:Ljava/lang/String;

    invoke-static {v4, v5}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    goto :goto_13

    :cond_1a
    const/4 v8, 0x0

    :goto_13
    move-object v3, v8

    check-cast v3, Lua/nav/geo/PackInfo;

    invoke-interface/range {v34 .. v34}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyc/d;

    iget-object v4, v4, Lyc/d;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v5, v8

    check-cast v5, Lua/nav/geo/PackInfo;

    iget-object v5, v5, Lua/nav/geo/PackInfo;->a:Ljava/lang/String;

    iget-object v6, v2, Lua/nav/geo/PackInfo;->a:Ljava/lang/String;

    invoke-static {v5, v6}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    goto :goto_14

    :cond_1c
    const/4 v8, 0x0

    :goto_14
    check-cast v8, Lua/nav/geo/PackInfo;

    if-eqz v3, :cond_1d

    if-eqz v8, :cond_1d

    iget-object v4, v8, Lua/nav/geo/PackInfo;->c:Ljava/lang/String;

    iget-object v5, v3, Lua/nav/geo/PackInfo;->c:Ljava/lang/String;

    invoke-static {v4, v5}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    const/16 v25, 0x1

    :goto_15
    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_16

    :cond_1d
    const/16 v25, 0x0

    goto :goto_15

    :goto_16
    invoke-static {v0, v4}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v5

    sget-object v6, Lu/h;->a:Lu/n;

    move-object/from16 v7, v28

    const/16 v8, 0x30

    invoke-static {v6, v7, v10, v8}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v6

    iget-wide v11, v10, Lr0/q;->T:J

    invoke-static {v11, v12}, Ljava/lang/Long;->hashCode(J)I

    move-result v9

    invoke-virtual {v10}, Lr0/q;->m()Lr0/j1;

    move-result-object v11

    invoke-static {v5, v10}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v5

    sget-object v12, Le2/h;->b:Le2/g;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Le2/g;->b:Le2/f;

    invoke-virtual {v10}, Lr0/q;->e0()V

    iget-boolean v13, v10, Lr0/q;->S:Z

    if-eqz v13, :cond_1e

    invoke-virtual {v10, v12}, Lr0/q;->l(Li9/a;)V

    goto :goto_17

    :cond_1e
    invoke-virtual {v10}, Lr0/q;->o0()V

    :goto_17
    sget-object v13, Le2/g;->f:Le2/e;

    invoke-static {v13, v6, v10}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v6, Le2/g;->e:Le2/e;

    invoke-static {v6, v11, v10}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v11, Le2/g;->g:Le2/e;

    invoke-static {v10, v9, v11}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v9, Le2/g;->h:Le2/d;

    invoke-static {v10, v9}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v14, Le2/g;->d:Le2/e;

    invoke-static {v14, v5, v10}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    move-object v5, v9

    float-to-double v8, v4

    cmpl-double v8, v8, v29

    if-lez v8, :cond_1f

    goto :goto_18

    :cond_1f
    invoke-static/range {p0 .. p0}, Lv/a;->a(Ljava/lang/String;)V

    :goto_18
    new-instance v8, Lu/j0;

    const/4 v9, 0x1

    invoke-direct {v8, v4, v9}, Lu/j0;-><init>(FZ)V

    sget-object v9, Lu/h;->c:Lu/c;

    sget-object v15, Lf1/c;->x:Lf1/h;

    const/4 v4, 0x0

    invoke-static {v9, v15, v10, v4}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v9

    move-object v15, v3

    iget-wide v3, v10, Lr0/q;->T:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    invoke-virtual {v10}, Lr0/q;->m()Lr0/j1;

    move-result-object v4

    invoke-static {v8, v10}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v8

    invoke-virtual {v10}, Lr0/q;->e0()V

    move-object/from16 v28, v1

    iget-boolean v1, v10, Lr0/q;->S:Z

    if-eqz v1, :cond_20

    invoke-virtual {v10, v12}, Lr0/q;->l(Li9/a;)V

    goto :goto_19

    :cond_20
    invoke-virtual {v10}, Lr0/q;->o0()V

    :goto_19
    invoke-static {v13, v9, v10}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v6, v4, v10}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v3, v10, v11, v10, v5}, Lm/a;->r(ILr0/q;Le2/e;Lr0/q;Le2/d;)V

    invoke-static {v14, v8, v10}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const-string v1, ""

    if-eqz v15, :cond_21

    const-string v3, "\u2713 "

    goto :goto_1a

    :cond_21
    move-object v3, v1

    :goto_1a
    iget-object v4, v2, Lua/nav/geo/PackInfo;->b:Ljava/lang/String;

    move-object/from16 v5, v38

    invoke-static {v5, v2}, Lod/v6;->w(Lr0/r2;Lua/nav/geo/PackInfo;)Z

    move-result v6

    if-eqz v6, :cond_22

    const-string v6, " (\u0432\u0438 \u0442\u0443\u0442)"

    goto :goto_1b

    :cond_22
    move-object v6, v1

    :goto_1b
    invoke-static {v3, v4, v6}, La6/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v10, v4}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo0/h5;

    iget-object v6, v6, Lo0/h5;->j:Lp2/m0;

    const/16 v23, 0x0

    const v24, 0xfffe

    move-object v8, v2

    move-object v2, v3

    const/4 v3, 0x0

    move-object v9, v4

    move-object/from16 v16, v5

    const-wide/16 v4, 0x0

    move-object/from16 v20, v6

    move-object v12, v7

    const-wide/16 v6, 0x0

    move-object v11, v8

    const/4 v8, 0x0

    move-object v13, v9

    const/4 v9, 0x0

    move-object/from16 v21, v10

    move-object v14, v11

    const-wide/16 v10, 0x0

    move-object/from16 v18, v12

    const/4 v12, 0x0

    move-object/from16 v19, v13

    move-object/from16 v17, v14

    const-wide/16 v13, 0x0

    move-object/from16 v22, v15

    const/4 v15, 0x0

    move-object/from16 v33, v16

    const/16 v16, 0x0

    move-object/from16 v31, v17

    const/16 v17, 0x0

    move-object/from16 v35, v18

    const/16 v18, 0x0

    move-object/from16 v36, v19

    const/16 v19, 0x0

    move-object/from16 v38, v22

    const/16 v22, 0x0

    move-object/from16 p2, v1

    move-object/from16 v1, v31

    move-object/from16 v41, v36

    const/high16 v32, 0x3f800000    # 1.0f

    const/16 v39, 0x30

    move-object/from16 v31, v0

    move-object/from16 v0, v38

    invoke-static/range {v2 .. v24}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v10, v21

    if-eqz v0, :cond_26

    iget-object v2, v0, Lua/nav/geo/PackInfo;->c:Ljava/lang/String;

    iget-wide v3, v0, Lua/nav/geo/PackInfo;->g:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_23

    goto :goto_1c

    :cond_23
    const/4 v8, 0x0

    :goto_1c
    if-eqz v8, :cond_24

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_1d

    :cond_24
    iget-wide v3, v0, Lua/nav/geo/PackInfo;->f:J

    :goto_1d
    invoke-static {v3, v4}, Lod/v6;->x(J)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u0432\u0435\u0440\u0441\u0456\u044f "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcd/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v25, :cond_25

    const-string v3, ", \u0454 \u043e\u043d\u043e\u0432\u043b\u0435\u043d\u043d\u044f"

    goto :goto_1e

    :cond_25
    move-object/from16 v3, p2

    :goto_1e
    invoke-static {v2, v3}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1f
    move-object/from16 v13, v41

    goto :goto_20

    :cond_26
    iget-wide v2, v1, Lua/nav/geo/PackInfo;->f:J

    invoke-static {v2, v3}, Lod/v6;->x(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043d\u044f "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcd/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1f

    :goto_20
    invoke-virtual {v10, v13}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

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

    const/4 v9, 0x1

    invoke-virtual {v10, v9}, Lr0/q;->q(Z)V

    const/16 v14, 0x8

    int-to-float v2, v14

    move-object/from16 v15, v31

    invoke-static {v15, v2}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v2

    invoke-static {v2, v10}, Lu/b;->e(Lf1/r;Lr0/q;)V

    if-nez v0, :cond_2a

    const v0, 0x11a6b076

    invoke-virtual {v10, v0}, Lr0/q;->b0(I)V

    invoke-virtual {v10, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_27

    move-object/from16 v0, v40

    if-ne v2, v0, :cond_28

    goto :goto_21

    :cond_27
    move-object/from16 v0, v40

    :goto_21
    new-instance v2, Lod/x5;

    const/4 v12, 0x0

    invoke-direct {v2, v1, v12}, Lod/x5;-><init>(Lua/nav/geo/PackInfo;I)V

    invoke-virtual {v10, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_28
    check-cast v2, Li9/a;

    invoke-interface/range {v34 .. v34}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyc/d;

    iget-boolean v1, v1, Lyc/d;->c:Z

    if-nez v1, :cond_29

    if-eqz p1, :cond_29

    const/4 v4, 0x1

    :goto_22
    move-object/from16 v21, v10

    goto :goto_23

    :cond_29
    const/4 v4, 0x0

    goto :goto_22

    :goto_23
    sget-object v10, Lod/m;->L0:Lz0/d;

    const/high16 v12, 0x30000000

    const/16 v13, 0x1fa

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v11, v21

    invoke-static/range {v2 .. v13}, Lo0/z2;->b(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lo0/u;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    move-object v10, v11

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lr0/q;->q(Z)V

    :goto_24
    const/4 v9, 0x1

    goto/16 :goto_27

    :cond_2a
    move-object/from16 v0, v40

    if-eqz v25, :cond_2e

    const v2, 0x11a6c192

    invoke-virtual {v10, v2}, Lr0/q;->b0(I)V

    invoke-virtual {v10, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_2b

    if-ne v3, v0, :cond_2c

    :cond_2b
    new-instance v3, Lod/x5;

    const/4 v9, 0x1

    invoke-direct {v3, v1, v9}, Lod/x5;-><init>(Lua/nav/geo/PackInfo;I)V

    invoke-virtual {v10, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2c
    move-object v2, v3

    check-cast v2, Li9/a;

    invoke-interface/range {v34 .. v34}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyc/d;

    iget-boolean v1, v1, Lyc/d;->c:Z

    if-nez v1, :cond_2d

    if-eqz p1, :cond_2d

    const/4 v4, 0x1

    :goto_25
    move-object/from16 v21, v10

    goto :goto_26

    :cond_2d
    const/4 v4, 0x0

    goto :goto_25

    :goto_26
    sget-object v10, Lod/m;->M0:Lz0/d;

    const/high16 v12, 0x30000000

    const/16 v13, 0x1fa

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v11, v21

    invoke-static/range {v2 .. v13}, Lo0/z2;->b(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lo0/u;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    move-object v10, v11

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lr0/q;->q(Z)V

    goto :goto_24

    :cond_2e
    const v2, 0x11a6d211

    invoke-virtual {v10, v2}, Lr0/q;->b0(I)V

    invoke-virtual {v10, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_2f

    if-ne v3, v0, :cond_30

    :cond_2f
    new-instance v3, Lod/x5;

    const/4 v2, 0x2

    invoke-direct {v3, v1, v2}, Lod/x5;-><init>(Lua/nav/geo/PackInfo;I)V

    invoke-virtual {v10, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_30
    move-object v2, v3

    check-cast v2, Li9/a;

    invoke-interface/range {v34 .. v34}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyc/d;

    iget-boolean v1, v1, Lyc/d;->c:Z

    const/16 v26, 0x1

    xor-int/lit8 v4, v1, 0x1

    sget-object v9, Lod/m;->N0:Lz0/d;

    const/high16 v11, 0x30000000

    const/16 v12, 0x1fa

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v12}, Lo0/z2;->f(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lr0/q;->q(Z)V

    goto/16 :goto_24

    :goto_27
    invoke-virtual {v10, v9}, Lr0/q;->q(Z)V

    move-object/from16 v40, v0

    move-object v0, v15

    move-object/from16 v1, v28

    move-object/from16 v38, v33

    move-object/from16 v28, v35

    goto/16 :goto_12

    :cond_31
    move-object/from16 v0, v40

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lr0/q;->q(Z)V

    invoke-interface/range {v34 .. v34}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyc/d;

    iget-boolean v1, v1, Lyc/d;->c:Z

    if-eqz v1, :cond_32

    invoke-interface/range {v34 .. v34}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyc/d;

    iget v1, v1, Lyc/d;->d:I

    if-gtz v1, :cond_33

    invoke-interface/range {v34 .. v34}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyc/d;

    iget-object v1, v1, Lyc/d;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_32

    goto :goto_28

    :cond_32
    const/4 v12, 0x0

    goto/16 :goto_2b

    :cond_33
    :goto_28
    const v1, -0x6185fa22

    invoke-virtual {v10, v1}, Lr0/q;->b0(I)V

    invoke-interface/range {v34 .. v34}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyc/d;

    iget-object v1, v1, Lyc/d;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_34

    invoke-interface/range {v34 .. v34}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyc/d;

    iget-object v1, v1, Lyc/d;->f:Ljava/lang/String;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_29

    :cond_34
    const-string v1, "\u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043d\u044f\u2026 "

    invoke-static {v1}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_29
    invoke-interface/range {v34 .. v34}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyc/d;

    iget v2, v2, Lyc/d;->d:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " %"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v1, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v10, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/h5;

    iget-object v1, v1, Lo0/h5;->l:Lp2/m0;

    const/16 v23, 0x0

    const v24, 0xfffe

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

    move-object/from16 v20, v1

    invoke-static/range {v2 .. v24}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v10, v21

    const/4 v12, 0x0

    :goto_2a
    invoke-virtual {v10, v12}, Lr0/q;->q(Z)V

    goto :goto_2c

    :goto_2b
    const v1, 0x30c8c731

    invoke-virtual {v10, v1}, Lr0/q;->b0(I)V

    goto :goto_2a

    :goto_2c
    invoke-interface/range {v37 .. v37}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface/range {v34 .. v34}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyc/d;

    iget-boolean v1, v1, Lyc/d;->c:Z

    if-nez v1, :cond_36

    invoke-interface/range {v34 .. v34}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyc/d;

    iget-object v1, v1, Lyc/d;->e:Ljava/lang/String;

    if-nez v1, :cond_36

    const v1, 0x30ca0700

    invoke-virtual {v10, v1}, Lr0/q;->b0(I)V

    sget-object v1, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->n()Lfd/o;

    move-result-object v1

    invoke-virtual {v1}, Lfd/o;->h()Z

    move-result v1

    if-eqz v1, :cond_35

    const-string v1, "\u0421\u043f\u0438\u0441\u043e\u043a \u043a\u0430\u0442\u0430\u043b\u043e\u0433\u0456\u0432 \u043f\u043e\u0440\u043e\u0436\u043d\u0456\u0439."

    :goto_2d
    move-object v2, v1

    goto :goto_2e

    :cond_35
    const-string v1, "\u041d\u0435\u043c\u0430\u0454 \u0456\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u0443: \u0441\u043f\u0438\u0441\u043e\u043a \u043a\u0430\u0442\u0430\u043b\u043e\u0433\u0456\u0432 \u043d\u0435\u0434\u043e\u0441\u0442\u0443\u043f\u043d\u0438\u0439."

    invoke-static {v1}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2d

    :goto_2e
    sget-object v1, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v10, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/h5;

    iget-object v1, v1, Lo0/h5;->l:Lp2/m0;

    sget-object v3, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v10, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/u0;

    iget-wide v4, v3, Lo0/u0;->s:J

    const/16 v23, 0x0

    const v24, 0xfffa

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

    move-object/from16 v20, v1

    invoke-static/range {v2 .. v24}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v10, v21

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lr0/q;->q(Z)V

    goto :goto_2f

    :cond_36
    const/4 v12, 0x0

    const v1, 0x30ce2e91

    invoke-virtual {v10, v1}, Lr0/q;->b0(I)V

    invoke-virtual {v10, v12}, Lr0/q;->q(Z)V

    :goto_2f
    invoke-interface/range {v34 .. v34}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyc/d;

    iget-object v2, v1, Lyc/d;->e:Ljava/lang/String;

    if-nez v2, :cond_37

    const v1, 0x30ce846b

    invoke-virtual {v10, v1}, Lr0/q;->b0(I)V

    :goto_30
    invoke-virtual {v10, v12}, Lr0/q;->q(Z)V

    goto :goto_31

    :cond_37
    const v1, 0x30ce846c

    invoke-virtual {v10, v1}, Lr0/q;->b0(I)V

    sget-object v1, Lo0/i5;->a:Lr0/s2;

    invoke-virtual {v10, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/h5;

    iget-object v1, v1, Lo0/h5;->l:Lp2/m0;

    sget-object v3, Lo0/v0;->a:Lr0/s2;

    invoke-virtual {v10, v3}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo0/u0;

    iget-wide v4, v3, Lo0/u0;->w:J

    const/16 v23, 0x0

    const v24, 0xfffa

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

    move-object/from16 v20, v1

    invoke-static/range {v2 .. v24}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v10, v21

    const/4 v12, 0x0

    goto :goto_30

    :goto_31
    invoke-virtual {v10}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_38

    new-instance v1, Ln/k1;

    const/16 v0, 0x1b

    invoke-direct {v1, v0}, Ln/k1;-><init>(I)V

    invoke-virtual {v10, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_38
    move-object v2, v1

    check-cast v2, Li9/a;

    invoke-interface/range {v34 .. v34}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyc/d;

    iget-boolean v0, v0, Lyc/d;->c:Z

    const/16 v26, 0x1

    xor-int/lit8 v4, v0, 0x1

    sget-object v9, Lod/m;->O0:Lz0/d;

    const v11, 0x30000006

    const/16 v12, 0x1fa

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v12}, Lo0/z2;->f(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lp/x;Lu/s0;Li9/f;Lr0/q;II)V

    goto :goto_32

    :cond_39
    move-object/from16 v21, v10

    invoke-virtual/range {v21 .. v21}, Lr0/q;->W()V

    :goto_32
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
