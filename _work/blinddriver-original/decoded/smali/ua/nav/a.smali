.class public final Lua/nav/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final Companion:Lsc/a;


# instance fields
.field public final a:Landroid/content/SharedPreferences;

.field public final b:Lx9/l0;

.field public final c:Lx9/l0;

.field public final d:Lx9/l0;

.field public final e:Lx9/l0;

.field public final f:Lx9/l0;

.field public final g:Lx9/l0;

.field public final h:Lx9/l0;

.field public final i:Lx9/l0;

.field public final j:Lx9/l0;

.field public final k:Lx9/l0;

.field public final l:Lx9/l0;

.field public final m:Lx9/l0;

.field public final n:Lx9/l0;

.field public final o:Lx9/l0;

.field public final p:Lx9/l0;

.field public final q:Lx9/l0;

.field public final r:Lx9/l0;

.field public final s:Lx9/l0;

.field public final t:Lx9/l0;

.field public final u:Lx9/l0;

.field public final v:Lx9/l0;

.field public final w:Lx9/l0;

.field public final x:Lx9/l0;

.field public final y:Lx9/l0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsc/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lua/nav/a;->Companion:Lsc/a;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 22

    move-object/from16 v1, p0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "app"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, v1, Lua/nav/a;->a:Landroid/content/SharedPreferences;

    const-string v2, "auto_reroute"

    const/4 v4, 0x1

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object v2

    iput-object v2, v1, Lua/nav/a;->b:Lx9/l0;

    iput-object v2, v1, Lua/nav/a;->c:Lx9/l0;

    const-string v2, "auto_reroute_blind"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object v2

    iput-object v2, v1, Lua/nav/a;->d:Lx9/l0;

    iput-object v2, v1, Lua/nav/a;->e:Lx9/l0;

    const-string v2, "road_filter"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object v2

    iput-object v2, v1, Lua/nav/a;->f:Lx9/l0;

    iput-object v2, v1, Lua/nav/a;->g:Lx9/l0;

    const-string v2, "truck_mode"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object v2

    iput-object v2, v1, Lua/nav/a;->h:Lx9/l0;

    iput-object v2, v1, Lua/nav/a;->i:Lx9/l0;

    sget-object v2, Lid/l1;->Companion:Lid/k1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/high16 v5, 0x4034000000000000L    # 20.0

    double-to-float v2, v5

    const-string v5, "truck_weight_t"

    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    float-to-double v5, v2

    const-wide/high16 v7, 0x4010000000000000L    # 4.0

    double-to-float v2, v7

    const-string v7, "truck_height_m"

    invoke-interface {v0, v7, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    float-to-double v11, v2

    const-wide v7, 0x4004666666666666L    # 2.55

    double-to-float v2, v7

    const-string v7, "truck_width_m"

    invoke-interface {v0, v7, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    float-to-double v13, v2

    new-instance v2, Lid/l1;

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v9, 0x404e000000000000L    # 60.0

    invoke-static/range {v5 .. v10}, Lg6/c1;->d(DDD)D

    move-result-wide v5

    const-wide/high16 v9, 0x3ff8000000000000L    # 1.5

    move-wide v7, v11

    const-wide/high16 v11, 0x4012000000000000L    # 4.5

    invoke-static/range {v7 .. v12}, Lg6/c1;->d(DDD)D

    move-result-wide v7

    const-wide/high16 v15, 0x3ff8000000000000L    # 1.5

    const-wide/high16 v17, 0x4008000000000000L    # 3.0

    invoke-static/range {v13 .. v18}, Lg6/c1;->d(DDD)D

    move-result-wide v20

    move-object v15, v2

    move-wide/from16 v16, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v15 .. v21}, Lid/l1;-><init>(DDD)V

    invoke-static {v15}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object v2

    iput-object v2, v1, Lua/nav/a;->j:Lx9/l0;

    iput-object v2, v1, Lua/nav/a;->k:Lx9/l0;

    const-string v2, "auto_record"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v6

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object v2

    iput-object v2, v1, Lua/nav/a;->l:Lx9/l0;

    iput-object v2, v1, Lua/nav/a;->m:Lx9/l0;

    const-string v2, "alerts_quiet"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object v2

    iput-object v2, v1, Lua/nav/a;->n:Lx9/l0;

    iput-object v2, v1, Lua/nav/a;->o:Lx9/l0;

    const-string v2, "cache_route"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object v2

    iput-object v2, v1, Lua/nav/a;->p:Lx9/l0;

    iput-object v2, v1, Lua/nav/a;->q:Lx9/l0;

    const-string v2, "cache_area"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object v2

    iput-object v2, v1, Lua/nav/a;->r:Lx9/l0;

    iput-object v2, v1, Lua/nav/a;->s:Lx9/l0;

    const-string v2, "cache_area_km"

    const/16 v3, 0x32

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object v2

    iput-object v2, v1, Lua/nav/a;->t:Lx9/l0;

    iput-object v2, v1, Lua/nav/a;->u:Lx9/l0;

    const-string v2, "cache_area_wifi"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object v2

    iput-object v2, v1, Lua/nav/a;->v:Lx9/l0;

    iput-object v2, v1, Lua/nav/a;->w:Lx9/l0;

    sget-object v2, Lua/nav/Tuning;->Companion:Lua/nav/Tuning$Companion;

    const-string v3, "tuning_json"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    :try_start_0
    sget-object v3, Lua/nav/Tuning;->V:Lia/r;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lua/nav/Tuning$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-virtual {v3, v0, v2}, Lia/c;->a(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lua/nav/Tuning;

    invoke-virtual {v0}, Lua/nav/Tuning;->a()Lua/nav/Tuning;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_2
    sget-object v2, Lua/nav/Tuning;->U:Lua/nav/Tuning;

    instance-of v3, v0, Lt8/l;

    if-eqz v3, :cond_3

    move-object v0, v2

    :cond_3
    check-cast v0, Lua/nav/Tuning;

    goto :goto_4

    :cond_4
    :goto_3
    sget-object v0, Lua/nav/Tuning;->U:Lua/nav/Tuning;

    :goto_4
    invoke-static {v0}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object v0

    iput-object v0, v1, Lua/nav/a;->x:Lx9/l0;

    iput-object v0, v1, Lua/nav/a;->y:Lx9/l0;

    return-void
.end method


# virtual methods
.method public final a()Lx9/l0;
    .locals 0

    iget-object p0, p0, Lua/nav/a;->s:Lx9/l0;

    return-object p0
.end method

.method public final b()Lx9/l0;
    .locals 0

    iget-object p0, p0, Lua/nav/a;->u:Lx9/l0;

    return-object p0
.end method

.method public final c()Lx9/l0;
    .locals 0

    iget-object p0, p0, Lua/nav/a;->w:Lx9/l0;

    return-object p0
.end method

.method public final d()Lx9/l0;
    .locals 0

    iget-object p0, p0, Lua/nav/a;->q:Lx9/l0;

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object p0, p0, Lua/nav/a;->a:Landroid/content/SharedPreferences;

    const-string v1, "install_id"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p0, "also(...)"

    invoke-static {v0, p0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final f()Ljava/util/Set;
    .locals 2

    iget-object p0, p0, Lua/nav/a;->a:Landroid/content/SharedPreferences;

    const-string v0, "log_sent"

    sget-object v1, Lu8/t;->l:Lu8/t;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lu8/m;->F0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1
.end method

.method public final g()Lx9/l0;
    .locals 0

    iget-object p0, p0, Lua/nav/a;->y:Lx9/l0;

    return-object p0
.end method

.method public final h(Ljava/util/ArrayList;)V
    .locals 3

    invoke-virtual {p0}, Lua/nav/a;->f()Ljava/util/Set;

    move-result-object v0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    add-int/2addr v2, v1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    mul-int/lit8 v2, v1, 0x2

    :goto_1
    invoke-static {v2}, Lu8/v;->J(I)I

    move-result v1

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v2, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    invoke-static {p1, v2}, Lu8/m;->V(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    sget-object p1, Lw8/a;->c:Lw8/a;

    invoke-static {v2, p1}, Lu8/m;->w0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    const/16 v0, 0x1f4

    invoke-static {p1, v0}, Lu8/m;->x0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lu8/m;->F0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iget-object p0, p0, Lua/nav/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "log_sent"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final i(Z)V
    .locals 3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lua/nav/a;->b:Lx9/l0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p0, p0, Lua/nav/a;->a:Landroid/content/SharedPreferences;

    const-string v0, "auto_reroute"

    invoke-static {p0, v0, p1}, Lr0/i;->n(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    return-void
.end method

.method public final j(ZZ)V
    .locals 3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lua/nav/a;->f:Lx9/l0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p0, p0, Lua/nav/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "road_filter"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "road_filter_auto_off"

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final k(Lid/l1;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lid/l1;->Companion:Lid/k1;

    iget-wide v3, v1, Lid/l1;->a:D

    iget-wide v9, v1, Lid/l1;->b:D

    iget-wide v11, v1, Lid/l1;->c:D

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lid/l1;

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v7, 0x404e000000000000L    # 60.0

    invoke-static/range {v3 .. v8}, Lg6/c1;->d(DDD)D

    move-result-wide v2

    const-wide/high16 v7, 0x3ff8000000000000L    # 1.5

    move-wide v5, v9

    const-wide/high16 v9, 0x4012000000000000L    # 4.5

    invoke-static/range {v5 .. v10}, Lg6/c1;->d(DDD)D

    move-result-wide v4

    const-wide/high16 v13, 0x3ff8000000000000L    # 1.5

    const-wide/high16 v15, 0x4008000000000000L    # 3.0

    invoke-static/range {v11 .. v16}, Lg6/c1;->d(DDD)D

    move-result-wide v18

    move-object v13, v1

    move-wide v14, v2

    move-wide/from16 v16, v4

    invoke-direct/range {v13 .. v19}, Lid/l1;-><init>(DDD)V

    move-wide/from16 v1, v16

    move-wide/from16 v3, v18

    iget-object v5, v0, Lua/nav/a;->j:Lx9/l0;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v13}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, v0, Lua/nav/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v5, "truck_weight_t"

    double-to-float v6, v14

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v5, "truck_height_m"

    double-to-float v1, v1

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "truck_width_m"

    double-to-float v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final l(Lua/nav/Tuning;)V
    .locals 2

    const-string v0, "t"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lua/nav/Tuning;->a()Lua/nav/Tuning;

    move-result-object p1

    iget-object v0, p0, Lua/nav/a;->x:Lx9/l0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p0, p0, Lua/nav/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget-object v0, Lua/nav/Tuning;->V:Lia/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lua/nav/Tuning;->Companion:Lua/nav/Tuning$Companion;

    invoke-virtual {v1}, Lua/nav/Tuning$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/KSerializer;

    invoke-virtual {v0, v1, p1}, Lia/c;->b(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "tuning_json"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
