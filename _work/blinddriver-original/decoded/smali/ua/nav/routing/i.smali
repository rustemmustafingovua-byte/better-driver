.class public final Lua/nav/routing/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lid/f1;

.field public static final j:Lr9/i;

.field public static final k:Lr9/i;

.field public static final l:Lr9/i;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lu9/t;

.field public final c:Lid/e;

.field public final d:Z

.field public final e:Ljava/io/File;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/io/File;

.field public final h:Lx9/l0;

.field public final i:Lx9/l0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lid/f1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lua/nav/routing/i;->Companion:Lid/f1;

    new-instance v0, Lr9/i;

    const-string v1, "^[0-9a-fA-F]{64}$"

    invoke-direct {v0, v1}, Lr9/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lua/nav/routing/i;->j:Lr9/i;

    new-instance v0, Lr9/i;

    const-string v1, "^[a-z0-9_-]{1,32}$"

    invoke-direct {v0, v1}, Lr9/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lua/nav/routing/i;->k:Lr9/i;

    new-instance v0, Lr9/i;

    const-string v1, "^(edgekv_keys|edgekv_vals|edges|geometry|location_index|nodes|nodes_ch_[a-z0-9_]+|shortcuts_[a-z0-9_]+|properties|properties\\.txt|turn_cost|nodes_lm_[a-z0-9_]+|landmarks_[a-z0-9_]+)$"

    invoke-direct {v0, v1}, Lr9/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lua/nav/routing/i;->l:Lr9/i;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lu9/t;Lid/e;Z)V
    .locals 7

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "engine"

    invoke-static {p3, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lua/nav/routing/i;->a:Landroid/content/Context;

    iput-object p2, p0, Lua/nav/routing/i;->b:Lu9/t;

    iput-object p3, p0, Lua/nav/routing/i;->c:Lid/e;

    iput-boolean p4, p0, Lua/nav/routing/i;->d:Z

    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    const-string p3, "gh"

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    iput-object p2, p0, Lua/nav/routing/i;->e:Ljava/io/File;

    if-eqz p4, :cond_0

    const-string p1, "graph-truck"

    goto :goto_0

    :cond_0
    const-string p1, "graph-ua"

    :goto_0
    iput-object p1, p0, Lua/nav/routing/i;->f:Ljava/lang/String;

    new-instance p3, Ljava/io/File;

    const-string p4, ".json"

    invoke-virtual {p1, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p3, p0, Lua/nav/routing/i;->g:Ljava/io/File;

    new-instance v0, Lid/e1;

    const/4 v4, 0x0

    const-string v5, ""

    const/4 v1, 0x0

    sget-object v2, Lu8/r;->l:Lu8/r;

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lid/e1;-><init>(Lua/nav/routing/RoutingPackInfo;Ljava/util/List;ZILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object p1

    iput-object p1, p0, Lua/nav/routing/i;->h:Lx9/l0;

    iput-object p1, p0, Lua/nav/routing/i;->i:Lx9/l0;

    invoke-virtual {p0}, Lua/nav/routing/i;->b()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "id"

    invoke-static {v2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v1, Lua/nav/routing/i;->h:Lx9/l0;

    invoke-virtual {v3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lid/e1;

    iget-boolean v4, v4, Lid/e1;->c:Z

    if-eqz v4, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lid/e1;

    iget-object v4, v4, Lid/e1;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lua/nav/routing/RoutingPackInfo;

    iget-object v7, v7, Lua/nav/routing/RoutingPackInfo;->a:Ljava/lang/String;

    invoke-static {v7, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_2
    move-object v5, v6

    :goto_0
    check-cast v5, Lua/nav/routing/RoutingPackInfo;

    if-nez v5, :cond_3

    goto/16 :goto_4

    :cond_3
    sget-object v4, Lua/nav/routing/i;->Companion:Lid/f1;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lid/f1;->a(Lua/nav/routing/RoutingPackInfo;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_4

    invoke-virtual {v3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lid/e1;

    const/4 v12, 0x0

    const/16 v14, 0x1f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v7 .. v14}, Lid/e1;->a(Lid/e1;Lua/nav/routing/RoutingPackInfo;Ljava/util/ArrayList;ZILjava/lang/String;Ljava/lang/String;I)Lid/e1;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v6, v0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void

    :cond_4
    iget-wide v7, v5, Lua/nav/routing/RoutingPackInfo;->g:J

    iget-wide v4, v5, Lua/nav/routing/RoutingPackInfo;->h:J

    add-long/2addr v7, v4

    const-wide/32 v4, 0x6400000

    add-long/2addr v7, v4

    new-instance v4, Ljava/io/File;

    iget-object v5, v1, Lua/nav/routing/i;->f:Ljava/lang/String;

    const-string v9, ".zip.part"

    invoke-static {v5, v9}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v9, v1, Lua/nav/routing/i;->e:Ljava/io/File;

    invoke-direct {v4, v9, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    :cond_5
    move-object v4, v6

    :goto_1
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    goto :goto_2

    :cond_6
    const-wide/16 v4, 0x0

    :goto_2
    invoke-virtual {v9}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v10

    add-long/2addr v10, v4

    cmp-long v4, v10, v7

    if-gez v4, :cond_7

    invoke-virtual {v3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lid/e1;

    const v0, 0xf4240

    int-to-long v0, v0

    div-long/2addr v7, v0

    invoke-virtual {v9}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v4

    div-long/2addr v4, v0

    const-string v0, "\u0417\u0430\u043c\u0430\u043b\u043e \u043c\u0456\u0441\u0446\u044f: \u043f\u043e\u0442\u0440\u0456\u0431\u043d\u043e \u043f\u0440\u0438\u0431\u043b\u0438\u0437\u043d\u043e "

    const-string v1, " \u041c\u0411 \u0432\u0456\u043b\u044c\u043d\u043e, \u0454 "

    invoke-static {v0, v7, v8, v1}, La6/q;->o(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u041c\u0411"

    invoke-static {v4, v5, v1, v0}, La6/q;->h(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v10 .. v17}, Lid/e1;->a(Lid/e1;Lua/nav/routing/RoutingPackInfo;Ljava/util/ArrayList;ZILjava/lang/String;Ljava/lang/String;I)Lid/e1;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v6, v0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void

    :cond_7
    invoke-virtual {v3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lid/e1;

    const/4 v13, 0x0

    const/4 v14, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-string v12, "\u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043d\u044f"

    invoke-static/range {v7 .. v14}, Lid/e1;->a(Lid/e1;Lua/nav/routing/RoutingPackInfo;Ljava/util/ArrayList;ZILjava/lang/String;Ljava/lang/String;I)Lid/e1;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v6, v4}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    :try_start_0
    sget-object v3, Lua/nav/routing/PackDownloadService;->Companion:Lid/v;

    iget-object v4, v1, Lua/nav/routing/i;->a:Landroid/content/Context;

    iget-boolean v5, v1, Lua/nav/routing/i;->d:Z

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "ctx"

    invoke-static {v4, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    const-class v7, Lua/nav/routing/PackDownloadService;

    invoke-direct {v3, v4, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "truck"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "putExtra(...)"

    invoke-static {v0, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    sget-object v0, Lt8/z;->a:Lt8/z;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_3
    instance-of v0, v0, Lt8/l;

    if-eqz v0, :cond_8

    new-instance v0, Landroidx/lifecycle/i0;

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v6, v3}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    const/4 v2, 0x3

    iget-object v1, v1, Lua/nav/routing/i;->b:Lu9/t;

    invoke-static {v1, v6, v6, v0, v2}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    :cond_8
    :goto_4
    return-void
.end method

.method public final b()V
    .locals 13

    iget-object v1, p0, Lua/nav/routing/i;->c:Lid/e;

    invoke-virtual {v1}, Lid/e;->b()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v0, Lgd/h;->c:Lia/r;

    sget-object v3, Lua/nav/routing/RoutingPackInfo;->Companion:Lua/nav/routing/RoutingPackInfo$Companion;

    invoke-virtual {v3}, Lua/nav/routing/RoutingPackInfo$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/KSerializer;

    iget-object v4, p0, Lua/nav/routing/i;->g:Ljava/io/File;

    sget-object v5, Lr9/a;->a:Ljava/nio/charset/Charset;

    invoke-static {v4, v5}, Lf9/j;->z(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lia/c;->a(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lua/nav/routing/RoutingPackInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_0
    instance-of v3, v0, Lt8/l;

    if-eqz v3, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lua/nav/routing/RoutingPackInfo;

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    iget-object v3, p0, Lua/nav/routing/i;->h:Lx9/l0;

    invoke-virtual {v3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lid/e1;

    if-nez v0, :cond_6

    invoke-virtual {v1}, Lid/e;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean p0, p0, Lua/nav/routing/i;->d:Z

    if-eqz p0, :cond_2

    const-string v0, "ua_truck"

    :goto_2
    move-object v7, v0

    goto :goto_3

    :cond_2
    const-string v0, "ua"

    goto :goto_2

    :goto_3
    if-eqz p0, :cond_3

    const-string p0, "\u0423\u043a\u0440\u0430\u0457\u043d\u0430 \u0434\u043b\u044f \u0432\u0430\u043d\u0442\u0430\u0436\u0456\u0432\u043e\u043a"

    :goto_4
    move-object v8, p0

    goto :goto_5

    :cond_3
    const-string p0, "\u0423\u043a\u0440\u0430\u0457\u043d\u0430"

    goto :goto_4

    :goto_5
    const-string p0, "0"

    const/16 v0, 0x40

    invoke-static {v0, p0}, Lr9/r;->O(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object p0, v1, Lid/e;->b:Lb0/q0;

    invoke-virtual {p0}, Lb0/q0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_4

    array-length v4, p0

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v4, :cond_4

    aget-object v10, p0, v6

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v10

    add-long/2addr v0, v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_4
    move-wide v10, v0

    new-instance v6, Lua/nav/routing/RoutingPackInfo;

    invoke-direct/range {v6 .. v11}, Lua/nav/routing/RoutingPackInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_7

    :cond_5
    move-object v6, v2

    goto :goto_7

    :cond_6
    move-object v6, v0

    :goto_7
    const/4 v11, 0x0

    const/16 v12, 0x3e

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v12}, Lid/e1;->a(Lid/e1;Lua/nav/routing/RoutingPackInfo;Ljava/util/ArrayList;ZILjava/lang/String;Ljava/lang/String;I)Lid/e1;

    move-result-object p0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v2, p0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lua/nav/routing/i;->h:Lx9/l0;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lid/e1;

    iget-boolean v0, v0, Lid/e1;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lua/nav/routing/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lua/nav/routing/g;-><init>(Lua/nav/routing/i;Ly8/c;)V

    const/4 v2, 0x3

    iget-object p0, p0, Lua/nav/routing/i;->b:Lu9/t;

    invoke-static {p0, v1, v1, v0, v2}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    return-void
.end method

.method public final d(Ljava/lang/String;La9/c;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v5, p0

    move-object/from16 v0, p2

    instance-of v1, v0, Lid/g1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lid/g1;

    iget v2, v1, Lid/g1;->q:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lid/g1;->q:I

    :goto_0
    move-object v7, v1

    goto :goto_1

    :cond_0
    new-instance v1, Lid/g1;

    invoke-direct {v1, v5, v0}, Lid/g1;-><init>(Lua/nav/routing/i;La9/c;)V

    goto :goto_0

    :goto_1
    iget-object v0, v7, Lid/g1;->o:Ljava/lang/Object;

    sget-object v8, Lz8/a;->l:Lz8/a;

    iget v1, v7, Lid/g1;->q:I

    sget-object v9, Lt8/z;->a:Lt8/z;

    const/4 v10, 0x1

    iget-object v11, v5, Lua/nav/routing/i;->h:Lx9/l0;

    const/4 v12, 0x0

    if-eqz v1, :cond_2

    if-ne v1, v10, :cond_1

    iget-object v1, v7, Lid/g1;->n:Lj9/u;

    iget-object v2, v7, Lid/g1;->m:Ljava/io/File;

    iget-object v3, v7, Lid/g1;->l:Ljava/io/File;

    :try_start_0
    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    invoke-virtual {v11}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lid/e1;

    iget-object v0, v0, Lid/e1;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lua/nav/routing/RoutingPackInfo;

    iget-object v2, v2, Lua/nav/routing/RoutingPackInfo;->a:Ljava/lang/String;

    move-object/from16 v3, p1

    invoke-static {v2, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_4
    move-object v1, v12

    :goto_2
    move-object v3, v1

    check-cast v3, Lua/nav/routing/RoutingPackInfo;

    if-nez v3, :cond_5

    invoke-virtual {v11}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lid/e1;

    const/4 v7, 0x0

    const/16 v8, 0x3b

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lid/e1;->a(Lid/e1;Lua/nav/routing/RoutingPackInfo;Ljava/util/ArrayList;ZILjava/lang/String;Ljava/lang/String;I)Lid/e1;

    move-result-object v0

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11, v12, v0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object v9

    :cond_5
    invoke-virtual {v11}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lid/e1;

    const/16 v19, 0x0

    const/16 v20, 0xb

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const-string v18, "\u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043d\u044f"

    invoke-static/range {v13 .. v20}, Lid/e1;->a(Lid/e1;Lua/nav/routing/RoutingPackInfo;Ljava/util/ArrayList;ZILjava/lang/String;Ljava/lang/String;I)Lid/e1;

    move-result-object v0

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11, v12, v0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    new-instance v2, Ljava/io/File;

    const-string v0, ".zip.part"

    iget-object v1, v5, Lua/nav/routing/i;->f:Ljava/lang/String;

    invoke-static {v1, v0}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v5, Lua/nav/routing/i;->e:Ljava/io/File;

    invoke-direct {v2, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    const-string v0, ".tmp"

    invoke-static {v1, v0}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v4, Lj9/u;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    :try_start_1
    sget-object v0, Lu9/e0;->a:Lba/e;

    sget-object v13, Lba/d;->n:Lba/d;

    new-instance v0, Lua/nav/routing/h;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v1, v6

    const/4 v6, 0x0

    :try_start_2
    invoke-direct/range {v0 .. v6}, Lua/nav/routing/h;-><init>(Ljava/io/File;Ljava/io/File;Lua/nav/routing/RoutingPackInfo;Lj9/u;Lua/nav/routing/i;Ly8/c;)V

    iput-object v2, v7, Lid/g1;->l:Ljava/io/File;

    iput-object v1, v7, Lid/g1;->m:Ljava/io/File;

    iput-object v4, v7, Lid/g1;->n:Lj9/u;

    iput v10, v7, Lid/g1;->q:I

    invoke-static {v13, v0, v7}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v0, v8, :cond_6

    return-object v8

    :cond_6
    move-object v3, v2

    move-object v2, v1

    move-object v1, v4

    :goto_3
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lua/nav/routing/i;->b()V

    invoke-virtual {v11}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lid/e1;

    const-string v18, "\u0413\u043e\u0442\u043e\u0432\u043e"

    const/16 v19, 0x0

    const/16 v20, 0x27

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x64

    invoke-static/range {v13 .. v20}, Lid/e1;->a(Lid/e1;Lua/nav/routing/RoutingPackInfo;Ljava/util/ArrayList;ZILjava/lang/String;Ljava/lang/String;I)Lid/e1;

    move-result-object v0

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11, v12, v0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-boolean v0, v1, Lj9/u;->l:Z

    if-nez v0, :cond_7

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_7
    invoke-static {v2}, Lf9/j;->w(Ljava/io/File;)Z

    invoke-virtual {v11}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lid/e1;

    const/4 v7, 0x0

    const/16 v8, 0x3b

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lid/e1;->a(Lid/e1;Lua/nav/routing/RoutingPackInfo;Ljava/util/ArrayList;ZILjava/lang/String;Ljava/lang/String;I)Lid/e1;

    move-result-object v0

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11, v12, v0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object v9

    :catchall_1
    move-exception v0

    :goto_4
    move-object v3, v2

    move-object v2, v1

    move-object v1, v4

    goto/16 :goto_8

    :catch_1
    move-exception v0

    :goto_5
    move-object v3, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v1, v6

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v1, v6

    goto :goto_5

    :goto_6
    :try_start_4
    const-string v4, "RoutingPacks"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "download: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lid/e1;

    sget-object v4, Lgd/h;->a:Lr9/i;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const-string v0, "\u043f\u043e\u043c\u0438\u043b\u043a\u0430"

    :cond_8
    invoke-static {v0}, Lgd/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v4, v1, Lj9/u;->l:Z

    if-eqz v4, :cond_9

    const-string v4, ". \u041d\u0430\u0442\u0438\u0441\u043d\u0456\u0442\u044c \u00ab\u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0438\u0442\u0438\u00bb \u0449\u0435 \u0440\u0430\u0437: \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0435\u043d\u043d\u044f \u043f\u0440\u043e\u0434\u043e\u0432\u0436\u0438\u0442\u044c\u0441\u044f."

    goto :goto_7

    :cond_9
    const-string v4, ""

    :goto_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u041d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0438\u0442\u0438 \u0433\u0440\u0430\u0444 \u0434\u043e\u0440\u0456\u0433: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v18, ""

    const/16 v20, 0xf

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v13 .. v20}, Lid/e1;->a(Lid/e1;Lua/nav/routing/RoutingPackInfo;Ljava/util/ArrayList;ZILjava/lang/String;Ljava/lang/String;I)Lid/e1;

    move-result-object v0

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11, v12, v0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-boolean v0, v1, Lj9/u;->l:Z

    if-nez v0, :cond_a

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_a
    invoke-static {v2}, Lf9/j;->w(Ljava/io/File;)Z

    invoke-virtual {v11}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lid/e1;

    const/4 v7, 0x0

    const/16 v8, 0x3b

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lid/e1;->a(Lid/e1;Lua/nav/routing/RoutingPackInfo;Ljava/util/ArrayList;ZILjava/lang/String;Ljava/lang/String;I)Lid/e1;

    move-result-object v0

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11, v12, v0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object v9

    :goto_8
    iget-boolean v1, v1, Lj9/u;->l:Z

    if-nez v1, :cond_b

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_b
    invoke-static {v2}, Lf9/j;->w(Ljava/io/File;)Z

    invoke-virtual {v11}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lid/e1;

    const/4 v8, 0x0

    const/16 v9, 0x3b

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v9}, Lid/e1;->a(Lid/e1;Lua/nav/routing/RoutingPackInfo;Ljava/util/ArrayList;ZILjava/lang/String;Ljava/lang/String;I)Lid/e1;

    move-result-object v1

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11, v12, v1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    throw v0
.end method
