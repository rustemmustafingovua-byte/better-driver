.class public final Lz4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly4/g;
.implements Lc5/i;
.implements Ly4/b;


# static fields
.field public static final z:Ljava/lang/String;


# instance fields
.field public final l:Landroid/content/Context;

.field public final m:Ljava/util/HashMap;

.field public final n:Lz4/a;

.field public o:Z

.field public final p:Ljava/lang/Object;

.field public final q:Lk0/l;

.field public final r:Ly4/e;

.field public final s:Lg5/c;

.field public final t:Lx4/a;

.field public final u:Ljava/util/HashMap;

.field public v:Ljava/lang/Boolean;

.field public final w:Lc5/o;

.field public final x:Li5/a;

.field public final y:Lz4/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "GreedyScheduler"

    invoke-static {v0}, Lx4/t;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lz4/c;->z:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lx4/a;Le5/k;Ly4/e;Lg5/c;Li5/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lz4/c;->m:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lz4/c;->p:Ljava/lang/Object;

    new-instance v0, Lia/z;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lia/z;-><init>(I)V

    new-instance v1, Lk0/l;

    invoke-direct {v1, v0}, Lk0/l;-><init>(Lia/z;)V

    iput-object v1, p0, Lz4/c;->q:Lk0/l;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lz4/c;->u:Ljava/util/HashMap;

    iput-object p1, p0, Lz4/c;->l:Landroid/content/Context;

    iget-object p1, p2, Lx4/a;->g:Lq3/k;

    new-instance v0, Lz4/a;

    iget-object v1, p2, Lx4/a;->d:Lx4/j;

    invoke-direct {v0, p0, p1, v1}, Lz4/a;-><init>(Lz4/c;Lq3/k;Lx4/j;)V

    iput-object v0, p0, Lz4/c;->n:Lz4/a;

    new-instance v0, Lz4/d;

    invoke-direct {v0, p1, p5}, Lz4/d;-><init>(Lq3/k;Lg5/c;)V

    iput-object v0, p0, Lz4/c;->y:Lz4/d;

    iput-object p6, p0, Lz4/c;->x:Li5/a;

    new-instance p1, Lc5/o;

    invoke-direct {p1, p3}, Lc5/o;-><init>(Le5/k;)V

    iput-object p1, p0, Lz4/c;->w:Lc5/o;

    iput-object p2, p0, Lz4/c;->t:Lx4/a;

    iput-object p4, p0, Lz4/c;->r:Ly4/e;

    iput-object p5, p0, Lz4/c;->s:Lg5/c;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lz4/c;->v:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lz4/c;->l:Landroid/content/Context;

    iget-object v1, p0, Lz4/c;->t:Lx4/a;

    invoke-static {v0, v1}, Lh5/g;->a(Landroid/content/Context;Lx4/a;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lz4/c;->v:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lz4/c;->v:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v1, Lz4/c;->z:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object p0

    const-string p1, "Ignoring schedule request in non-main process"

    invoke-virtual {p0, v1, p1}, Lx4/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lz4/c;->o:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lz4/c;->r:Ly4/e;

    invoke-virtual {v0, p0}, Ly4/e;->a(Ly4/b;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz4/c;->o:Z

    :cond_2
    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cancelling work ID "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lz4/c;->n:Lz4/a;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lz4/a;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    iget-object v0, v0, Lz4/a;->b:Lq3/k;

    iget-object v0, v0, Lq3/k;->m:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_3
    iget-object v0, p0, Lz4/c;->q:Lk0/l;

    invoke-virtual {v0, p1}, Lk0/l;->k(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly4/k;

    iget-object v1, p0, Lz4/c;->y:Lz4/d;

    invoke-virtual {v1, v0}, Lz4/d;->a(Ly4/k;)V

    iget-object v1, p0, Lz4/c;->s:Lg5/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, -0x200

    invoke-virtual {v1, v0, v2}, Lg5/c;->k(Ly4/k;I)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final c(Lg5/o;Lc5/c;)V
    .locals 6

    invoke-static {p1}, Lr5/u0;->m(Lg5/o;)Lg5/j;

    move-result-object p1

    instance-of v0, p2, Lc5/a;

    iget-object v1, p0, Lz4/c;->s:Lg5/c;

    iget-object v2, p0, Lz4/c;->y:Lz4/d;

    sget-object v3, Lz4/c;->z:Ljava/lang/String;

    iget-object p0, p0, Lz4/c;->q:Lk0/l;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lk0/l;->f(Lg5/j;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Constraints met: Scheduling work ID "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lk0/l;->m(Lg5/j;)Ly4/k;

    move-result-object p0

    invoke-virtual {v2, p0}, Lz4/d;->b(Ly4/k;)V

    iget-object p1, v1, Lg5/c;->n:Ljava/lang/Object;

    check-cast p1, Li5/a;

    new-instance p2, Landroidx/fragment/app/e;

    const/16 v0, 0x16

    const/4 v2, 0x0

    invoke-direct {p2, v1, p0, v2, v0}, Landroidx/fragment/app/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Li5/a;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Constraints not met: Cancelling work ID "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lk0/l;->l(Lg5/j;)Ly4/k;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {v2, p0}, Lz4/d;->a(Ly4/k;)V

    check-cast p2, Lc5/b;

    iget p1, p2, Lc5/b;->a:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, p0, p1}, Lg5/c;->k(Ly4/k;I)V

    :cond_1
    return-void
.end method

.method public final varargs d([Lg5/o;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lz4/c;->v:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    iget-object v2, v0, Lz4/c;->l:Landroid/content/Context;

    iget-object v3, v0, Lz4/c;->t:Lx4/a;

    invoke-static {v2, v3}, Lh5/g;->a(Landroid/content/Context;Lx4/a;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lz4/c;->v:Ljava/lang/Boolean;

    :cond_0
    iget-object v2, v0, Lz4/c;->v:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v0

    sget-object v1, Lz4/c;->z:Ljava/lang/String;

    const-string v2, "Ignoring schedule request in a secondary process"

    invoke-virtual {v0, v1, v2}, Lx4/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-boolean v2, v0, Lz4/c;->o:Z

    const/4 v3, 0x1

    if-nez v2, :cond_2

    iget-object v2, v0, Lz4/c;->r:Ly4/e;

    invoke-virtual {v2, v0}, Ly4/e;->a(Ly4/b;)V

    iput-boolean v3, v0, Lz4/c;->o:Z

    :cond_2
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    array-length v5, v1

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_b

    aget-object v8, v1, v7

    invoke-static {v8}, Lr5/u0;->m(Lg5/o;)Lg5/j;

    move-result-object v9

    iget-object v10, v0, Lz4/c;->q:Lk0/l;

    invoke-virtual {v10, v9}, Lk0/l;->f(Lg5/j;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto/16 :goto_2

    :cond_3
    iget-object v9, v0, Lz4/c;->p:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    invoke-static {v8}, Lr5/u0;->m(Lg5/o;)Lg5/j;

    move-result-object v10

    iget-object v11, v0, Lz4/c;->u:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lz4/b;

    if-nez v11, :cond_4

    new-instance v11, Lz4/b;

    iget v12, v8, Lg5/o;->k:I

    iget-object v13, v0, Lz4/c;->t:Lx4/a;

    iget-object v13, v13, Lx4/a;->d:Lx4/j;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-direct {v11, v12, v13, v14}, Lz4/b;-><init>(IJ)V

    iget-object v12, v0, Lz4/c;->u:Ljava/util/HashMap;

    invoke-virtual {v12, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_4
    :goto_1
    iget-wide v12, v11, Lz4/b;->b:J

    iget v10, v8, Lg5/o;->k:I

    iget v11, v11, Lz4/b;->a:I

    sub-int/2addr v10, v11

    add-int/lit8 v10, v10, -0x5

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-long v10, v10

    const-wide/16 v14, 0x7530

    mul-long/2addr v10, v14

    add-long/2addr v10, v12

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v8}, Lg5/o;->a()J

    move-result-wide v12

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iget-object v11, v0, Lz4/c;->t:Lx4/a;

    iget-object v11, v11, Lx4/a;->d:Lx4/j;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget v13, v8, Lg5/o;->b:I

    if-ne v13, v3, :cond_a

    cmp-long v11, v11, v9

    if-gez v11, :cond_6

    iget-object v11, v0, Lz4/c;->n:Lz4/a;

    if-eqz v11, :cond_a

    iget-object v12, v11, Lz4/a;->b:Lq3/k;

    iget-object v13, v11, Lz4/a;->d:Ljava/util/HashMap;

    iget-object v14, v8, Lg5/o;->a:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Runnable;

    if-eqz v14, :cond_5

    iget-object v15, v12, Lq3/k;->m:Ljava/lang/Object;

    check-cast v15, Landroid/os/Handler;

    invoke-virtual {v15, v14}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_5
    new-instance v14, Lf5/a;

    const/16 v15, 0x9

    invoke-direct {v14, v15, v11, v8}, Lf5/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v8, v8, Lg5/o;->a:Ljava/lang/String;

    invoke-virtual {v13, v8, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v11, Lz4/a;->c:Lx4/j;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v9, v15

    iget-object v8, v12, Lq3/k;->m:Ljava/lang/Object;

    check-cast v8, Landroid/os/Handler;

    invoke-virtual {v8, v14, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v8}, Lg5/o;->b()Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, v8, Lg5/o;->j:Lx4/d;

    iget-boolean v10, v9, Lx4/d;->d:Z

    if-eqz v10, :cond_7

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v9

    sget-object v10, Lz4/c;->z:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Ignoring "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ". Requires device idle."

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v10, v8}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    invoke-virtual {v9}, Lx4/d;->b()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v9

    sget-object v10, Lz4/c;->z:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Ignoring "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ". Requires ContentUri triggers."

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v10, v8}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v8, v8, Lg5/o;->a:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    iget-object v9, v0, Lz4/c;->q:Lk0/l;

    invoke-static {v8}, Lr5/u0;->m(Lg5/o;)Lg5/j;

    move-result-object v10

    invoke-virtual {v9, v10}, Lk0/l;->f(Lg5/j;)Z

    move-result v9

    if-nez v9, :cond_a

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v9

    sget-object v10, Lz4/c;->z:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Starting work for "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v8, Lg5/o;->a:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v0, Lz4/c;->q:Lk0/l;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lr5/u0;->m(Lg5/o;)Lg5/j;

    move-result-object v8

    invoke-virtual {v9, v8}, Lk0/l;->m(Lg5/j;)Ly4/k;

    move-result-object v8

    iget-object v9, v0, Lz4/c;->y:Lz4/d;

    invoke-virtual {v9, v8}, Lz4/d;->b(Ly4/k;)V

    iget-object v9, v0, Lz4/c;->s:Lg5/c;

    iget-object v10, v9, Lg5/c;->n:Ljava/lang/Object;

    check-cast v10, Li5/a;

    new-instance v11, Landroidx/fragment/app/e;

    const/16 v12, 0x16

    const/4 v13, 0x0

    invoke-direct {v11, v9, v8, v13, v12}, Landroidx/fragment/app/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v10, v11}, Li5/a;->a(Ljava/lang/Runnable;)V

    :cond_a
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :goto_3
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_b
    iget-object v1, v0, Lz4/c;->p:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, ","

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v4

    sget-object v5, Lz4/c;->z:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Starting tracking for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg5/o;

    invoke-static {v3}, Lr5/u0;->m(Lg5/o;)Lg5/j;

    move-result-object v4

    iget-object v5, v0, Lz4/c;->m:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    iget-object v5, v0, Lz4/c;->w:Lc5/o;

    iget-object v6, v0, Lz4/c;->x:Li5/a;

    iget-object v6, v6, Li5/a;->b:Lu9/p;

    invoke-static {v5, v3, v6, v0}, Lc5/p;->a(Lc5/o;Lg5/o;Lu9/p;Lc5/i;)Lu9/j1;

    move-result-object v3

    iget-object v5, v0, Lz4/c;->m:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_5

    :cond_d
    monitor-exit v1

    return-void

    :goto_5
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public final e(Lg5/j;Z)V
    .locals 5

    iget-object v0, p0, Lz4/c;->q:Lk0/l;

    invoke-virtual {v0, p1}, Lk0/l;->l(Lg5/j;)Ly4/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lz4/c;->y:Lz4/d;

    invoke-virtual {v1, v0}, Lz4/d;->a(Ly4/k;)V

    :cond_0
    iget-object v0, p0, Lz4/c;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lz4/c;->m:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu9/v0;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v0

    sget-object v2, Lz4/c;->z:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Stopping tracking for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lu9/v0;->c(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    if-nez p2, :cond_2

    iget-object p2, p0, Lz4/c;->p:Ljava/lang/Object;

    monitor-enter p2

    :try_start_1
    iget-object p0, p0, Lz4/c;->u:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    return-void

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
