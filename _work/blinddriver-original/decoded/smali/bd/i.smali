.class public final Lbd/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lbd/g;

.field public static final g:Lr9/i;

.field public static final h:Lr9/i;


# instance fields
.field public final a:Lu9/t;

.field public final b:Ljava/io/File;

.field public final c:Ljava/io/File;

.field public final d:Landroid/content/SharedPreferences;

.field public final e:Lx9/l0;

.field public final f:Lx9/l0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbd/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbd/i;->Companion:Lbd/g;

    new-instance v0, Lr9/i;

    const-string v1, "^[0-9a-fA-F]{64}$"

    invoke-direct {v0, v1}, Lr9/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lbd/i;->g:Lr9/i;

    new-instance v0, Lr9/i;

    const-string v1, "^[0-9]{4}-[0-9]{2}-[0-9]{2}$"

    invoke-direct {v0, v1}, Lr9/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lbd/i;->h:Lr9/i;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lu9/t;Lp/a1;)V
    .locals 7

    const-string p3, "scope"

    invoke-static {p2, p3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lbd/i;->a:Lu9/t;

    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p3

    const-string v0, "roadobjects"

    invoke-direct {p2, p3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    iput-object p2, p0, Lbd/i;->b:Ljava/io/File;

    new-instance p3, Ljava/io/File;

    const-string v0, "road_objects_ua.json"

    invoke-direct {p3, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p3, p0, Lbd/i;->c:Ljava/io/File;

    const-string p2, "road_objects"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lbd/i;->d:Landroid/content/SharedPreferences;

    new-instance v0, Lbd/f;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lbd/f;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-static {v0}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object p1

    iput-object p1, p0, Lbd/i;->e:Lx9/l0;

    iput-object p1, p0, Lbd/i;->f:Lx9/l0;

    return-void
.end method

.method public static final a(Lbd/i;Lua/nav/hazards/RoadObjectsPackInfo;La9/c;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v4, p0

    move-object/from16 v0, p2

    iget-object v1, v4, Lbd/i;->b:Ljava/io/File;

    instance-of v2, v0, Lbd/h;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lbd/h;

    iget v3, v2, Lbd/h;->p:I

    const/high16 v5, -0x80000000

    and-int v6, v3, v5

    if-eqz v6, :cond_0

    sub-int/2addr v3, v5

    iput v3, v2, Lbd/h;->p:I

    :goto_0
    move-object v7, v2

    goto :goto_1

    :cond_0
    new-instance v2, Lbd/h;

    invoke-direct {v2, v4, v0}, Lbd/h;-><init>(Lbd/i;La9/c;)V

    goto :goto_0

    :goto_1
    iget-object v0, v7, Lbd/h;->n:Ljava/lang/Object;

    sget-object v8, Lz8/a;->l:Lz8/a;

    iget v2, v7, Lbd/h;->p:I

    sget-object v9, Lt8/z;->a:Lt8/z;

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v11, :cond_2

    if-ne v2, v10, :cond_1

    iget-object v1, v7, Lbd/h;->m:Ljava/io/File;

    iget-object v2, v7, Lbd/h;->l:Ljava/io/File;

    :try_start_0
    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, v7, Lbd/h;->m:Ljava/io/File;

    iget-object v2, v7, Lbd/h;->l:Ljava/io/File;

    :try_start_1
    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_3
    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    new-instance v2, Ljava/io/File;

    const-string v0, "download.gz"

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v0, "download.json"

    invoke-direct {v3, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_2
    sget-object v0, Lu9/e0;->a:Lba/e;

    sget-object v13, Lba/d;->n:Lba/d;

    new-instance v0, Lb0/z0;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lb0/z0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    iput-object v2, v7, Lbd/h;->l:Ljava/io/File;

    iput-object v3, v7, Lbd/h;->m:Ljava/io/File;

    iput v11, v7, Lbd/h;->p:I

    invoke-static {v13, v0, v7}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v0, v8, :cond_4

    goto :goto_4

    :cond_4
    move-object v1, v3

    :goto_2
    :try_start_3
    invoke-static {}, Lsc/i0;->d()Lbd/l;

    move-result-object v0

    iput-object v2, v7, Lbd/h;->l:Ljava/io/File;

    iput-object v1, v7, Lbd/h;->m:Ljava/io/File;

    iput v10, v7, Lbd/h;->p:I

    sget-object v3, Lu9/e0;->a:Lba/e;

    sget-object v3, Lba/d;->n:Lba/d;

    new-instance v5, Lad/w;

    const/4 v6, 0x5

    invoke-direct {v5, v0, v12, v6}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    invoke-static {v3, v5, v7}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_5

    goto :goto_3

    :cond_5
    move-object v0, v9

    :goto_3
    if-ne v0, v8, :cond_6

    :goto_4
    return-object v8

    :cond_6
    :goto_5
    invoke-virtual {v4}, Lbd/i;->c()V

    iget-object v0, v4, Lbd/i;->e:Lx9/l0;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lbd/f;

    const/16 v19, 0x0

    const/16 v20, 0x3b

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v13 .. v20}, Lbd/f;->a(Lbd/f;Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;I)Lbd/f;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v12, v3}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    return-object v9

    :catchall_1
    move-exception v0

    move-object v1, v3

    :goto_6
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    throw v0
.end method


# virtual methods
.method public final b()V
    .locals 3

    iget-object v0, p0, Lbd/i;->e:Lx9/l0;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbd/f;

    iget-boolean v0, v0, Lbd/f;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lua/nav/hazards/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lua/nav/hazards/a;-><init>(Lbd/i;Ly8/c;)V

    const/4 v2, 0x3

    iget-object p0, p0, Lbd/i;->a:Lu9/t;

    invoke-static {p0, v1, v1, v0, v2}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    return-void
.end method

.method public final c()V
    .locals 9

    iget-object p0, p0, Lbd/i;->e:Lx9/l0;

    invoke-virtual {p0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lbd/f;

    invoke-static {}, Lsc/i0;->d()Lbd/l;

    move-result-object v0

    iget-object v2, v0, Lbd/l;->c:Ljava/lang/String;

    invoke-static {}, Lsc/i0;->d()Lbd/l;

    move-result-object v0

    iget-object v0, v0, Lbd/l;->b:Lbd/e;

    iget-object v0, v0, Lbd/e;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x0

    const/16 v8, 0x3c

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v8}, Lbd/f;->a(Lbd/f;Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;I)Lbd/f;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
