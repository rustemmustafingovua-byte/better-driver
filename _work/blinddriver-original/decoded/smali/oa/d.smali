.class public final Loa/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final k:Ljava/util/logging/Logger;

.field public static final l:Loa/d;


# instance fields
.field public final a:Lm2/j;

.field public final b:Ljava/util/logging/Logger;

.field public c:I

.field public d:Z

.field public e:J

.field public f:I

.field public g:I

.field public final h:Ljava/util/ArrayList;

.field public final i:Ljava/util/ArrayList;

.field public final j:Ldd/j0;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Loa/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "getLogger(...)"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Loa/d;->k:Ljava/util/logging/Logger;

    new-instance v0, Loa/d;

    new-instance v1, Lm2/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lma/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " TaskRunner"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-static {v2, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lma/d;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Lma/d;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v1, v3}, Lm2/j;-><init>(Lma/d;)V

    invoke-direct {v0, v1}, Loa/d;-><init>(Lm2/j;)V

    sput-object v0, Loa/d;->l:Loa/d;

    return-void
.end method

.method public constructor <init>(Lm2/j;)V
    .locals 2

    const-string v0, "logger"

    sget-object v1, Loa/d;->k:Ljava/util/logging/Logger;

    invoke-static {v1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loa/d;->a:Lm2/j;

    iput-object v1, p0, Loa/d;->b:Ljava/util/logging/Logger;

    const/16 p1, 0x2710

    iput p1, p0, Loa/d;->c:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Loa/d;->h:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Loa/d;->i:Ljava/util/ArrayList;

    new-instance p1, Ldd/j0;

    const/4 v0, 0x7

    invoke-direct {p1, v0, p0}, Ldd/j0;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Loa/d;->j:Ldd/j0;

    return-void
.end method

.method public static final a(Loa/d;Loa/a;JZ)V
    .locals 4

    sget-object v0, Lma/e;->a:Ljava/util/TimeZone;

    iget-object v0, p1, Loa/a;->c:Loa/c;

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v1, v0, Loa/c;->d:Loa/a;

    if-ne v1, p1, :cond_2

    iget-boolean v1, v0, Loa/c;->f:Z

    const/4 v2, 0x0

    iput-boolean v2, v0, Loa/c;->f:Z

    const/4 v2, 0x0

    iput-object v2, v0, Loa/c;->d:Loa/a;

    iget-object v2, p0, Loa/d;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    iget-boolean v1, v0, Loa/c;->c:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Loa/c;->d(Loa/a;JZ)Z

    :cond_0
    iget-object p1, v0, Loa/c;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Loa/d;->i:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p4, :cond_1

    invoke-virtual {p0}, Loa/d;->e()V

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final b()Loa/a;
    .locals 18

    move-object/from16 v1, p0

    sget-object v0, Lma/e;->a:Ljava/util/TimeZone;

    :goto_0
    iget-object v0, v1, Loa/d;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v15, 0x0

    goto/16 :goto_4

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v6, 0x0

    const-wide v7, 0x7fffffffffffffffL

    move v10, v6

    const/4 v9, 0x0

    :goto_1
    const-wide/16 v11, 0x0

    const/4 v13, 0x1

    if-ge v10, v2, :cond_3

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v10, v10, 0x1

    check-cast v14, Loa/c;

    iget-object v14, v14, Loa/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Loa/a;

    move-wide/from16 v16, v4

    const/4 v15, 0x0

    iget-wide v3, v14, Loa/a;->d:J

    sub-long v3, v3, v16

    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    cmp-long v5, v3, v11

    if-lez v5, :cond_1

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    :goto_2
    move-wide/from16 v4, v16

    goto :goto_1

    :cond_1
    if-eqz v9, :cond_2

    move v2, v13

    goto :goto_3

    :cond_2
    move-object v9, v14

    goto :goto_2

    :cond_3
    move-wide/from16 v16, v4

    const/4 v15, 0x0

    move v2, v6

    :goto_3
    iget-object v3, v1, Loa/d;->h:Ljava/util/ArrayList;

    if-eqz v9, :cond_6

    sget-object v4, Lma/e;->a:Ljava/util/TimeZone;

    const-wide/16 v4, -0x1

    iput-wide v4, v9, Loa/a;->d:J

    iget-object v4, v9, Loa/a;->c:Loa/c;

    invoke-static {v4}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v5, v4, Loa/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iput-object v9, v4, Loa/c;->d:Loa/a;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v2, :cond_4

    iget-boolean v2, v1, Loa/d;->d:Z

    if-nez v2, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    invoke-virtual {v1}, Loa/d;->e()V

    :cond_5
    return-object v9

    :cond_6
    iget-boolean v2, v1, Loa/d;->d:Z

    if-eqz v2, :cond_8

    iget-wide v2, v1, Loa/d;->e:J

    sub-long v2, v2, v16

    cmp-long v0, v7, v2

    if-gez v0, :cond_7

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    :cond_7
    :goto_4
    return-object v15

    :cond_8
    iput-boolean v13, v1, Loa/d;->d:Z

    add-long v4, v16, v7

    iput-wide v4, v1, Loa/d;->e:J

    :try_start_0
    sget-object v2, Lma/e;->a:Ljava/util/TimeZone;

    cmp-long v2, v7, v11

    if-lez v2, :cond_a

    const-wide/32 v4, 0xf4240

    div-long v9, v7, v4

    mul-long/2addr v4, v9

    sub-long/2addr v7, v4

    cmp-long v4, v9, v11

    if-gtz v4, :cond_9

    if-lez v2, :cond_a

    :cond_9
    long-to-int v2, v7

    invoke-virtual {v1, v9, v10, v2}, Ljava/lang/Object;->wait(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_8

    :cond_a
    :goto_5
    iput-boolean v6, v1, Loa/d;->d:Z

    goto/16 :goto_0

    :catch_0
    :try_start_1
    sget-object v2, Lma/e;->a:Ljava/util/TimeZone;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v13

    :goto_6
    const/4 v4, -0x1

    if-ge v4, v2, :cond_b

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Loa/c;

    invoke-virtual {v4}, Loa/c;->a()Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v13

    :goto_7
    if-ge v4, v2, :cond_a

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Loa/c;

    invoke-virtual {v3}, Loa/c;->a()Z

    iget-object v3, v3, Loa/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_c
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    :goto_8
    iput-boolean v6, v1, Loa/d;->d:Z

    throw v0
.end method

.method public final c(Loa/c;)V
    .locals 2

    const-string v0, "taskQueue"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lma/e;->a:Ljava/util/TimeZone;

    iget-object v0, p1, Loa/c;->d:Loa/a;

    if-nez v0, :cond_1

    iget-object v0, p1, Loa/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Loa/d;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    sget-object v0, Lma/c;->a:[B

    const-string v0, "<this>"

    invoke-static {v1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-boolean p1, p0, Loa/d;->d:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    return-void

    :cond_2
    invoke-virtual {p0}, Loa/d;->e()V

    return-void
.end method

.method public final d()Loa/c;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Loa/d;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Loa/d;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    new-instance v1, Loa/c;

    const-string v2, "Q"

    invoke-static {v0, v2}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Loa/c;-><init>(Loa/d;Ljava/lang/String;)V

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()V
    .locals 2

    sget-object v0, Lma/e;->a:Ljava/util/TimeZone;

    iget v0, p0, Loa/d;->f:I

    iget v1, p0, Loa/d;->g:I

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Loa/d;->f:I

    const-string v0, "runnable"

    iget-object v1, p0, Loa/d;->j:Ldd/j0;

    invoke-static {v1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Loa/d;->a:Lm2/j;

    iget-object p0, p0, Lm2/j;->m:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
