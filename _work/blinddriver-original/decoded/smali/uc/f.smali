.class public final Luc/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final Companion:Luc/e;


# instance fields
.field public final a:Landroid/content/SharedPreferences;

.field public b:Lgd/d;

.field public c:Lu9/t;

.field public volatile d:Z

.field public final e:J

.field public final f:Lx9/l0;

.field public final g:Lx9/l0;

.field public final h:Lx9/l0;

.field public final i:Lx9/l0;

.field public final j:Lx9/l0;

.field public final k:Lx9/l0;

.field public final l:Lx9/l0;

.field public final m:Lx9/l0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Luc/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Luc/f;->Companion:Luc/e;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "entitlement"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Luc/f;->a:Landroid/content/SharedPreferences;

    const-wide/16 v2, -0x1

    const-string v0, "installed_at_ms"

    invoke-interface {p1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-wide/16 v5, 0x0

    cmp-long v2, v2, v5

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_1
    iput-wide v2, p0, Luc/f;->e:J

    const-string v0, "is_pro"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object v0

    iput-object v0, p0, Luc/f;->f:Lx9/l0;

    invoke-virtual {p0}, Luc/f;->d()Luc/c;

    move-result-object v0

    invoke-static {v0}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object v0

    iput-object v0, p0, Luc/f;->g:Lx9/l0;

    iput-object v0, p0, Luc/f;->h:Lx9/l0;

    invoke-virtual {p0}, Luc/f;->c()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object v0

    iput-object v0, p0, Luc/f;->i:Lx9/l0;

    iput-object v0, p0, Luc/f;->j:Lx9/l0;

    const-string v0, "srv_tg_linked"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object v0

    iput-object v0, p0, Luc/f;->k:Lx9/l0;

    iput-object v0, p0, Luc/f;->l:Lx9/l0;

    const-string v0, "srv_fetched_at_ms"

    invoke-interface {p1, v0, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object p1

    iput-object p1, p0, Luc/f;->m:Lx9/l0;

    return-void
.end method

.method public static final a(Luc/f;Lua/nav/net/EntitlementDto;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lua/nav/net/EntitlementDto;->k:J

    iget-boolean v6, v1, Lua/nav/net/EntitlementDto;->j:Z

    const-wide/16 v7, 0x0

    cmp-long v9, v4, v7

    const/16 v10, 0x3e8

    if-lez v9, :cond_0

    int-to-long v11, v10

    mul-long/2addr v11, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Luc/f;->f()J

    move-result-wide v11

    :goto_0
    iget-object v9, v0, Luc/f;->a:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    cmp-long v4, v4, v7

    if-lez v4, :cond_1

    const-string v4, "clock_offset_ms"

    sub-long v7, v11, v2

    invoke-interface {v9, v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "clock_sync_elapsed_ms"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-interface {v4, v5, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "clock_sync_wall_ms"

    invoke-interface {v4, v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_1
    const-string v2, "srv_gating"

    iget-boolean v3, v1, Lua/nav/net/EntitlementDto;->g:Z

    invoke-interface {v9, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, v1, Lua/nav/net/EntitlementDto;->h:Ljava/lang/Long;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    int-to-long v13, v10

    mul-long/2addr v7, v13

    goto :goto_1

    :cond_2
    const-wide/16 v7, -0x1

    :goto_1
    const-string v3, "srv_gating_since_ms"

    invoke-interface {v2, v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget v3, v1, Lua/nav/net/EntitlementDto;->i:I

    const/4 v7, 0x0

    const/16 v8, 0x16d

    invoke-static {v3, v7, v8}, Lg6/c1;->f(III)I

    move-result v3

    const-string v7, "srv_trial_days"

    invoke-interface {v2, v7, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "srv_tg_linked"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "srv_fetched_at_ms"

    invoke-interface {v2, v3, v11, v12}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "srv_ever_answered"

    const/4 v7, 0x1

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v2, v1, Lua/nav/net/EntitlementDto;->a:Ljava/lang/String;

    const-string v3, "free"

    invoke-static {v2, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "srv_lifetime"

    const-string v7, "srv_expires_ms"

    const-string v8, "srv_tier_title"

    const-string v13, "srv_features"

    if-eqz v2, :cond_3

    invoke-interface {v9, v13}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_5

    :cond_3
    iget-object v2, v1, Lua/nav/net/EntitlementDto;->c:Ljava/util/List;

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    const/16 v4, 0x28

    if-eqz v16, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v16, v5

    check-cast v16, Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v14

    if-gt v14, v4, :cond_4

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-static {v15}, Lu8/m;->F0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v9, v13, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v5, v1, Lua/nav/net/EntitlementDto;->b:Ljava/lang/String;

    if-eqz v5, :cond_6

    invoke-static {v4, v5}, Lr9/k;->v0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    invoke-interface {v2, v8, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v4, v1, Lua/nav/net/EntitlementDto;->d:Ljava/lang/Long;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    int-to-long v13, v10

    mul-long/2addr v4, v13

    goto :goto_4

    :cond_7
    const-wide/16 v4, -0x1

    :goto_4
    invoke-interface {v2, v7, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-boolean v1, v1, Lua/nav/net/EntitlementDto;->e:Z

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_5
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, v0, Luc/f;->k:Lx9/l0;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v1, v0, Luc/f;->m:Lx9/l0;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v3, v2}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v1, v0, Luc/f;->g:Lx9/l0;

    invoke-virtual {v0}, Luc/f;->d()Luc/c;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v3, v2}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v1, v0, Luc/f;->i:Lx9/l0;

    invoke-virtual {v0}, Luc/f;->c()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lx9/l0;->j(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b(I)Z
    .locals 2

    invoke-virtual {p0}, Luc/f;->d()Luc/c;

    move-result-object v0

    iget-object p0, p0, Luc/f;->g:Lx9/l0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Luc/c;

    const-string v0, "unlimited_via"

    invoke-virtual {p0, v0}, Luc/c;->b(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ge p1, p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_1
    return v0
.end method

.method public final c()Ljava/lang/Integer;
    .locals 2

    invoke-virtual {p0}, Luc/f;->d()Luc/c;

    move-result-object v0

    const-string v1, "unlimited_builds"

    invoke-virtual {v0, v1}, Luc/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Luc/f;->j()I

    move-result p0

    rsub-int/lit8 p0, p0, 0x5

    if-gez p0, :cond_1

    const/4 p0, 0x0

    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final d()Luc/c;
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual {v0}, Luc/f;->e()Lt8/j;

    move-result-object v1

    iget-object v2, v1, Lt8/j;->l:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v1, v1, Lt8/j;->m:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    sget-object v3, Luc/d;->a:Ljava/util/Set;

    iget-wide v3, v0, Luc/f;->e:J

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-virtual {v0}, Luc/f;->f()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    iget-object v1, v0, Luc/f;->f:Lx9/l0;

    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v5, 0x0

    iget-object v6, v0, Luc/f;->a:Landroid/content/SharedPreferences;

    const-wide/16 v7, 0x0

    if-eqz v1, :cond_1

    new-instance v9, Luc/b;

    sget-object v10, Luc/d;->a:Ljava/util/Set;

    const/4 v13, 0x1

    invoke-virtual {v0}, Luc/f;->f()J

    move-result-wide v14

    const-string v11, "Pro (debug)"

    const/4 v12, 0x0

    invoke-direct/range {v9 .. v15}, Luc/b;-><init>(Ljava/util/Set;Ljava/lang/String;Ljava/lang/Long;ZJ)V

    goto :goto_3

    :cond_1
    const-string v1, "srv_features"

    sget-object v9, Lu8/t;->l:Lu8/t;

    invoke-interface {v6, v1, v9}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v11, v9

    goto :goto_1

    :cond_2
    move-object v11, v1

    :goto_1
    invoke-interface {v11}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v9, v5

    goto :goto_3

    :cond_3
    const-string v1, "srv_tier_title"

    invoke-interface {v6, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v1, "srv_expires_ms"

    const-wide/16 v9, -0x1

    invoke-interface {v6, v1, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    cmp-long v9, v9, v7

    if-ltz v9, :cond_4

    move-object v13, v1

    goto :goto_2

    :cond_4
    move-object v13, v5

    :goto_2
    const-string v1, "srv_lifetime"

    const/4 v9, 0x0

    invoke-interface {v6, v1, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    const-string v1, "srv_fetched_at_ms"

    invoke-interface {v6, v1, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v15

    new-instance v10, Luc/b;

    invoke-direct/range {v10 .. v16}, Luc/b;-><init>(Ljava/util/Set;Ljava/lang/String;Ljava/lang/Long;ZJ)V

    move-object v9, v10

    :goto_3
    invoke-virtual {v0}, Luc/f;->f()J

    move-result-wide v0

    const-string v10, "srv_trial_days"

    const/16 v11, 0xf

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-nez v2, :cond_6

    if-eqz v9, :cond_5

    invoke-static {v9, v0, v1}, Luc/d;->a(Luc/b;J)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v9, Luc/b;->a:Ljava/util/Set;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v10, Luc/c;

    sget-object v11, Luc/a;->o:Luc/a;

    sget-object v13, Luc/d;->a:Ljava/util/Set;

    iget-object v14, v9, Luc/b;->b:Ljava/lang/String;

    iget-object v15, v9, Luc/b;->c:Ljava/lang/Long;

    iget-boolean v0, v9, Luc/b;->d:Z

    const/4 v12, 0x0

    move/from16 v16, v0

    invoke-direct/range {v10 .. v16}, Luc/c;-><init>(Luc/a;Ljava/lang/Integer;Ljava/util/Set;Ljava/lang/String;Ljava/lang/Long;Z)V

    return-object v10

    :cond_5
    new-instance v0, Luc/c;

    sget-object v1, Luc/a;->l:Luc/a;

    invoke-direct {v0, v1, v5}, Luc/c;-><init>(Luc/a;Ljava/lang/Integer;)V

    return-object v0

    :cond_6
    if-eqz v9, :cond_7

    invoke-static {v9, v0, v1}, Luc/d;->a(Luc/b;J)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v9, Luc/b;->a:Ljava/util/Set;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v10, Luc/c;

    sget-object v11, Luc/a;->o:Luc/a;

    iget-object v13, v9, Luc/b;->a:Ljava/util/Set;

    iget-object v14, v9, Luc/b;->b:Ljava/lang/String;

    iget-object v15, v9, Luc/b;->c:Ljava/lang/Long;

    iget-boolean v0, v9, Luc/b;->d:Z

    const/4 v12, 0x0

    move/from16 v16, v0

    invoke-direct/range {v10 .. v16}, Luc/c;-><init>(Luc/a;Ljava/lang/Integer;Ljava/util/Set;Ljava/lang/String;Ljava/lang/Long;Z)V

    return-object v10

    :cond_7
    int-to-long v9, v6

    const-wide/32 v11, 0x5265c00

    mul-long/2addr v9, v11

    sub-long/2addr v0, v3

    sub-long/2addr v9, v0

    cmp-long v0, v9, v7

    if-lez v0, :cond_8

    new-instance v0, Luc/c;

    sget-object v1, Luc/a;->m:Luc/a;

    const-wide/32 v2, 0x5265bff

    add-long/2addr v9, v2

    div-long/2addr v9, v11

    long-to-int v2, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Luc/c;-><init>(Luc/a;Ljava/lang/Integer;)V

    return-object v0

    :cond_8
    new-instance v0, Luc/c;

    sget-object v1, Luc/a;->n:Luc/a;

    invoke-direct {v0, v1, v5}, Luc/c;-><init>(Luc/a;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public final e()Lt8/j;
    .locals 10

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "gating_fallback_ms"

    iget-object v4, p0, Luc/f;->a:Landroid/content/SharedPreferences;

    invoke-interface {v4, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, v0

    if-lez v6, :cond_0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lu8/m;->n0(Ljava/util/ArrayList;)Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    sget-object v3, Luc/d;->a:Ljava/util/Set;

    const-string v3, "srv_ever_answered"

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "srv_fetched_at_ms"

    invoke-interface {v4, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v3, v6, v0

    if-lez v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v5

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v3, 0x1

    :goto_2
    const-string v6, "srv_gating"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "srv_gating_since_ms"

    const-wide/16 v7, -0x1

    invoke-interface {v4, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    cmp-long v6, v6, v0

    const/4 v7, 0x0

    if-ltz v6, :cond_4

    goto :goto_3

    :cond_4
    move-object v4, v7

    :goto_3
    invoke-virtual {p0}, Luc/f;->f()J

    move-result-wide v8

    if-eqz v3, :cond_5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    new-instance v0, Lt8/j;

    invoke-direct {v0, p0, v4}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long p0, v3, v0

    if-lez p0, :cond_6

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p0, v8, v0

    if-ltz p0, :cond_6

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v0, Lt8/j;

    invoke-direct {v0, p0, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_6
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v0, Lt8/j;

    invoke-direct {v0, p0, v7}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final f()J
    .locals 16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v4, p0

    iget-object v4, v4, Luc/f;->a:Landroid/content/SharedPreferences;

    const-string v5, "clock_offset_ms"

    const-wide/16 v6, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v5, "clock_sync_elapsed_ms"

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    const-string v5, "clock_sync_wall_ms"

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    const-wide/32 v14, 0x927c0

    cmp-long v12, v12, v14

    if-ltz v12, :cond_2

    cmp-long v6, v10, v6

    if-lez v6, :cond_2

    cmp-long v6, v2, v10

    if-gez v6, :cond_0

    goto :goto_0

    :cond_0
    sub-long v4, v0, v4

    sub-long/2addr v2, v10

    sub-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    add-long/2addr v0, v8

    :cond_2
    :goto_0
    return-wide v0
.end method

.method public final g()V
    .locals 6

    invoke-virtual {p0}, Luc/f;->d()Luc/c;

    move-result-object v0

    iget-object v1, p0, Luc/f;->g:Lx9/l0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Luc/f;->i:Lx9/l0;

    invoke-virtual {p0}, Luc/f;->c()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx9/l0;->j(Ljava/lang/Object;)V

    invoke-virtual {p0}, Luc/f;->f()J

    move-result-wide v0

    const-string v2, "bot_opened_at_ms"

    const-wide/16 v3, 0x0

    iget-object v5, p0, Luc/f;->a:Landroid/content/SharedPreferences;

    invoke-interface {v5, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Luc/f;->h(Z)V

    return-void
.end method

.method public final h(Z)V
    .locals 6

    iget-object v0, p0, Luc/f;->b:Lgd/d;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Luc/f;->c:Lu9/t;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Luc/f;->d:Z

    if-nez v2, :cond_3

    if-nez p1, :cond_2

    invoke-virtual {p0}, Luc/f;->f()J

    move-result-wide v2

    iget-object p1, p0, Luc/f;->m:Lx9/l0;

    invoke-virtual {p1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x1499700

    cmp-long p1, v2, v4

    if-gez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Luc/f;->d:Z

    new-instance p1, Lp/b;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-direct {p1, v0, p0, v3, v2}, Lp/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    const/4 p0, 0x3

    invoke-static {v1, v3, v3, p1, p0}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    :cond_3
    :goto_0
    return-void
.end method

.method public final i(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Luc/f;->d()Luc/c;

    move-result-object v0

    const-string v1, "trial_reminder_"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Luc/f;->a:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, v0, Luc/c;->a:Luc/a;

    sget-object p1, Luc/a;->m:Luc/a;

    if-ne p0, p1, :cond_1

    iget-object p0, v0, Luc/c;->b:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const p0, 0x7fffffff

    :goto_0
    const/4 p1, 0x1

    if-gt p0, p1, :cond_1

    return p1

    :cond_1
    return v1
.end method

.method public final j()I
    .locals 6

    const-string v0, "build_day"

    const/4 v1, 0x0

    iget-object v2, p0, Luc/f;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "build_count"

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Luc/f;->f()J

    move-result-wide v4

    sget-object p0, Luc/d;->a:Ljava/util/Set;

    invoke-static {}, Lsc/x0;->a()Ljava/time/ZoneId;

    move-result-object p0

    const-string v2, "zone"

    invoke-static {p0, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v5}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "toString(...)"

    invoke-static {p0, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    return v3
.end method
