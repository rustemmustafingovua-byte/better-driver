.class public final Lod/e5;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic A:Lr0/u0;

.field public l:Ljava/io/File;

.field public m:I

.field public final synthetic n:Landroid/content/Context;

.field public final synthetic o:Lua/nav/a;

.field public final synthetic p:Ljava/util/List;

.field public final synthetic q:Ljd/b;

.field public final synthetic r:Ljava/io/File;

.field public final synthetic s:Led/f;

.field public final synthetic t:Lr0/u0;

.field public final synthetic u:Lr0/u0;

.field public final synthetic v:Lr0/u0;

.field public final synthetic w:Lr0/a1;

.field public final synthetic x:Lr0/u0;

.field public final synthetic y:Lr0/u0;

.field public final synthetic z:Lr0/u0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lua/nav/a;Ljava/util/List;Ljd/b;Ljava/io/File;Led/f;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/a1;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lod/e5;->n:Landroid/content/Context;

    iput-object p2, p0, Lod/e5;->o:Lua/nav/a;

    iput-object p3, p0, Lod/e5;->p:Ljava/util/List;

    iput-object p4, p0, Lod/e5;->q:Ljd/b;

    iput-object p5, p0, Lod/e5;->r:Ljava/io/File;

    iput-object p6, p0, Lod/e5;->s:Led/f;

    iput-object p7, p0, Lod/e5;->t:Lr0/u0;

    iput-object p8, p0, Lod/e5;->u:Lr0/u0;

    iput-object p9, p0, Lod/e5;->v:Lr0/u0;

    iput-object p10, p0, Lod/e5;->w:Lr0/a1;

    iput-object p11, p0, Lod/e5;->x:Lr0/u0;

    iput-object p12, p0, Lod/e5;->y:Lr0/u0;

    iput-object p13, p0, Lod/e5;->z:Lr0/u0;

    iput-object p14, p0, Lod/e5;->A:Lr0/u0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p15}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 16

    move-object/from16 v0, p0

    new-instance v1, Lod/e5;

    iget-object v13, v0, Lod/e5;->z:Lr0/u0;

    iget-object v14, v0, Lod/e5;->A:Lr0/u0;

    move-object v2, v1

    iget-object v1, v0, Lod/e5;->n:Landroid/content/Context;

    move-object v3, v2

    iget-object v2, v0, Lod/e5;->o:Lua/nav/a;

    move-object v4, v3

    iget-object v3, v0, Lod/e5;->p:Ljava/util/List;

    move-object v5, v4

    iget-object v4, v0, Lod/e5;->q:Ljd/b;

    move-object v6, v5

    iget-object v5, v0, Lod/e5;->r:Ljava/io/File;

    move-object v7, v6

    iget-object v6, v0, Lod/e5;->s:Led/f;

    move-object v8, v7

    iget-object v7, v0, Lod/e5;->t:Lr0/u0;

    move-object v9, v8

    iget-object v8, v0, Lod/e5;->u:Lr0/u0;

    move-object v10, v9

    iget-object v9, v0, Lod/e5;->v:Lr0/u0;

    move-object v11, v10

    iget-object v10, v0, Lod/e5;->w:Lr0/a1;

    move-object v12, v11

    iget-object v11, v0, Lod/e5;->x:Lr0/u0;

    iget-object v0, v0, Lod/e5;->y:Lr0/u0;

    move-object v15, v12

    move-object v12, v0

    move-object v0, v15

    move-object/from16 v15, p2

    invoke-direct/range {v0 .. v15}, Lod/e5;-><init>(Landroid/content/Context;Lua/nav/a;Ljava/util/List;Ljd/b;Ljava/io/File;Led/f;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/a1;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Ly8/c;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lod/e5;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lod/e5;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lod/e5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lod/e5;->m:I

    iget-object v5, v0, Lod/e5;->p:Ljava/util/List;

    iget-object v8, v0, Lod/e5;->o:Lua/nav/a;

    const/4 v3, 0x1

    iget-object v4, v0, Lod/e5;->y:Lr0/u0;

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v1, v0, Lod/e5;->l:Ljava/io/File;

    :try_start_0
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catch Led/o; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v4

    move-object v4, v1

    move-object/from16 v1, p1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :catch_0
    move-object v6, v4

    goto/16 :goto_6

    :catch_1
    move-exception v0

    move-object v6, v4

    goto/16 :goto_8

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    new-instance v2, Ljava/io/File;

    iget-object v6, v0, Lod/e5;->n:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "send"

    invoke-direct {v2, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    const-string v6, "upload.zip"

    invoke-static {v2, v6}, Lf9/j;->A(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    :try_start_1
    sget-object v6, Lu9/e0;->a:Lba/e;

    sget-object v6, Lba/d;->n:Lba/d;

    move v7, v3

    new-instance v3, Lod/d5;

    move-object v9, v6

    iget-object v6, v0, Lod/e5;->n:Landroid/content/Context;

    move v10, v7

    iget-object v7, v0, Lod/e5;->q:Ljd/b;

    move-object v11, v9

    iget-object v9, v0, Lod/e5;->r:Ljava/io/File;

    move v12, v10

    iget-object v10, v0, Lod/e5;->s:Led/f;

    move-object v13, v11

    iget-object v11, v0, Lod/e5;->t:Lr0/u0;

    move v14, v12

    iget-object v12, v0, Lod/e5;->u:Lr0/u0;

    move-object v15, v13

    iget-object v13, v0, Lod/e5;->v:Lr0/u0;

    move/from16 v16, v14

    iget-object v14, v0, Lod/e5;->w:Lr0/a1;

    move-object/from16 v17, v15

    iget-object v15, v0, Lod/e5;->x:Lr0/u0;
    :try_end_1
    .catch Led/o; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v18, v17

    const/16 v17, 0x0

    move-object/from16 v19, v18

    move-object/from16 v18, v1

    move/from16 v1, v16

    move-object/from16 v16, v4

    move-object v4, v2

    move-object/from16 v2, v19

    :try_start_2
    invoke-direct/range {v3 .. v17}, Lod/d5;-><init>(Ljava/io/File;Ljava/util/List;Landroid/content/Context;Ljd/b;Lua/nav/a;Ljava/io/File;Led/f;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/a1;Lr0/u0;Lr0/u0;Ly8/c;)V
    :try_end_2
    .catch Led/o; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v6, v16

    :try_start_3
    iput-object v4, v0, Lod/e5;->l:Ljava/io/File;

    iput v1, v0, Lod/e5;->m:I

    invoke-static {v2, v3, v0}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v2, v18

    if-ne v1, v2, :cond_2

    return-object v2

    :cond_2
    :goto_0
    check-cast v1, Led/s;

    instance-of v2, v1, Led/r;

    if-eqz v2, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v5, v3}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Led/g;

    invoke-virtual {v5}, Led/g;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_2
    move-object v1, v4

    goto/16 :goto_a

    :catch_2
    :goto_3
    move-object v1, v4

    goto :goto_6

    :catch_3
    move-exception v0

    :goto_4
    move-object v1, v4

    goto/16 :goto_8

    :cond_3
    invoke-virtual {v8, v2}, Lua/nav/a;->h(Ljava/util/ArrayList;)V

    iget-object v2, v0, Lod/e5;->z:Lr0/u0;

    invoke-virtual {v8}, Lua/nav/a;->f()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    iget-object v0, v0, Lod/e5;->A:Lr0/u0;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v2}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->f()Lua/nav/support/a;

    move-result-object v0

    invoke-virtual {v0}, Lua/nav/support/a;->d()V

    new-instance v0, Lod/h5;

    check-cast v1, Led/r;

    iget-object v1, v1, Led/r;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lod/h5;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    instance-of v0, v1, Led/q;

    if-eqz v0, :cond_5

    new-instance v0, Lod/i5;

    sget-object v2, Led/f;->Companion:Led/d;

    check-cast v1, Led/q;

    iget-object v1, v1, Led/q;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Led/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lod/i5;-><init>(Ljava/lang/String;)V

    :goto_5
    invoke-interface {v6, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V
    :try_end_3
    .catch Led/o; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_9

    :cond_5
    :try_start_4
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
    :try_end_4
    .catch Led/o; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_4
    move-object/from16 v6, v16

    goto :goto_3

    :catch_5
    move-exception v0

    move-object/from16 v6, v16

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v4, v2

    goto :goto_2

    :catch_6
    move-object v6, v4

    move-object v4, v2

    goto :goto_3

    :catch_7
    move-exception v0

    move-object v6, v4

    move-object v4, v2

    goto :goto_4

    :goto_6
    :try_start_5
    new-instance v0, Lod/i5;

    const-string v2, "\u041d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f \u043f\u0456\u0434\u0433\u043e\u0442\u0443\u0432\u0430\u0442\u0438 \u0444\u0430\u0439\u043b\u0438 \u0434\u043e \u043d\u0430\u0434\u0441\u0438\u043b\u0430\u043d\u043d\u044f."

    invoke-direct {v0, v2}, Lod/i5;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v0}, Lr0/u0;->setValue(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_7
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_9

    :goto_8
    :try_start_6
    new-instance v2, Lod/i5;

    iget-wide v3, v0, Led/o;->l:J

    invoke-static {v3, v4}, Lod/m;->K(J)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0410\u0440\u0445\u0456\u0432 \u0437\u0430\u0432\u0435\u043b\u0438\u043a\u0438\u0439 ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "). \u041e\u0431\u0435\u0440\u0456\u0442\u044c \u043c\u0435\u043d\u0448\u0435 \u043b\u043e\u0433\u0456\u0432 \u0430\u0431\u043e \u043c\u0435\u043d\u0448\u0438\u0439 \u043f\u0435\u0440\u0456\u043e\u0434."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcd/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lod/i5;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v2}, Lr0/u0;->setValue(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_7

    :goto_9
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :goto_a
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    throw v0
.end method
