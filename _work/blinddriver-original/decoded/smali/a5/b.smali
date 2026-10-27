.class public final La5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly4/b;


# static fields
.field public static final q:Ljava/lang/String;


# instance fields
.field public final l:Landroid/content/Context;

.field public final m:Ljava/util/HashMap;

.field public final n:Ljava/lang/Object;

.field public final o:Lx4/j;

.field public final p:Lk0/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CommandHandler"

    invoke-static {v0}, Lx4/t;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, La5/b;->q:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lx4/j;Lk0/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La5/b;->l:Landroid/content/Context;

    iput-object p2, p0, La5/b;->o:Lx4/j;

    iput-object p3, p0, La5/b;->p:Lk0/l;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, La5/b;->m:Ljava/util/HashMap;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La5/b;->n:Ljava/lang/Object;

    return-void
.end method

.method public static b(Landroid/content/Intent;)Lg5/j;
    .locals 4

    new-instance v0, Lg5/j;

    const-string v1, "KEY_WORKSPEC_ID"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "KEY_WORKSPEC_GENERATION"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    invoke-direct {v0, v1, p0}, Lg5/j;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static c(Landroid/content/Intent;Lg5/j;)V
    .locals 2

    const-string v0, "KEY_WORKSPEC_ID"

    iget-object v1, p1, Lg5/j;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "KEY_WORKSPEC_GENERATION"

    iget p1, p1, Lg5/j;->b:I

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final a(ILa5/j;Landroid/content/Intent;)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ACTION_CONSTRAINTS_CHANGED"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_a

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v4

    sget-object v5, La5/b;->q:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Handling constraints changed "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, La5/e;

    iget-object v4, v0, La5/b;->l:Landroid/content/Context;

    iget-object v0, v0, La5/b;->o:Lx4/j;

    invoke-direct {v3, v4, v0, v1, v2}, La5/e;-><init>(Landroid/content/Context;Lx4/j;ILa5/j;)V

    iget-object v0, v2, La5/j;->p:Ly4/q;

    iget-object v0, v0, Ly4/q;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->u()Lg5/q;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q;->f()Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, La5/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :cond_0
    if-ge v11, v1, :cond_2

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v11, v11, 0x1

    check-cast v12, Lg5/o;

    iget-object v12, v12, Lg5/o;->j:Lx4/d;

    iget-boolean v13, v12, Lx4/d;->e:Z

    or-int/2addr v5, v13

    iget-boolean v13, v12, Lx4/d;->c:Z

    or-int/2addr v8, v13

    iget-boolean v13, v12, Lx4/d;->f:Z

    or-int/2addr v9, v13

    iget v12, v12, Lx4/d;->a:I

    if-eq v12, v6, :cond_1

    move v12, v6

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    :goto_0
    or-int/2addr v10, v12

    if-eqz v5, :cond_0

    if-eqz v8, :cond_0

    if-eqz v9, :cond_0

    if-eqz v10, :cond_0

    :cond_2
    sget-object v1, Landroidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver;->a:Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    const-string v6, "androidx.work.impl.background.systemalarm.UpdateProxies"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v6, Landroid/content/ComponentName;

    const-class v11, Landroidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver;

    invoke-direct {v6, v4, v11}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v6, "KEY_BATTERY_NOT_LOW_PROXY_ENABLED"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "KEY_BATTERY_CHARGING_PROXY_ENABLED"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "KEY_STORAGE_NOT_LOW_PROXY_ENABLED"

    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "KEY_NETWORK_STATE_PROXY_ENABLED"

    invoke-virtual {v5, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v5, v3, La5/e;->a:Lx4/j;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Lg5/o;

    invoke-virtual {v10}, Lg5/o;->a()J

    move-result-wide v11

    cmp-long v11, v5, v11

    if-ltz v11, :cond_7

    invoke-virtual {v10}, Lg5/o;->b()Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, v3, La5/e;->c:Lc5/o;

    iget-object v11, v11, Lc5/o;->m:Ljava/util/ArrayList;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x0

    :cond_3
    :goto_2
    if-ge v14, v13, :cond_4

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v14, v14, 0x1

    const/16 v18, 0x0

    move-object v7, v15

    check-cast v7, Ld5/e;

    invoke-interface {v7, v10}, Ld5/e;->c(Lg5/o;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    const/16 v18, 0x0

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v7

    sget-object v11, Lc5/p;->a:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Work "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v10, Lg5/o;->a:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " constrained by "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v16, Lc5/l;->l:Lc5/l;

    const/16 v17, 0x1f

    move-object v14, v13

    const/4 v13, 0x0

    move-object v15, v14

    const/4 v14, 0x0

    move-object/from16 v19, v15

    const/4 v15, 0x0

    move-object/from16 p0, v0

    move-object/from16 v0, v19

    invoke-static/range {v12 .. v17}, Lu8/m;->k0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v11, v0}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move-object/from16 p0, v0

    :goto_3
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_6
    move-object/from16 p0, v0

    const/16 v18, 0x0

    :goto_4
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    move-object/from16 p0, v0

    const/16 v18, 0x0

    :cond_8
    :goto_5
    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_9
    const/16 v18, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    move/from16 v7, v18

    :goto_6
    if-ge v7, v0, :cond_17

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v7, v7, 0x1

    check-cast v5, Lg5/o;

    iget-object v6, v5, Lg5/o;->a:Ljava/lang/String;

    invoke-static {v5}, Lr5/u0;->m(Lg5/o;)Lg5/j;

    move-result-object v5

    new-instance v8, Landroid/content/Intent;

    const-class v9, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {v8, v4, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v9, "ACTION_DELAY_MET"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v8, v5}, La5/b;->c(Landroid/content/Intent;Lg5/j;)V

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v5

    sget-object v9, La5/e;->d:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Creating a delay_met command for workSpec with id ("

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v2, La5/j;->m:Li5/a;

    iget-object v5, v5, Li5/a;->d:Lf7/l;

    new-instance v6, La5/i;

    iget v9, v3, La5/e;->b:I

    invoke-direct {v6, v9, v2, v8}, La5/i;-><init>(ILa5/j;Landroid/content/Intent;)V

    invoke-virtual {v5, v6}, Lf7/l;->execute(Ljava/lang/Runnable;)V

    goto :goto_6

    :cond_a
    const/16 v18, 0x0

    const-string v5, "ACTION_RESCHEDULE"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v0

    sget-object v4, La5/b;->q:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Handling reschedule "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v2, La5/j;->p:Ly4/q;

    invoke-virtual {v0}, Ly4/q;->O()V

    return-void

    :cond_b
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v7, "KEY_WORKSPEC_ID"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    if-eqz v5, :cond_1a

    invoke-virtual {v5}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_c

    goto/16 :goto_f

    :cond_c
    aget-object v7, v7, v18

    invoke-virtual {v5, v7}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_d

    goto/16 :goto_f

    :cond_d
    const-string v5, "ACTION_SCHEDULE_WORK"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    const-string v4, "at "

    iget-object v0, v0, La5/b;->l:Landroid/content/Context;

    const-string v5, "Opportunistically setting an alarm for "

    const-string v6, "Setting up Alarms for "

    const-string v7, "Skipping scheduling "

    invoke-static {v3}, La5/b;->b(Landroid/content/Intent;)Lg5/j;

    move-result-object v3

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v8

    sget-object v9, La5/b;->q:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Handling schedule work for "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v2, La5/j;->p:Ly4/q;

    iget-object v8, v8, Ly4/q;->n:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v8}, Landroidx/work/impl/WorkDatabase;->c()V

    :try_start_0
    invoke-virtual {v8}, Landroidx/work/impl/WorkDatabase;->u()Lg5/q;

    move-result-object v10

    iget-object v11, v3, Lg5/j;->a:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lg5/q;->h(Ljava/lang/String;)Lg5/o;

    move-result-object v10

    if-nez v10, :cond_e

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " because it\'s no longer in the DB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Lx4/t;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v8}, Landroidx/work/impl/WorkDatabase;->k()V

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_e
    :try_start_1
    iget v11, v10, Lg5/o;->b:I

    invoke-static {v11}, Lr0/i;->c(I)Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "because it is finished."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Lx4/t;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v8}, Landroidx/work/impl/WorkDatabase;->k()V

    return-void

    :cond_f
    :try_start_2
    invoke-virtual {v10}, Lg5/o;->a()J

    move-result-wide v11

    invoke-virtual {v10}, Lg5/o;->b()Z

    move-result v7

    if-nez v7, :cond_10

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v8, v3, v11, v12}, La5/a;->b(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Lg5/j;J)V

    goto :goto_7

    :cond_10
    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v9, v4}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v8, v3, v11, v12}, La5/a;->b(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Lg5/j;J)V

    new-instance v3, Landroid/content/Intent;

    const-class v4, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "ACTION_CONSTRAINTS_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v2, La5/j;->m:Li5/a;

    iget-object v0, v0, Li5/a;->d:Lf7/l;

    new-instance v4, La5/i;

    invoke-direct {v4, v1, v2, v3}, La5/i;-><init>(ILa5/j;Landroid/content/Intent;)V

    invoke-virtual {v0, v4}, Lf7/l;->execute(Ljava/lang/Runnable;)V

    :goto_7
    invoke-virtual {v8}, Landroidx/work/impl/WorkDatabase;->p()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v8}, Landroidx/work/impl/WorkDatabase;->k()V

    return-void

    :goto_8
    invoke-virtual {v8}, Landroidx/work/impl/WorkDatabase;->k()V

    throw v0

    :cond_11
    const-string v5, "ACTION_DELAY_MET"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    const-string v4, "WorkSpec "

    const-string v5, "Handing delay met for "

    iget-object v7, v0, La5/b;->n:Ljava/lang/Object;

    monitor-enter v7

    :try_start_3
    invoke-static {v3}, La5/b;->b(Landroid/content/Intent;)Lg5/j;

    move-result-object v3

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v6

    sget-object v8, La5/b;->q:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v8, v5}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v0, La5/b;->m:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    new-instance v4, La5/g;

    iget-object v5, v0, La5/b;->l:Landroid/content/Context;

    iget-object v6, v0, La5/b;->p:Lk0/l;

    invoke-virtual {v6, v3}, Lk0/l;->m(Lg5/j;)Ly4/k;

    move-result-object v6

    invoke-direct {v4, v5, v1, v2, v6}, La5/g;-><init>(Landroid/content/Context;ILa5/j;Ly4/k;)V

    iget-object v0, v0, La5/b;->m:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, La5/g;->e()V

    goto :goto_9

    :catchall_1
    move-exception v0

    goto :goto_a

    :cond_12
    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is is already being handled for ACTION_DELAY_MET"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    monitor-exit v7

    return-void

    :goto_a
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_13
    const-string v5, "ACTION_STOP_WORK"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    iget-object v1, v0, La5/b;->p:Lk0/l;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "KEY_WORKSPEC_ID"

    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "KEY_WORKSPEC_GENERATION"

    invoke-virtual {v3, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-virtual {v3, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v7, Lg5/j;

    invoke-direct {v7, v4, v3}, Lg5/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v7}, Lk0/l;->l(Lg5/j;)Ly4/k;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_14
    invoke-virtual {v1, v4}, Lk0/l;->k(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    :cond_15
    :goto_b
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ly4/k;

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v5

    sget-object v7, La5/b;->q:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Handing stopWork work for "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v2, La5/j;->u:Lg5/c;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "workSpecId"

    invoke-static {v3, v7}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, -0x200

    invoke-virtual {v5, v3, v7}, Lg5/c;->k(Ly4/k;I)V

    iget-object v3, v3, Ly4/k;->a:Lg5/j;

    iget-object v5, v0, La5/b;->l:Landroid/content/Context;

    iget-object v7, v2, La5/j;->p:Ly4/q;

    iget-object v7, v7, Ly4/q;->n:Landroidx/work/impl/WorkDatabase;

    sget-object v8, La5/a;->a:Ljava/lang/String;

    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->q()Lg5/i;

    move-result-object v7

    invoke-virtual {v7, v3}, Lg5/i;->s(Lg5/j;)Lg5/g;

    move-result-object v8

    if-eqz v8, :cond_16

    iget v8, v8, Lg5/g;->c:I

    invoke-static {v5, v3, v8}, La5/a;->a(Landroid/content/Context;Lg5/j;I)V

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v5

    sget-object v8, La5/a;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Removing SystemIdInfo for workSpecId ("

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v3, Lg5/j;->a:Ljava/lang/String;

    iget v8, v3, Lg5/j;->b:I

    iget-object v9, v7, Lg5/i;->m:Ljava/lang/Object;

    check-cast v9, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->b()V

    iget-object v7, v7, Lg5/i;->o:Ljava/lang/Object;

    check-cast v7, Lg5/h;

    invoke-virtual {v7}, Lk4/p;->a()Lr4/i;

    move-result-object v10

    invoke-interface {v10, v6, v5}, Lq4/c;->h(ILjava/lang/String;)V

    const/4 v5, 0x2

    int-to-long v11, v8

    invoke-interface {v10, v5, v11, v12}, Lq4/c;->p(IJ)V

    :try_start_4
    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->c()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v10}, Lr4/i;->b()I

    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->p()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->k()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-virtual {v7, v10}, Lk4/p;->f(Lr4/i;)V

    :cond_16
    move/from16 v5, v18

    goto :goto_e

    :catchall_2
    move-exception v0

    goto :goto_d

    :catchall_3
    move-exception v0

    :try_start_7
    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->k()V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_d
    invoke-virtual {v7, v10}, Lk4/p;->f(Lr4/i;)V

    throw v0

    :goto_e
    invoke-virtual {v2, v3, v5}, La5/j;->e(Lg5/j;Z)V

    move/from16 v18, v5

    goto/16 :goto_c

    :cond_17
    return-void

    :cond_18
    const-string v2, "ACTION_EXECUTION_COMPLETED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-static {v3}, La5/b;->b(Landroid/content/Intent;)Lg5/j;

    move-result-object v2

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "KEY_NEEDS_RESCHEDULE"

    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v5

    sget-object v6, La5/b;->q:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Handling onExecutionCompleted "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v4}, La5/b;->e(Lg5/j;Z)V

    return-void

    :cond_19
    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v0

    sget-object v1, La5/b;->q:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Ignoring intent "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lx4/t;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1a
    :goto_f
    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v0

    sget-object v1, La5/b;->q:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid request for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , requires KEY_WORKSPEC_ID ."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lx4/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final e(Lg5/j;Z)V
    .locals 2

    iget-object v0, p0, La5/b;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, La5/b;->m:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La5/g;

    iget-object p0, p0, La5/b;->p:Lk0/l;

    invoke-virtual {p0, p1}, Lk0/l;->l(Lg5/j;)Ly4/k;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, La5/g;->f(Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
