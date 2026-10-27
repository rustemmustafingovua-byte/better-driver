.class public final Lod/d5;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public l:I

.field public final synthetic m:Ljava/io/File;

.field public final synthetic n:Ljava/util/List;

.field public final synthetic o:Landroid/content/Context;

.field public final synthetic p:Ljd/b;

.field public final synthetic q:Lua/nav/a;

.field public final synthetic r:Ljava/io/File;

.field public final synthetic s:Led/f;

.field public final synthetic t:Lr0/u0;

.field public final synthetic u:Lr0/u0;

.field public final synthetic v:Lr0/u0;

.field public final synthetic w:Lr0/a1;

.field public final synthetic x:Lr0/u0;

.field public final synthetic y:Lr0/u0;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/util/List;Landroid/content/Context;Ljd/b;Lua/nav/a;Ljava/io/File;Led/f;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/a1;Lr0/u0;Lr0/u0;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lod/d5;->m:Ljava/io/File;

    iput-object p2, p0, Lod/d5;->n:Ljava/util/List;

    iput-object p3, p0, Lod/d5;->o:Landroid/content/Context;

    iput-object p4, p0, Lod/d5;->p:Ljd/b;

    iput-object p5, p0, Lod/d5;->q:Lua/nav/a;

    iput-object p6, p0, Lod/d5;->r:Ljava/io/File;

    iput-object p7, p0, Lod/d5;->s:Led/f;

    iput-object p8, p0, Lod/d5;->t:Lr0/u0;

    iput-object p9, p0, Lod/d5;->u:Lr0/u0;

    iput-object p10, p0, Lod/d5;->v:Lr0/u0;

    iput-object p11, p0, Lod/d5;->w:Lr0/a1;

    iput-object p12, p0, Lod/d5;->x:Lr0/u0;

    iput-object p13, p0, Lod/d5;->y:Lr0/u0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p14}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 15

    new-instance v0, Lod/d5;

    iget-object v12, p0, Lod/d5;->x:Lr0/u0;

    iget-object v13, p0, Lod/d5;->y:Lr0/u0;

    iget-object v1, p0, Lod/d5;->m:Ljava/io/File;

    iget-object v2, p0, Lod/d5;->n:Ljava/util/List;

    iget-object v3, p0, Lod/d5;->o:Landroid/content/Context;

    iget-object v4, p0, Lod/d5;->p:Ljd/b;

    iget-object v5, p0, Lod/d5;->q:Lua/nav/a;

    iget-object v6, p0, Lod/d5;->r:Ljava/io/File;

    iget-object v7, p0, Lod/d5;->s:Led/f;

    iget-object v8, p0, Lod/d5;->t:Lr0/u0;

    iget-object v9, p0, Lod/d5;->u:Lr0/u0;

    iget-object v10, p0, Lod/d5;->v:Lr0/u0;

    iget-object v11, p0, Lod/d5;->w:Lr0/a1;

    move-object/from16 v14, p2

    invoke-direct/range {v0 .. v14}, Lod/d5;-><init>(Ljava/io/File;Ljava/util/List;Landroid/content/Context;Ljd/b;Lua/nav/a;Ljava/io/File;Led/f;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/a1;Lr0/u0;Lr0/u0;Ly8/c;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lod/d5;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lod/d5;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lod/d5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

    move-object/from16 v1, p0

    sget-object v2, Lz8/a;->l:Lz8/a;

    iget v0, v1, Lod/d5;->l:I

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v3, :cond_0

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v4, v1, Lod/d5;->m:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    sget-object v0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->m()Ldd/q0;

    move-result-object v0

    iget-object v0, v0, Ldd/q0;->d:Ljava/io/File;

    invoke-static {}, Lsc/i0;->g()Ldd/k0;

    move-result-object v5

    iget-object v5, v5, Ldd/k0;->j:Ldd/m;

    iget-object v5, v5, Ldd/m;->h:Lx9/l0;

    invoke-virtual {v5}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldd/n;

    iget-boolean v5, v5, Ldd/n;->l:Z

    const-string v6, "send"

    iget-object v7, v1, Lod/d5;->n:Ljava/util/List;

    if-eqz v5, :cond_4

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Led/g;

    iget-object v8, v8, Led/g;->a:Ljava/io/File;

    invoke-static {v8, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    sget-object v0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->g()Ldd/k0;

    move-result-object v0

    invoke-virtual {v0, v6}, Ldd/k0;->i(Ljava/lang/String;)Ljava/io/File;

    :cond_4
    :goto_0
    sget-object v0, Led/c;->a:Ljava/util/List;

    iget-object v0, v1, Lod/d5;->t:Lr0/u0;

    invoke-interface {v0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v0, v1, Lod/d5;->p:Ljd/b;

    const-string v8, "mapbox_token"

    invoke-virtual {v0, v8}, Ljd/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    if-eqz v0, :cond_5

    move v0, v3

    goto :goto_1

    :cond_5
    move v0, v8

    :goto_1
    iget-object v9, v1, Lod/d5;->q:Lua/nav/a;

    iget-object v9, v9, Lua/nav/a;->y:Lx9/l0;

    invoke-virtual {v9}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lua/nav/Tuning;

    invoke-virtual {v9}, Lua/nav/Tuning;->c()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->v()Lua/nav/update/a;

    move-result-object v10

    iget-object v10, v10, Lua/nav/update/a;->e:Lx9/l0;

    invoke-virtual {v10}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lqd/q;

    iget-object v10, v10, Lqd/q;->a:Lqd/o;

    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    const-string v11, "tuningSummary"

    invoke-static {v9, v11}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "updateKind"

    invoke-static {v10, v11}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Lia/z;

    invoke-direct {v11, v8}, Lia/z;-><init>(I)V

    const-string v12, "1.0.1"

    invoke-static {v12}, Led/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "version"

    invoke-static {v11, v13, v12}, Ll9/a;->w(Lia/z;Ljava/lang/String;Ljava/lang/String;)V

    const v12, 0x18e4a81

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v14, "code"

    invoke-static {v11, v14, v12}, Ll9/a;->v(Lia/z;Ljava/lang/String;Ljava/lang/Number;)V

    const-string v12, "build"

    const-string v14, "release"

    invoke-static {v11, v12, v14}, Ll9/a;->w(Lia/z;Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "user_mapbox_key"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v11, v12, v0}, Ll9/a;->u(Lia/z;Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "tuning"

    invoke-static {v9}, Led/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v0, v9}, Ll9/a;->w(Lia/z;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "update_state"

    invoke-static {v10}, Led/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v0, v9}, Ll9/a;->w(Lia/z;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Lia/z;->b()Lia/y;

    move-result-object v0

    new-instance v9, Lia/z;

    invoke-direct {v9, v8}, Lia/z;-><init>(I)V

    iget-object v10, v1, Lod/d5;->u:Lr0/u0;

    invoke-interface {v10}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Led/p;

    invoke-virtual {v10}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "toLowerCase(...)"

    invoke-static {v10, v11}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "mode"

    invoke-static {v9, v11, v10}, Ll9/a;->w(Lia/z;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v10}, Ljava/lang/Integer;-><init>(I)V

    const-string v10, "files"

    invoke-static {v9, v10, v11}, Ll9/a;->v(Lia/z;Ljava/lang/String;Ljava/lang/Number;)V

    iget-object v10, v1, Lod/d5;->v:Lr0/u0;

    invoke-static {v10}, Lod/m;->q(Lr0/u0;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const-string v12, "trimmed"

    invoke-static {v9, v12, v11}, Ll9/a;->u(Lia/z;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {v10}, Lod/m;->q(Lr0/u0;)Z

    move-result v11

    iget-object v12, v1, Lod/d5;->w:Lr0/a1;

    if-eqz v11, :cond_6

    invoke-virtual {v12}, Lr0/a1;->g()F

    move-result v11

    float-to-int v11, v11

    goto :goto_2

    :cond_6
    move v11, v8

    :goto_2
    new-instance v14, Ljava/lang/Integer;

    invoke-direct {v14, v11}, Ljava/lang/Integer;-><init>(I)V

    const-string v11, "trim_m"

    invoke-static {v9, v11, v14}, Ll9/a;->v(Lia/z;Ljava/lang/String;Ljava/lang/Number;)V

    invoke-virtual {v9}, Lia/z;->b()Lia/y;

    move-result-object v9

    const-string v11, "ctx"

    iget-object v14, v1, Lod/d5;->o:Landroid/content/Context;

    invoke-static {v14, v11}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Lia/z;

    invoke-direct {v11, v8}, Lia/z;-><init>(I)V

    const-string v15, "schema"

    move/from16 v16, v3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v11, v15, v3}, Ll9/a;->v(Lia/z;Ljava/lang/String;Ljava/lang/Number;)V

    const-string v3, "app"

    invoke-virtual {v11, v0, v3}, Lia/z;->c(Lia/l;Ljava/lang/String;)Lia/l;

    invoke-virtual {v11, v9, v6}, Lia/z;->c(Lia/l;Ljava/lang/String;)Lia/l;

    invoke-virtual {v14}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v3, v0, Landroid/app/Application;

    if-eqz v3, :cond_7

    check-cast v0, Landroid/app/Application;

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :goto_3
    const-string v3, "element"

    const/4 v9, 0x2

    if-eqz v0, :cond_e

    sget-object v15, Led/b;->a:Lr9/i;

    :try_start_0
    new-instance v15, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v6, "last_crash.txt"

    invoke-direct {v15, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    const/4 v15, 0x0

    :goto_4
    if-eqz v15, :cond_9

    invoke-static {v15}, Lf9/j;->y(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lu8/m;->g0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_9

    invoke-static {v6}, Lr9/r;->V(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    sub-long v19, v19, v17

    const-wide/32 v17, 0x48190800

    cmp-long v15, v19, v17

    if-lez v15, :cond_a

    :cond_9
    const/4 v0, 0x0

    goto :goto_9

    :cond_a
    new-instance v15, Lia/z;

    invoke-direct {v15, v8}, Lia/z;-><init>(I)V

    const-string v8, "at_ms"

    invoke-static {v15, v8, v6}, Ll9/a;->v(Lia/z;Ljava/lang/String;Ljava/lang/Number;)V

    const-string v6, "summary"

    move/from16 v8, v16

    invoke-static {v8, v0}, Lu8/m;->h0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    if-nez v18, :cond_b

    const-string v18, ""

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_7

    :cond_b
    :goto_5
    invoke-static/range {v18 .. v18}, Led/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v6, v8}, Ll9/a;->w(Lia/z;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "stack"

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v9}, Lu8/m;->c0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    const/16 v9, 0x28

    invoke-static {v0, v9}, Lu8/m;->x0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Led/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lia/m;->a(Ljava/lang/String;)Lia/d0;

    move-result-object v9

    invoke-static {v9, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    new-instance v0, Lia/e;

    invoke-direct {v0, v8}, Lia/e;-><init>(Ljava/util/List;)V

    invoke-virtual {v15, v0, v6}, Lia/z;->c(Lia/l;Ljava/lang/String;)Lia/l;

    invoke-virtual {v15}, Lia/z;->b()Lia/y;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    :goto_7
    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_8
    instance-of v6, v0, Lt8/l;

    if-eqz v6, :cond_d

    const/4 v0, 0x0

    :cond_d
    check-cast v0, Lia/y;

    :goto_9
    if-eqz v0, :cond_e

    const-string v6, "crash"

    invoke-virtual {v11, v0, v6}, Lia/z;->c(Lia/l;Ljava/lang/String;)Lia/l;

    :cond_e
    const/16 v6, 0xa

    if-eqz v5, :cond_30

    new-instance v0, Lia/z;

    const/4 v5, 0x0

    invoke-direct {v0, v5}, Lia/z;-><init>(I)V

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v5}, Led/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "manufacturer"

    invoke-static {v0, v9, v5}, Ll9/a;->w(Lia/z;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v5}, Led/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "model"

    invoke-static {v0, v9, v5}, Ll9/a;->w(Lia/z;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v5}, Led/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "device"

    invoke-static {v0, v9, v5}, Ll9/a;->w(Lia/z;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v5}, Led/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v15, "product"

    invoke-static {v0, v15, v5}, Ll9/a;->w(Lia/z;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-static {v5}, Led/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v15, "hardware"

    invoke-static {v0, v15, v5}, Ll9/a;->w(Lia/z;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-static {v5}, Led/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v15, "board"

    invoke-static {v0, v15, v5}, Ll9/a;->w(Lia/z;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v5}, Led/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v15, "android"

    invoke-static {v0, v15, v5}, Ll9/a;->w(Lia/z;Ljava/lang/String;Ljava/lang/String;)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v8, "sdk"

    invoke-static {v0, v8, v15}, Ll9/a;->v(Lia/z;Ljava/lang/String;Ljava/lang/Number;)V

    sget-object v8, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    invoke-static {v8}, Led/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v15, "security_patch"

    invoke-static {v0, v15, v8}, Ll9/a;->w(Lia/z;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v8, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v8}, Led/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v15, "fingerprint"

    invoke-static {v0, v15, v8}, Ll9/a;->w(Lia/z;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x1f

    if-lt v5, v8, :cond_f

    invoke-static {}, Lb5/c;->p()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Led/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v15, "soc_manufacturer"

    invoke-static {v0, v15, v5}, Ll9/a;->w(Lia/z;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lb5/c;->A()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Led/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v15, "soc_model"

    invoke-static {v0, v15, v5}, Ll9/a;->w(Lia/z;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    sget-object v5, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const-string v15, "SUPPORTED_ABIS"

    invoke-static {v5, v15}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v15, 0x6

    invoke-static {v15, v5}, Lu8/l;->E0(I[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    new-instance v15, Ljava/util/ArrayList;

    invoke-static {v5, v6}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v15, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Led/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lia/m;->a(Ljava/lang/String;)Lia/d0;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_10
    new-instance v5, Lia/e;

    invoke-direct {v5, v15}, Lia/e;-><init>(Ljava/util/List;)V

    const-string v8, "abis"

    invoke-virtual {v0, v5, v8}, Lia/z;->c(Lia/l;Ljava/lang/String;)Lia/l;

    invoke-virtual {v0}, Lia/z;->b()Lia/y;

    move-result-object v0

    invoke-virtual {v11, v0, v9}, Lia/z;->c(Lia/l;Ljava/lang/String;)Lia/l;

    new-instance v5, Lia/z;

    const/4 v8, 0x0

    invoke-direct {v5, v8}, Lia/z;-><init>(I)V

    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {v14, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v8, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v8}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    if-eqz v0, :cond_11

    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    :cond_11
    iget-wide v8, v8, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const/high16 v0, 0x100000

    move-object v15, v7

    int-to-long v6, v0

    div-long/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v8, "ram_mb"

    invoke-static {v5, v8, v0}, Ll9/a;->v(Lia/z;Ljava/lang/String;Ljava/lang/Number;)V

    :try_start_1
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {v14}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    const-string v8, "storage_free_mb"

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v21

    div-long v21, v21, v6

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v5, v8, v0}, Ll9/a;->v(Lia/z;Ljava/lang/String;Ljava/lang/Number;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_b

    :catchall_1
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_b
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v6, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "screen_w"

    invoke-static {v5, v7, v6}, Ll9/a;->v(Lia/z;Ljava/lang/String;Ljava/lang/Number;)V

    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "screen_h"

    invoke-static {v5, v7, v6}, Ll9/a;->v(Lia/z;Ljava/lang/String;Ljava/lang/Number;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v6, "dpi"

    invoke-static {v5, v6, v0}, Ll9/a;->v(Lia/z;Ljava/lang/String;Ljava/lang/Number;)V

    const/16 v6, 0x1e

    :try_start_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_12

    invoke-static {v14}, Lc5/j;->j(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    goto :goto_c

    :catchall_2
    move-exception v0

    goto :goto_d

    :cond_12
    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {v14, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    goto :goto_c

    :cond_13
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    const-string v7, "refresh_hz"

    float-to-double v8, v0

    move-wide/from16 v22, v8

    const/16 v6, 0xa

    int-to-double v8, v6

    mul-double v8, v8, v22

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-double v8, v8

    const-wide/high16 v22, 0x4024000000000000L    # 10.0

    div-double v8, v8, v22

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v5, v7, v0}, Ll9/a;->v(Lia/z;Ljava/lang/String;Ljava/lang/Number;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_e

    :goto_d
    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :cond_14
    :goto_e
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Led/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "locale"

    invoke-static {v5, v6, v0}, Ll9/a;->w(Lia/z;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Led/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "timezone"

    invoke-static {v5, v6, v0}, Ll9/a;->w(Lia/z;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lia/z;->b()Lia/y;

    move-result-object v0

    const-string v5, "resources"

    invoke-virtual {v11, v0, v5}, Lia/z;->c(Lia/l;Ljava/lang/String;)Lia/l;

    new-instance v0, Lia/z;

    const/4 v5, 0x0

    invoke-direct {v0, v5}, Lia/z;-><init>(I)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v14, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_18

    const-string v7, "level"

    const/4 v8, -0x1

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "scale"

    const/16 v9, 0x64

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    if-ltz v7, :cond_15

    if-lez v8, :cond_15

    mul-int/2addr v7, v9

    div-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "battery_pct"

    invoke-static {v0, v8, v7}, Ll9/a;->v(Lia/z;Ljava/lang/String;Ljava/lang/Number;)V

    :cond_15
    const-string v7, "status"

    const/4 v8, -0x1

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/4 v7, 0x2

    if-eq v5, v7, :cond_17

    const/4 v7, 0x5

    if-ne v5, v7, :cond_16

    goto :goto_f

    :cond_16
    const/4 v5, 0x0

    goto :goto_10

    :cond_17
    :goto_f
    const/4 v5, 0x1

    :goto_10
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v7, "charging"

    invoke-static {v0, v7, v5}, Ll9/a;->u(Lia/z;Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_18
    const-class v5, Landroid/os/PowerManager;

    invoke-virtual {v14, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    if-eqz v5, :cond_1a

    invoke-virtual {v5}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_19

    move/from16 v16, v8

    goto :goto_12

    :cond_19
    :goto_11
    const/16 v16, 0x0

    goto :goto_12

    :cond_1a
    const/4 v8, 0x1

    goto :goto_11

    :goto_12
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v9, "power_save"

    invoke-static {v0, v9, v7}, Ll9/a;->u(Lia/z;Ljava/lang/String;Ljava/lang/Boolean;)V

    if-eqz v5, :cond_1b

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v8, :cond_1b

    const/4 v5, 0x1

    goto :goto_13

    :cond_1b
    const/4 v5, 0x0

    :goto_13
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v7, "ignoring_battery_optimizations"

    invoke-static {v0, v7, v5}, Ll9/a;->u(Lia/z;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v0}, Lia/z;->b()Lia/y;

    move-result-object v0

    const-string v5, "power"

    invoke-virtual {v11, v0, v5}, Lia/z;->c(Lia/l;Ljava/lang/String;)Lia/l;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-class v5, Landroid/hardware/SensorManager;

    invoke-virtual {v14, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/SensorManager;

    const-string v7, "type"

    if-nez v5, :cond_1c

    goto/16 :goto_15

    :cond_1c
    const/4 v8, -0x1

    invoke-virtual {v5, v8}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v5

    const-string v8, "getSensorList(...)"

    invoke-static {v5, v8}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x96

    invoke-static {v5, v8}, Lu8/m;->x0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Sensor;

    new-instance v9, Lia/z;

    const/4 v6, 0x0

    invoke-direct {v9, v6}, Lia/z;-><init>(I)V

    invoke-virtual {v8}, Landroid/hardware/Sensor;->getType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v9, v7, v6}, Ll9/a;->v(Lia/z;Ljava/lang/String;Ljava/lang/Number;)V

    invoke-virtual {v8}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Led/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v18, v5

    const-string v5, "kind"

    invoke-static {v9, v5, v6}, Ll9/a;->w(Lia/z;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Led/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "name"

    invoke-static {v9, v6, v5}, Ll9/a;->w(Lia/z;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Led/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "vendor"

    invoke-static {v9, v6, v5}, Ll9/a;->w(Lia/z;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/hardware/Sensor;->getVersion()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v9, v13, v5}, Ll9/a;->v(Lia/z;Ljava/lang/String;Ljava/lang/Number;)V

    invoke-virtual {v8}, Landroid/hardware/Sensor;->getResolution()F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v6, "resolution"

    invoke-static {v9, v6, v5}, Ll9/a;->v(Lia/z;Ljava/lang/String;Ljava/lang/Number;)V

    invoke-virtual {v8}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v6, "max_range"

    invoke-static {v9, v6, v5}, Ll9/a;->v(Lia/z;Ljava/lang/String;Ljava/lang/Number;)V

    invoke-virtual {v8}, Landroid/hardware/Sensor;->getMinDelay()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "min_delay_us"

    invoke-static {v9, v6, v5}, Ll9/a;->v(Lia/z;Ljava/lang/String;Ljava/lang/Number;)V

    invoke-virtual {v8}, Landroid/hardware/Sensor;->getMaxDelay()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "max_delay_us"

    invoke-static {v9, v6, v5}, Ll9/a;->v(Lia/z;Ljava/lang/String;Ljava/lang/Number;)V

    invoke-virtual {v8}, Landroid/hardware/Sensor;->getPower()F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v6, "power_ma"

    invoke-static {v9, v6, v5}, Ll9/a;->v(Lia/z;Ljava/lang/String;Ljava/lang/Number;)V

    invoke-virtual {v8}, Landroid/hardware/Sensor;->getFifoMaxEventCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "fifo_max"

    invoke-static {v9, v6, v5}, Ll9/a;->v(Lia/z;Ljava/lang/String;Ljava/lang/Number;)V

    invoke-virtual {v8}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "wakeup"

    invoke-static {v9, v6, v5}, Ll9/a;->u(Lia/z;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v9}, Lia/z;->b()Lia/y;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, v18

    const/4 v6, 0x0

    goto/16 :goto_14

    :cond_1d
    :goto_15
    new-instance v5, Lia/e;

    invoke-direct {v5, v0}, Lia/e;-><init>(Ljava/util/List;)V

    const-string v0, "sensors"

    invoke-virtual {v11, v5, v0}, Lia/z;->c(Lia/l;Ljava/lang/String;)Lia/l;

    new-instance v5, Lia/z;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lia/z;-><init>(I)V

    const-class v0, Landroid/location/LocationManager;

    invoke-virtual {v14, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/location/LocationManager;

    const-string v8, "network"

    const-string v9, "gps"

    if-nez v6, :cond_1e

    move-object/from16 v18, v10

    move-object/from16 v22, v12

    goto/16 :goto_1d

    :cond_1e
    :try_start_3
    const-string v0, "hardware_name"

    invoke-virtual {v6}, Landroid/location/LocationManager;->getGnssHardwareModelName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Led/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v0, v13}, Ll9/a;->w(Lia/z;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_16

    :catchall_3
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_16
    :try_start_4
    const-string v0, "year"

    invoke-virtual {v6}, Landroid/location/LocationManager;->getGnssYearOfHardware()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v5, v0, v13}, Ll9/a;->v(Lia/z;Ljava/lang/String;Ljava/lang/Number;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_17

    :catchall_4
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_17
    invoke-virtual {v6}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    const-string v13, "getAllProviders(...)"

    invoke-static {v0, v13}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v13, 0xa

    invoke-static {v0, v13}, Lu8/m;->x0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    move-object/from16 v18, v10

    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v22, v12

    invoke-static {v0, v13}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Led/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lia/m;->a(Ljava/lang/String;)Lia/d0;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_1f
    new-instance v0, Lia/e;

    invoke-direct {v0, v10}, Lia/e;-><init>(Ljava/util/List;)V

    const-string v10, "providers"

    invoke-virtual {v5, v0, v10}, Lia/z;->c(Lia/l;Ljava/lang/String;)Lia/l;

    :try_start_5
    invoke-virtual {v6, v9}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_19

    :catchall_5
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_19
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v12, v0, Lt8/l;

    if-eqz v12, :cond_20

    move-object v0, v10

    :cond_20
    check-cast v0, Ljava/lang/Boolean;

    const-string v10, "gps_enabled"

    invoke-static {v5, v10, v0}, Ll9/a;->u(Lia/z;Ljava/lang/String;Ljava/lang/Boolean;)V

    :try_start_6
    invoke-virtual {v6, v8}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_1a

    :catchall_6
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_1a
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v12, v0, Lt8/l;

    if-eqz v12, :cond_21

    move-object v0, v10

    :cond_21
    check-cast v0, Ljava/lang/Boolean;

    const-string v10, "network_enabled"

    invoke-static {v5, v10, v0}, Ll9/a;->u(Lia/z;Ljava/lang/String;Ljava/lang/Boolean;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1e

    if-lt v0, v10, :cond_24

    :try_start_7
    invoke-static {v6}, Lc5/j;->i(Landroid/location/LocationManager;)Landroid/location/GnssCapabilities;

    move-result-object v6

    const-string v10, "getGnssCapabilities(...)"

    invoke-static {v6, v10}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "caps"

    new-instance v12, Lia/z;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lia/z;-><init>(I)V

    const/16 v13, 0x1f

    if-lt v0, v13, :cond_22

    const-string v13, "measurements"

    invoke-static {v6}, Lb5/c;->x(Landroid/location/GnssCapabilities;)Z

    move-result v20

    move-object/from16 v21, v6

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v12, v13, v6}, Ll9/a;->u(Lia/z;Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v6, "navigation_messages"

    invoke-static/range {v21 .. v21}, Lb5/c;->B(Landroid/location/GnssCapabilities;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-static {v12, v6, v13}, Ll9/a;->u(Lia/z;Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v6, "antenna_info"

    invoke-static/range {v21 .. v21}, Lb5/c;->D(Landroid/location/GnssCapabilities;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-static {v12, v6, v13}, Ll9/a;->u(Lia/z;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1b

    :catchall_7
    move-exception v0

    goto :goto_1c

    :cond_22
    move-object/from16 v21, v6

    :goto_1b
    const/16 v6, 0x22

    if-lt v0, v6, :cond_23

    const-string v0, "low_power_mode"

    invoke-static/range {v21 .. v21}, Lb5/a;->r(Landroid/location/GnssCapabilities;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v12, v0, v6}, Ll9/a;->u(Lia/z;Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "satellite_blocklist"

    invoke-static/range {v21 .. v21}, Lb5/a;->x(Landroid/location/GnssCapabilities;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v12, v0, v6}, Ll9/a;->u(Lia/z;Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_23
    invoke-virtual {v12}, Lia/z;->b()Lia/y;

    move-result-object v0

    invoke-virtual {v5, v0, v10}, Lia/z;->c(Lia/l;Ljava/lang/String;)Lia/l;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_1d

    :goto_1c
    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :cond_24
    :goto_1d
    invoke-virtual {v5}, Lia/z;->b()Lia/y;

    move-result-object v0

    const-string v5, "gnss"

    invoke-virtual {v11, v0, v5}, Lia/z;->c(Lia/l;Ljava/lang/String;)Lia/l;

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v14, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    goto :goto_1e

    :cond_25
    const/4 v0, 0x0

    :goto_1e
    const-string v6, "wifi"

    if-nez v0, :cond_26

    const-string v0, "none"

    goto :goto_1f

    :cond_26
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v12

    if-eqz v12, :cond_27

    move-object v0, v6

    goto :goto_1f

    :cond_27
    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "cellular"

    goto :goto_1f

    :cond_28
    const-string v0, "other"

    :goto_1f
    invoke-static {v0}, Lia/m;->a(Ljava/lang/String;)Lia/d0;

    move-result-object v0

    invoke-static {v0, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lia/l;

    :try_start_8
    const-string v0, "operator"

    const-class v7, Landroid/telephony/TelephonyManager;

    invoke-virtual {v14, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    if-eqz v7, :cond_29

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v7

    goto :goto_20

    :catchall_8
    move-exception v0

    goto :goto_21

    :cond_29
    const/4 v7, 0x0

    :goto_20
    invoke-static {v7}, Led/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lia/m;->a(Ljava/lang/String;)Lia/d0;

    move-result-object v7

    invoke-static {v7, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lia/l;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    goto :goto_22

    :goto_21
    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_22
    new-instance v0, Lia/y;

    invoke-direct {v0, v5}, Lia/y;-><init>(Ljava/util/Map;)V

    invoke-virtual {v11, v0, v8}, Lia/z;->c(Lia/l;Ljava/lang/String;)Lia/l;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v5, Lt8/j;

    const-string v7, "android.hardware.location.gps"

    invoke-direct {v5, v9, v7}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Lt8/j;

    const-string v8, "net_location"

    const-string v9, "android.hardware.location.network"

    invoke-direct {v7, v8, v9}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v8, Lt8/j;

    const-string v9, "gyroscope"

    const-string v10, "android.hardware.sensor.gyroscope"

    invoke-direct {v8, v9, v10}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v9, Lt8/j;

    const-string v10, "accelerometer"

    const-string v12, "android.hardware.sensor.accelerometer"

    invoke-direct {v9, v10, v12}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v10, Lt8/j;

    const-string v12, "compass"

    const-string v13, "android.hardware.sensor.compass"

    invoke-direct {v10, v12, v13}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v12, Lt8/j;

    const-string v13, "barometer"

    move-object/from16 v23, v5

    const-string v5, "android.hardware.sensor.barometer"

    invoke-direct {v12, v13, v5}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lt8/j;

    const-string v13, "telephony"

    move-object/from16 v24, v7

    const-string v7, "android.hardware.telephony"

    invoke-direct {v5, v13, v7}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Lt8/j;

    const-string v13, "android.hardware.wifi"

    invoke-direct {v7, v6, v13}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v29, v5

    move-object/from16 v30, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v27, v10

    move-object/from16 v28, v12

    filled-new-array/range {v23 .. v30}, [Lt8/j;

    move-result-object v5

    invoke-static {v5}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_23
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lt8/j;

    iget-object v7, v6, Lt8/j;->l:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v6, v6, Lt8/j;->m:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v8, "key"

    invoke-static {v7, v8}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Lia/m;->a:Lha/x;

    new-instance v8, Lia/s;

    const/4 v13, 0x0

    invoke-direct {v8, v6, v13}, Lia/s;-><init>(Ljava/io/Serializable;Z)V

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lia/l;

    goto :goto_23

    :cond_2a
    const/4 v13, 0x0

    new-instance v3, Lia/y;

    invoke-direct {v3, v0}, Lia/y;-><init>(Ljava/util/Map;)V

    const-string v0, "features"

    invoke-virtual {v11, v3, v0}, Lia/z;->c(Lia/l;Ljava/lang/String;)Lia/l;

    new-instance v3, Lia/z;

    invoke-direct {v3, v13}, Lia/z;-><init>(I)V

    invoke-static {v14}, Led/c;->b(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v5, "fine_location"

    invoke-static {v3, v5, v0}, Ll9/a;->u(Lia/z;Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v14, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2b

    const/4 v0, 0x1

    goto :goto_24

    :cond_2b
    const/4 v0, 0x0

    :goto_24
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v5, "coarse_location"

    invoke-static {v3, v5, v0}, Ll9/a;->u(Lia/z;Ljava/lang/String;Ljava/lang/Boolean;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x21

    if-lt v0, v5, :cond_2d

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {v14, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_25

    :cond_2c
    const/4 v0, 0x0

    goto :goto_26

    :cond_2d
    :goto_25
    const/4 v0, 0x1

    :goto_26
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v5, "notifications"

    invoke-static {v3, v5, v0}, Ll9/a;->u(Lia/z;Ljava/lang/String;Ljava/lang/Boolean;)V

    :try_start_9
    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "development_settings_enabled"

    const/4 v13, 0x0

    invoke-static {v0, v5, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v8, 0x1

    if-ne v0, v8, :cond_2e

    const/4 v8, 0x1

    goto :goto_27

    :cond_2e
    move v8, v13

    :goto_27
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    goto :goto_28

    :catchall_9
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_28
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v6, v0, Lt8/l;

    if-eqz v6, :cond_2f

    move-object v0, v5

    :cond_2f
    check-cast v0, Ljava/lang/Boolean;

    const-string v5, "developer_options"

    invoke-static {v3, v5, v0}, Ll9/a;->u(Lia/z;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v3}, Lia/z;->b()Lia/y;

    move-result-object v0

    const-string v3, "permissions"

    invoke-virtual {v11, v0, v3}, Lia/z;->c(Lia/l;Ljava/lang/String;)Lia/l;

    goto :goto_29

    :cond_30
    move-object v15, v7

    move-object/from16 v18, v10

    move-object/from16 v22, v12

    :goto_29
    invoke-virtual {v11}, Lia/z;->b()Lia/y;

    move-result-object v0

    invoke-virtual {v0}, Lia/y;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lod/d5;->x:Lr0/u0;

    invoke-interface {v3}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Lod/m;->q(Lr0/u0;)Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-virtual/range {v22 .. v22}, Lr0/a1;->g()F

    move-result v5

    float-to-double v5, v5

    goto :goto_2a

    :cond_31
    const-wide/16 v5, 0x0

    :goto_2a
    const-string v7, "logsDir"

    iget-object v8, v1, Lod/d5;->r:Ljava/io/File;

    invoke-static {v8, v7}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "metaJson"

    invoke-static {v0, v7}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "comment"

    invoke-static {v3, v7}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v15}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3a

    new-instance v7, Ljava/util/zip/ZipOutputStream;

    new-instance v9, Ljava/io/BufferedOutputStream;

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/high16 v11, 0x10000

    invoke-direct {v9, v10, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v7, v9}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v9, -0x1

    :try_start_a
    invoke-virtual {v7, v9}, Ljava/util/zip/ZipOutputStream;->setLevel(I)V

    const-string v9, "meta.json"

    new-instance v10, Ljava/util/zip/ZipEntry;

    invoke-direct {v10, v9}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    const-wide v11, 0x1a0c4506c00L

    invoke-virtual {v10, v11, v12}, Ljava/util/zip/ZipEntry;->setTime(J)V

    invoke-virtual {v7, v10}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    new-instance v9, Ljava/io/OutputStreamWriter;

    sget-object v10, Lr9/a;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v7, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    const/16 v13, 0x2000

    new-instance v14, Ljava/io/BufferedWriter;

    invoke-direct {v14, v9, v13}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    invoke-virtual {v14, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v7}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\r\n"

    const-string v14, "\n"

    invoke-static {v3, v9, v14}, Lr9/r;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v9, 0xd

    const/16 v14, 0xa

    invoke-static {v3, v9, v14}, Lr9/r;->P(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->codePoints()Ljava/util/stream/IntStream;

    move-result-object v3

    new-instance v9, Led/j;

    invoke-direct {v9, v0}, Led/j;-><init>(Ljava/lang/StringBuilder;)V

    invoke-interface {v3, v9}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "toString(...)"

    invoke-static {v0, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lr9/k;->w0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x3e8

    invoke-static {v3, v0}, Lr9/k;->v0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_32

    const-string v3, "comment.txt"

    new-instance v9, Ljava/util/zip/ZipEntry;

    invoke-direct {v9, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v11, v12}, Ljava/util/zip/ZipEntry;->setTime(J)V

    invoke-virtual {v7, v9}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v7, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    new-instance v9, Ljava/io/BufferedWriter;

    invoke-direct {v9, v3, v13}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    invoke-virtual {v9, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v7}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    goto :goto_2c

    :goto_2b
    move-object v1, v0

    goto/16 :goto_30

    :catchall_a
    move-exception v0

    goto :goto_2b

    :cond_32
    :goto_2c
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Led/g;

    iget-object v10, v9, Led/g;->a:Ljava/io/File;

    sget-object v14, Lr9/a;->a:Ljava/nio/charset/Charset;

    new-instance v15, Ljava/io/InputStreamReader;

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v15, v11, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance v10, Ljava/io/BufferedReader;

    invoke-direct {v10, v15, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    :try_start_b
    invoke-static {v10}, Lr5/h1;->s(Ljava/io/BufferedReader;)Lq9/h;

    move-result-object v11

    invoke-static {v11}, Led/n;->e(Lq9/h;)Lg5/m;

    move-result-object v11
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    :try_start_c
    invoke-interface {v10}, Ljava/io/Closeable;->close()V

    iget-object v10, v11, Lg5/m;->o:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    invoke-static {v10, v0}, Lu8/m;->V(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    invoke-virtual {v9}, Led/g;->a()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Led/k;

    invoke-direct {v12, v9, v11, v5, v6}, Led/k;-><init>(Led/g;Lg5/m;D)V

    invoke-static {v7, v10, v12}, Lb6/g;->k(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Led/k;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    const-wide v11, 0x1a0c4506c00L

    goto :goto_2d

    :catchall_b
    move-exception v0

    move-object v1, v0

    :try_start_d
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    :catchall_c
    move-exception v0

    :try_start_e
    invoke-static {v10, v1}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_33
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v3, "iterator(...)"

    invoke-static {v0, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    const-string v9, "next(...)"

    invoke-static {v3, v9}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/String;

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_34

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/32 v14, 0x800000

    cmp-long v10, v10, v14

    if-lez v10, :cond_35

    :cond_34
    :goto_2f
    const-wide v14, 0x1a0c4506c00L

    goto :goto_2e

    :cond_35
    sget-object v10, Led/n;->a:Lr9/i;

    sget-object v10, Lr9/a;->a:Ljava/nio/charset/Charset;

    invoke-static {v9, v10}, Lf9/j;->z(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v5, v6}, Led/n;->f(Ljava/lang/String;D)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_36

    goto :goto_2f

    :cond_36
    new-instance v11, Ljava/util/zip/ZipEntry;

    invoke-direct {v11, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    const-wide v14, 0x1a0c4506c00L

    invoke-virtual {v11, v14, v15}, Ljava/util/zip/ZipEntry;->setTime(J)V

    invoke-virtual {v7, v11}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v7, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    new-instance v10, Ljava/io/BufferedWriter;

    invoke-direct {v10, v3, v13}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    invoke-virtual {v10, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v7}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    goto :goto_2e

    :cond_37
    invoke-virtual {v7}, Ljava/util/zip/ZipOutputStream;->close()V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/32 v7, 0x1c00000

    cmp-long v0, v5, v7

    if-gtz v0, :cond_39

    invoke-virtual {v4}, Ljava/io/File;->length()J

    invoke-static {v4}, Lb6/g;->H(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lb0/y;

    const/16 v5, 0x1a

    iget-object v6, v1, Lod/d5;->y:Lr0/u0;

    invoke-direct {v3, v6, v5}, Lb0/y;-><init>(Lr0/u0;I)V

    const/4 v8, 0x1

    iput v8, v1, Lod/d5;->l:I

    iget-object v5, v1, Lod/d5;->s:Led/f;

    invoke-virtual {v5, v4, v0, v3, v1}, Led/f;->b(Ljava/io/File;Ljava/lang/String;Lb0/y;Lod/d5;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_38

    return-object v2

    :cond_38
    return-object v0

    :cond_39
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    new-instance v0, Led/o;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Led/o;-><init>(J)V

    throw v0

    :goto_30
    :try_start_f
    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_d

    :catchall_d
    move-exception v0

    invoke-static {v7, v1}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
