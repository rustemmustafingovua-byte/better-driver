.class public final synthetic Lb0/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic l:Lp2/m0;

.field public final synthetic m:Lb3/m;

.field public final synthetic n:Ljava/util/List;

.field public final synthetic o:Lp2/g;

.field public final synthetic p:Lb3/c;

.field public final synthetic q:Lt2/d;


# direct methods
.method public synthetic constructor <init>(Lp2/m0;Lb3/m;Ljava/util/List;Lp2/g;Lb3/c;Lt2/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/a0;->l:Lp2/m0;

    iput-object p2, p0, Lb0/a0;->m:Lb3/m;

    iput-object p3, p0, Lb0/a0;->n:Ljava/util/List;

    iput-object p4, p0, Lb0/a0;->o:Lp2/g;

    iput-object p5, p0, Lb0/a0;->p:Lb3/c;

    iput-object p6, p0, Lb0/a0;->q:Lt2/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lb0/a0;->l:Lp2/m0;

    iget-object v1, p0, Lb0/a0;->m:Lb3/m;

    iget-object v3, p0, Lb0/a0;->o:Lp2/g;

    iget-object v6, p0, Lb0/a0;->p:Lb3/c;

    iget-object v7, p0, Lb0/a0;->q:Lt2/d;

    const-string v2, "BackgroundTextMeasurement"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Ld1/p;->j()Ld1/g;

    move-result-object v2

    instance-of v4, v2, Ld1/c;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    check-cast v2, Ld1/c;

    goto :goto_0

    :cond_0
    move-object v2, v5

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2, v5, v5}, Ld1/c;->C(Li9/c;Li9/c;)Ld1/c;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v8, :cond_2

    :try_start_1
    invoke-virtual {v8}, Ld1/g;->j()Ld1/g;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v0, v1}, Lp2/d0;->h(Lp2/m0;Lb3/m;)Lp2/m0;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lb0/a0;->n:Ljava/util/List;

    if-nez p0, :cond_1

    :try_start_3
    sget-object p0, Lu8/r;->l:Lu8/r;

    :cond_1
    move-object v5, p0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :goto_1
    new-instance v2, Landroidx/lifecycle/a1;

    invoke-direct/range {v2 .. v7}, Landroidx/lifecycle/a1;-><init>(Lp2/g;Lp2/m0;Ljava/util/List;Lb3/c;Lt2/d;)V

    invoke-virtual {v2}, Landroidx/lifecycle/a1;->d()F
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v9}, Ld1/g;->q(Ld1/g;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v8}, Ld1/c;->w()Ld1/w;

    move-result-object p0

    invoke-virtual {p0}, Ld1/w;->d()V

    invoke-virtual {v8}, Ld1/c;->c()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :goto_2
    :try_start_6
    invoke-static {v9}, Ld1/g;->q(Ld1/g;)V

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_3
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    move-object p0, v0

    :try_start_8
    invoke-virtual {v8}, Ld1/c;->c()V

    throw p0

    :catchall_3
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot create a mutable snapshot of an read-only snapshot"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :goto_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method
