.class public final Lh5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final p:Ljava/lang/String;

.field public static final q:J


# instance fields
.field public final l:Landroid/content/Context;

.field public final m:Ly4/q;

.field public final n:Lh5/d;

.field public o:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "ForceStopRunnable"

    invoke-static {v0}, Lx4/t;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lh5/b;->p:Ljava/lang/String;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xe42

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lh5/b;->q:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ly4/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lh5/b;->l:Landroid/content/Context;

    iput-object p2, p0, Lh5/b;->m:Ly4/q;

    iget-object p1, p2, Ly4/q;->r:Lh5/d;

    iput-object p1, p0, Lh5/b;->n:Lh5/d;

    const/4 p1, 0x0

    iput p1, p0, Lh5/b;->o:I

    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 5

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_0

    const/high16 v1, 0xa000000

    goto :goto_0

    :cond_0
    const/high16 v1, 0x8000000

    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "ACTION_FORCE_STOP_RESCHEDULE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, -0x1

    invoke-static {p0, v3, v2, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lh5/b;->q:J

    add-long/2addr v1, v3

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "last_force_stop_ms"

    iget-object v2, v0, Lh5/b;->n:Lh5/d;

    iget-object v3, v0, Lh5/b;->m:Ly4/q;

    iget-object v4, v3, Ly4/q;->n:Landroidx/work/impl/WorkDatabase;

    iget-object v5, v3, Ly4/q;->m:Lx4/a;

    iget-object v6, v3, Ly4/q;->r:Lh5/d;

    iget-object v7, v3, Ly4/q;->n:Landroidx/work/impl/WorkDatabase;

    sget-object v8, Lb5/f;->q:Ljava/lang/String;

    iget-object v0, v0, Lh5/b;->l:Landroid/content/Context;

    invoke-static {v0}, Lb5/b;->b(Landroid/content/Context;)Landroid/app/job/JobScheduler;

    move-result-object v8

    invoke-static {v0, v8}, Lb5/f;->e(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->q()Lg5/i;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v11, 0x0

    const-string v12, "SELECT DISTINCT work_spec_id FROM SystemIdInfo"

    invoke-static {v11, v12}, Lk4/n;->b(ILjava/lang/String;)Lk4/n;

    move-result-object v12

    iget-object v10, v10, Lg5/i;->m:Ljava/lang/Object;

    check-cast v10, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->b()V

    invoke-virtual {v10, v12}, Landroidx/work/impl/WorkDatabase;->m(Lq4/d;)Landroid/database/Cursor;

    move-result-object v10

    :try_start_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_12

    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    invoke-virtual {v12}, Lk4/n;->c()V

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    goto :goto_1

    :cond_1
    move v10, v11

    :goto_1
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12, v10}, Ljava/util/HashSet;-><init>(I)V

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v14, v11

    :goto_2
    if-ge v14, v10, :cond_3

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v14, v14, 0x1

    check-cast v15, Landroid/app/job/JobInfo;

    invoke-static {v15}, Lb5/f;->f(Landroid/app/job/JobInfo;)Lg5/j;

    move-result-object v11

    if-eqz v11, :cond_2

    iget-object v11, v11, Lg5/j;->a:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    invoke-virtual {v15}, Landroid/app/job/JobInfo;->getId()I

    move-result v11

    invoke-static {v8, v11}, Lb5/f;->c(Landroid/app/job/JobScheduler;I)V

    :goto_3
    const/4 v11, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :cond_4
    if-ge v9, v8, :cond_5

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v9, v9, 0x1

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v8

    sget-object v9, Lb5/f;->q:Ljava/lang/String;

    const-string v11, "Reconciling jobs"

    invoke-virtual {v8, v9, v11}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x1

    goto :goto_4

    :cond_5
    const/4 v8, 0x0

    :goto_4
    const-wide/16 v11, -0x1

    if-eqz v8, :cond_7

    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->c()V

    :try_start_1
    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->u()Lg5/q;

    move-result-object v9

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v14, :cond_6

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v10, v16

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v11, v12, v10}, Lg5/q;->j(JLjava/lang/String;)V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_6

    :cond_6
    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->p()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->k()V

    goto :goto_7

    :goto_6
    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->k()V

    throw v0

    :cond_7
    :goto_7
    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->u()Lg5/q;

    move-result-object v4

    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->t()Lg5/m;

    move-result-object v9

    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->c()V

    :try_start_2
    invoke-virtual {v4}, Lg5/q;->e()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_8

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_8
    if-ge v15, v14, :cond_8

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v11, v16

    check-cast v11, Lg5/o;

    iget-object v11, v11, Lg5/o;->a:Ljava/lang/String;

    const/4 v12, 0x1

    invoke-virtual {v4, v12, v11}, Lg5/q;->n(ILjava/lang/String;)V

    const/16 v12, -0x200

    invoke-virtual {v4, v12, v11}, Lg5/q;->o(ILjava/lang/String;)V

    move/from16 v16, v13

    const-wide/16 v12, -0x1

    invoke-virtual {v4, v12, v13, v11}, Lg5/q;->j(JLjava/lang/String;)V

    move-wide v11, v12

    move/from16 v13, v16

    goto :goto_8

    :catchall_2
    move-exception v0

    goto/16 :goto_11

    :cond_8
    move/from16 v16, v13

    iget-object v4, v9, Lg5/m;->m:Ljava/lang/Object;

    check-cast v4, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->b()V

    iget-object v9, v9, Lg5/m;->o:Ljava/lang/Object;

    check-cast v9, Lg5/h;

    invoke-virtual {v9}, Lk4/p;->a()Lr4/i;

    move-result-object v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->c()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-virtual {v10}, Lr4/i;->b()I

    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->p()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->k()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-virtual {v9, v10}, Lk4/p;->f(Lr4/i;)V

    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->p()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->k()V

    if-eqz v16, :cond_a

    if-eqz v8, :cond_9

    goto :goto_9

    :cond_9
    const/4 v10, 0x0

    goto :goto_a

    :cond_a
    :goto_9
    const/4 v10, 0x1

    :goto_a
    iget-object v4, v6, Lh5/d;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->l()Lg5/e;

    move-result-object v4

    const-string v8, "reschedule_needed"

    invoke-virtual {v4, v8}, Lg5/e;->l(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    const-wide/16 v11, 0x0

    sget-object v9, Lh5/b;->p:Ljava/lang/String;

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const-wide/16 v15, 0x1

    cmp-long v4, v13, v15

    if-nez v4, :cond_b

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v0

    const-string v1, "Rescheduling Workers."

    invoke-virtual {v0, v9, v1}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ly4/q;->O()V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lg5/d;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v8, v1}, Lg5/d;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, v6, Lh5/d;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->l()Lg5/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lg5/e;->n(Lg5/d;)V

    return-void

    :cond_b
    :try_start_7
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1f

    if-lt v4, v6, :cond_c

    const/high16 v6, 0x22000000

    goto :goto_b

    :cond_c
    const/high16 v6, 0x20000000

    :goto_b
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    new-instance v13, Landroid/content/ComponentName;

    const-class v14, Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;

    invoke-direct {v13, v0, v14}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v8, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v13, "ACTION_FORCE_STOP_RESCHEDULE"

    invoke-virtual {v8, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v13, -0x1

    invoke-static {v0, v13, v8, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const/16 v8, 0x1e

    if-lt v4, v8, :cond_10

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Landroid/app/PendingIntent;->cancel()V

    goto :goto_c

    :catch_0
    move-exception v0

    goto :goto_e

    :cond_d
    :goto_c
    const-string v4, "activity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-static {v0}, Lc5/j;->o(Landroid/app/ActivityManager;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_11

    iget-object v4, v2, Lh5/d;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->l()Lg5/e;

    move-result-object v4

    invoke-virtual {v4, v1}, Lg5/e;->l(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    :cond_e
    const/4 v4, 0x0

    :goto_d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_11

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lc5/j;->g(Ljava/lang/Object;)Landroid/app/ApplicationExitInfo;

    move-result-object v6

    invoke-static {v6}, Lc5/j;->c(Landroid/app/ApplicationExitInfo;)I

    move-result v8

    const/16 v13, 0xa

    if-ne v8, v13, :cond_f

    invoke-static {v6}, Lc5/j;->e(Landroid/app/ApplicationExitInfo;)J

    move-result-wide v13

    cmp-long v6, v13, v11

    if-ltz v6, :cond_f

    goto :goto_f

    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_10
    if-nez v6, :cond_11

    invoke-static {v0}, Lh5/b;->c(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_f

    :cond_11
    if-eqz v10, :cond_12

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v0

    const-string v1, "Found unfinished work, scheduling it."

    invoke-virtual {v0, v9, v1}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v3, Ly4/q;->p:Ljava/util/List;

    invoke-static {v5, v7, v0}, Ly4/j;->b(Lx4/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    :cond_12
    return-void

    :goto_e
    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v4

    iget v4, v4, Lx4/t;->a:I

    const/4 v6, 0x5

    if-gt v4, v6, :cond_13

    const-string v4, "Ignoring exception"

    invoke-static {v9, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_13
    :goto_f
    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v0

    const-string v4, "Application was force-stopped, rescheduling."

    invoke-virtual {v0, v9, v4}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ly4/q;->O()V

    iget-object v0, v5, Lx4/a;->d:Lx4/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lg5/d;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lg5/d;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, v2, Lh5/d;->a:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->l()Lg5/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lg5/e;->n(Lg5/d;)V

    return-void

    :catchall_3
    move-exception v0

    goto :goto_10

    :catchall_4
    move-exception v0

    :try_start_8
    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->k()V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :goto_10
    :try_start_9
    invoke-virtual {v9, v10}, Lk4/p;->f(Lr4/i;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_11
    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->k()V

    throw v0

    :goto_12
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    invoke-virtual {v12}, Lk4/n;->c()V

    throw v0
.end method

.method public final b()Z
    .locals 4

    iget-object v0, p0, Lh5/b;->m:Ly4/q;

    iget-object v0, v0, Ly4/q;->m:Lx4/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    sget-object v2, Lh5/b;->p:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object p0

    const-string v0, "The default process name was not specified."

    invoke-virtual {p0, v2, v0}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lh5/b;->l:Landroid/content/Context;

    invoke-static {p0, v0}, Lh5/g;->a(Landroid/content/Context;Lx4/a;)Z

    move-result p0

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Is default app process = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public final run()V
    .locals 12

    iget-object v0, p0, Lh5/b;->l:Landroid/content/Context;

    sget-object v1, Lh5/b;->p:Ljava/lang/String;

    iget-object v2, p0, Lh5/b;->m:Ly4/q;

    :try_start_0
    invoke-virtual {p0}, Lh5/b;->b()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ly4/q;->N()V

    return-void

    :catch_0
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {v0}, Lb6/g;->A(Landroid/content/Context;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v3

    const-string v4, "Performing cleanup operations."

    invoke-virtual {v3, v1, v4}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p0}, Lh5/b;->a()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteTableLockedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v2}, Ly4/q;->N()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception v3

    :try_start_4
    iget v4, p0, Lh5/b;->o:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lh5/b;->o:I

    const/4 v5, 0x3

    if-lt v4, v5, :cond_2

    const-class p0, Landroid/os/UserManager;

    invoke-virtual {v0, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "The file system on the device is in a bad state. WorkManager cannot access the app\'s internal data store."

    goto :goto_1

    :cond_1
    const-string p0, "WorkManager can\'t be accessed from direct boot, because credential encrypted storage isn\'t accessible.\nDon\'t access or initialise WorkManager from directAware components. See https://developer.android.com/training/articles/direct-boot"

    :goto_1
    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v0

    invoke-virtual {v0, v1, p0, v3}, Lx4/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, v2, Ly4/q;->m:Lx4/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v0

    :cond_2
    int-to-long v6, v4

    const-wide/16 v8, 0x12c

    mul-long/2addr v6, v8

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Retrying after "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v4, v4, Lx4/t;->a:I

    if-gt v4, v5, :cond_3

    invoke-static {v1, v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    iget v3, p0, Lh5/b;->o:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    int-to-long v3, v3

    mul-long/2addr v3, v8

    :try_start_5
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_2
    move-exception p0

    :try_start_6
    const-string v0, "Unexpected SQLite exception during migrations"

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lx4/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, v2, Ly4/q;->m:Lx4/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_2
    invoke-virtual {v2}, Ly4/q;->N()V

    throw p0
.end method
