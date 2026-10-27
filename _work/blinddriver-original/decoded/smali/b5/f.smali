.class public final Lb5/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly4/g;


# static fields
.field public static final q:Ljava/lang/String;


# instance fields
.field public final l:Landroid/content/Context;

.field public final m:Landroid/app/job/JobScheduler;

.field public final n:Lb5/e;

.field public final o:Landroidx/work/impl/WorkDatabase;

.field public final p:Lx4/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemJobScheduler"

    invoke-static {v0}, Lx4/t;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb5/f;->q:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Lx4/a;)V
    .locals 4

    invoke-static {p1}, Lb5/b;->b(Landroid/content/Context;)Landroid/app/job/JobScheduler;

    move-result-object v0

    new-instance v1, Lb5/e;

    iget-object v2, p3, Lx4/a;->d:Lx4/j;

    iget-boolean v3, p3, Lx4/a;->l:Z

    invoke-direct {v1, p1, v2, v3}, Lb5/e;-><init>(Landroid/content/Context;Lx4/j;Z)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb5/f;->l:Landroid/content/Context;

    iput-object v0, p0, Lb5/f;->m:Landroid/app/job/JobScheduler;

    iput-object v1, p0, Lb5/f;->n:Lb5/e;

    iput-object p2, p0, Lb5/f;->o:Landroidx/work/impl/WorkDatabase;

    iput-object p3, p0, Lb5/f;->p:Lx4/a;

    return-void
.end method

.method public static c(Landroid/app/job/JobScheduler;I)V
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Exception while trying to cancel job (%d)"

    invoke-static {v1, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lb5/f;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p0}, Lx4/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;
    .locals 3

    invoke-static {p1}, Lb5/b;->a(Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Landroidx/work/impl/background/systemjob/SystemJobService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobInfo;

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static f(Landroid/app/job/JobInfo;)Lg5/j;
    .locals 3

    const-string v0, "EXTRA_WORK_SPEC_ID"

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "EXTRA_WORK_SPEC_GENERATION"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Lg5/j;

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Lg5/j;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lb5/f;->l:Landroid/content/Context;

    iget-object v1, p0, Lb5/f;->m:Landroid/app/job/JobScheduler;

    invoke-static {v0, v1}, Lb5/f;->e(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v2

    :cond_1
    :goto_0
    if-ge v5, v4, :cond_2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Landroid/app/job/JobInfo;

    invoke-static {v6}, Lb5/f;->f(Landroid/app/job/JobInfo;)Lg5/j;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, v7, Lg5/j;->a:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v0, v3

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_2
    if-ge v2, v3, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v1, v4}, Lb5/f;->c(Landroid/app/job/JobScheduler;I)V

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lb5/f;->o:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->q()Lg5/i;

    move-result-object p0

    iget-object v0, p0, Lg5/i;->m:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->b()V

    iget-object p0, p0, Lg5/i;->p:Ljava/lang/Object;

    check-cast p0, Lg5/h;

    invoke-virtual {p0}, Lk4/p;->a()Lr4/i;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1}, Lq4/c;->h(ILjava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Lr4/i;->b()I

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->p()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->k()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, v1}, Lk4/p;->f(Lr4/i;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->k()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    invoke-virtual {p0, v1}, Lk4/p;->f(Lr4/i;)V

    throw p1

    :cond_4
    return-void
.end method

.method public final varargs d([Lg5/o;)V
    .locals 11

    iget-object v0, p0, Lb5/f;->p:Lx4/a;

    new-instance v1, Lh5/d;

    const/4 v2, 0x0

    iget-object v3, p0, Lb5/f;->o:Landroidx/work/impl/WorkDatabase;

    invoke-direct {v1, v3, v2}, Lh5/d;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    array-length v2, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, p1, v4

    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->c()V

    :try_start_0
    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->u()Lg5/q;

    move-result-object v6

    iget-object v7, v5, Lg5/o;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lg5/q;->h(Ljava/lang/String;)Lg5/o;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, "Skipping scheduling "

    sget-object v9, Lb5/f;->q:Ljava/lang/String;

    if-nez v6, :cond_0

    :try_start_1
    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " because it\'s no longer in the DB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Lx4/t;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->p()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->k()V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_0
    :try_start_2
    iget v6, v6, Lg5/o;->b:I

    const/4 v10, 0x1

    if-eq v6, v10, :cond_1

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " because it is no longer enqueued"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Lx4/t;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->p()V

    goto :goto_1

    :cond_1
    invoke-static {v5}, Lr5/u0;->m(Lg5/o;)Lg5/j;

    move-result-object v6

    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->q()Lg5/i;

    move-result-object v7

    invoke-virtual {v7, v6}, Lg5/i;->s(Lg5/j;)Lg5/g;

    move-result-object v7

    if-eqz v7, :cond_2

    iget v8, v7, Lg5/g;->c:I

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v8, v0, Lx4/a;->i:I

    iget-object v9, v1, Lh5/d;->a:Landroidx/work/impl/WorkDatabase;

    new-instance v10, Lh5/c;

    invoke-direct {v10, v1, v8}, Lh5/c;-><init>(Lh5/d;I)V

    invoke-virtual {v9, v10}, Landroidx/work/impl/WorkDatabase;->n(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "workDatabase.runInTransa\u2026d\n            }\n        )"

    invoke-static {v8, v9}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    :goto_2
    if-nez v7, :cond_3

    new-instance v7, Lg5/g;

    iget-object v9, v6, Lg5/j;->a:Ljava/lang/String;

    iget v6, v6, Lg5/j;->b:I

    invoke-direct {v7, v9, v6, v8}, Lg5/g;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->q()Lg5/i;

    move-result-object v6

    invoke-virtual {v6, v7}, Lg5/i;->x(Lg5/g;)V

    :cond_3
    invoke-virtual {p0, v5, v8}, Lb5/f;->g(Lg5/o;I)V

    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->p()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :goto_4
    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->k()V

    throw p0

    :cond_4
    return-void
.end method

.method public final g(Lg5/o;I)V
    .locals 12

    iget-object v0, p0, Lb5/f;->n:Lb5/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lg5/o;->j:Lx4/d;

    new-instance v2, Landroid/os/PersistableBundle;

    invoke-direct {v2}, Landroid/os/PersistableBundle;-><init>()V

    iget-object v3, p1, Lg5/o;->a:Ljava/lang/String;

    const-string v4, "EXTRA_WORK_SPEC_ID"

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "EXTRA_WORK_SPEC_GENERATION"

    iget v5, p1, Lg5/o;->t:I

    invoke-virtual {v2, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "EXTRA_IS_PERIODIC"

    invoke-virtual {p1}, Lg5/o;->c()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v4, Landroid/app/job/JobInfo$Builder;

    iget-object v5, v0, Lb5/e;->a:Landroid/content/ComponentName;

    invoke-direct {v4, p2, v5}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    iget-boolean v5, v1, Lx4/d;->c:Z

    invoke-virtual {v4, v5}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v4

    iget-boolean v5, v1, Lx4/d;->d:Z

    invoke-virtual {v4, v5}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    invoke-virtual {v1}, Lx4/d;->a()Landroid/net/NetworkRequest;

    move-result-object v4

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v4, :cond_0

    const-string v6, "builder"

    invoke-static {v2, v6}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    goto :goto_1

    :cond_0
    iget v4, v1, Lx4/d;->a:I

    const/16 v10, 0x1e

    if-lt v6, v10, :cond_1

    const/4 v6, 0x6

    if-ne v4, v6, :cond_1

    new-instance v4, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v4}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v6, 0x19

    invoke-virtual {v4, v6}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    goto :goto_1

    :cond_1
    invoke-static {v4}, Landroidx/fragment/app/t1;->d(I)I

    move-result v6

    if-eqz v6, :cond_4

    if-eq v6, v9, :cond_2

    if-eq v6, v7, :cond_3

    const/4 v10, 0x3

    if-eq v6, v10, :cond_5

    const/4 v10, 0x4

    if-eq v6, v10, :cond_5

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v6

    sget-object v10, Lb5/e;->d:Ljava/lang/String;

    invoke-static {v4}, Lr0/i;->q(I)Ljava/lang/String;

    move-result-object v4

    const-string v11, "API version too low. Cannot convert network type value "

    invoke-virtual {v11, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v10, v4}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move v10, v9

    goto :goto_0

    :cond_3
    move v10, v7

    goto :goto_0

    :cond_4
    move v10, v8

    :cond_5
    :goto_0
    invoke-virtual {v2, v10}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    :goto_1
    if-nez v5, :cond_7

    iget v4, p1, Lg5/o;->l:I

    if-ne v4, v7, :cond_6

    move v4, v8

    goto :goto_2

    :cond_6
    move v4, v9

    :goto_2
    iget-wide v5, p1, Lg5/o;->m:J

    invoke-virtual {v2, v5, v6, v4}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    :cond_7
    invoke-virtual {p1}, Lg5/o;->a()J

    move-result-wide v4

    iget-object v6, v0, Lb5/e;->b:Lx4/j;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    cmp-long v6, v4, v6

    if-lez v6, :cond_8

    invoke-virtual {v2, v4, v5}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    goto :goto_3

    :cond_8
    iget-boolean v4, p1, Lg5/o;->q:Z

    if-nez v4, :cond_9

    iget-boolean v0, v0, Lb5/e;->c:Z

    if-eqz v0, :cond_9

    invoke-virtual {v2, v9}, Landroid/app/job/JobInfo$Builder;->setImportantWhileForeground(Z)Landroid/app/job/JobInfo$Builder;

    :cond_9
    :goto_3
    invoke-virtual {v1}, Lx4/d;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v1, Lx4/d;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lx4/c;

    iget-boolean v5, v4, Lx4/c;->b:Z

    new-instance v7, Landroid/app/job/JobInfo$TriggerContentUri;

    iget-object v4, v4, Lx4/c;->a:Landroid/net/Uri;

    invoke-direct {v7, v4, v5}, Landroid/app/job/JobInfo$TriggerContentUri;-><init>(Landroid/net/Uri;I)V

    invoke-virtual {v2, v7}, Landroid/app/job/JobInfo$Builder;->addTriggerContentUri(Landroid/app/job/JobInfo$TriggerContentUri;)Landroid/app/job/JobInfo$Builder;

    goto :goto_4

    :cond_a
    iget-wide v4, v1, Lx4/d;->g:J

    invoke-virtual {v2, v4, v5}, Landroid/app/job/JobInfo$Builder;->setTriggerContentUpdateDelay(J)Landroid/app/job/JobInfo$Builder;

    iget-wide v4, v1, Lx4/d;->h:J

    invoke-virtual {v2, v4, v5}, Landroid/app/job/JobInfo$Builder;->setTriggerContentMaxDelay(J)Landroid/app/job/JobInfo$Builder;

    :cond_b
    invoke-virtual {v2, v8}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-boolean v4, v1, Lx4/d;->e:Z

    invoke-virtual {v2, v4}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    iget-boolean v1, v1, Lx4/d;->f:Z

    invoke-virtual {v2, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;

    iget v1, p1, Lg5/o;->k:I

    if-lez v1, :cond_c

    move v1, v9

    goto :goto_5

    :cond_c
    move v1, v8

    :goto_5
    if-lez v6, :cond_d

    move v4, v9

    goto :goto_6

    :cond_d
    move v4, v8

    :goto_6
    const/16 v5, 0x1f

    if-lt v0, v5, :cond_e

    iget-boolean v6, p1, Lg5/o;->q:Z

    if-eqz v6, :cond_e

    if-nez v1, :cond_e

    if-nez v4, :cond_e

    invoke-static {v2}, Lb5/c;->r(Landroid/app/job/JobInfo$Builder;)V

    :cond_e
    const/16 v1, 0x23

    if-lt v0, v1, :cond_f

    iget-object v0, p1, Lg5/o;->x:Ljava/lang/String;

    if-eqz v0, :cond_f

    invoke-static {v2, v0}, Lb5/d;->c(Landroid/app/job/JobInfo$Builder;Ljava/lang/String;)V

    :cond_f
    invoke-virtual {v2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Scheduling work ID "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Job ID "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lb5/f;->q:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lb5/f;->m:Landroid/app/job/JobScheduler;

    invoke-virtual {v1, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to schedule work ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lx4/t;->g(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p1, Lg5/o;->q:Z

    if-eqz v0, :cond_10

    iget v0, p1, Lg5/o;->r:I

    if-ne v0, v9, :cond_10

    iput-boolean v8, p1, Lg5/o;->q:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scheduling a non-expedited job (work ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lb5/f;->g(Lg5/o;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_7

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_8

    :cond_10
    return-void

    :goto_7
    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to schedule "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v4, p1, p0}, Lx4/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :goto_8
    sget-object p2, Lb5/b;->a:Ljava/lang/String;

    const-string p2, "context"

    iget-object v0, p0, Lb5/f;->l:Landroid/content/Context;

    invoke-static {v0, p2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "workDatabase"

    iget-object v1, p0, Lb5/f;->o:Landroidx/work/impl/WorkDatabase;

    invoke-static {v1, p2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "configuration"

    iget-object p0, p0, Lb5/f;->p:Lx4/a;

    invoke-static {p0, p2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v5, :cond_11

    const/16 v2, 0x96

    goto :goto_9

    :cond_11
    const/16 v2, 0x64

    :goto_9
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->u()Lg5/q;

    move-result-object v1

    invoke-virtual {v1}, Lg5/q;->f()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v3, 0x22

    const-string v5, "<faulty JobScheduler failed to getPendingJobs>"

    if-lt p2, v3, :cond_16

    invoke-static {v0}, Lb5/b;->b(Landroid/content/Context;)Landroid/app/job/JobScheduler;

    move-result-object p2

    invoke-static {p2}, Lb5/b;->a(Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_18

    invoke-static {v0, p2}, Lb5/f;->e(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_12

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr v5, p2

    goto :goto_a

    :cond_12
    move v5, v8

    :goto_a
    const/4 p2, 0x0

    if-nez v5, :cond_13

    move-object v5, p2

    goto :goto_b

    :cond_13
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " of which are not owned by WorkManager"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_b
    const-string v6, "jobscheduler"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "null cannot be cast to non-null type android.app.job.JobScheduler"

    invoke-static {v6, v7}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/app/job/JobScheduler;

    invoke-static {v0, v6}, Lb5/f;->e(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    :cond_14
    if-nez v8, :cond_15

    goto :goto_c

    :cond_15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " from WorkManager in the default namespace"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " jobs in \"androidx.work.systemjobscheduler\" namespace"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, v5, p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lu8/l;->s0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v9, 0x0

    const/16 v10, 0x3e

    const-string v6, ",\n"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lu8/m;->k0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_d

    :cond_16
    invoke-static {v0}, Lb5/b;->b(Landroid/content/Context;)Landroid/app/job/JobScheduler;

    move-result-object p2

    invoke-static {v0, p2}, Lb5/f;->e(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    move-result-object p2

    if-nez p2, :cond_17

    goto :goto_d

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " jobs from WorkManager"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_18
    :goto_d
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "JobScheduler "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " job limit exceeded.\nIn JobScheduler there are "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".\nThere are "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " jobs tracked by WorkManager\'s database;\nthe Configuration limit is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lx4/a;->k:I

    const/16 v0, 0x2e

    invoke-static {p2, p0, v0}, Lr0/i;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object p2

    invoke-virtual {p2, v4, p0}, Lx4/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
