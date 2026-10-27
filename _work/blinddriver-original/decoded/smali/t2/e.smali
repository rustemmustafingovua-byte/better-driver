.class public final Lt2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt2/d;


# instance fields
.field public final a:Lmb/q;

.field public final b:Lt2/a;

.field public final c:Lg5/s;

.field public final d:Lt2/h;

.field public final e:Lq3/k;


# direct methods
.method public constructor <init>(Lmb/q;Lt2/a;)V
    .locals 5

    sget-object v0, Lt2/f;->a:Lg5/s;

    new-instance v1, Lt2/h;

    sget-object v2, Lt2/f;->a:Lg5/s;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sget-object v2, Lt2/h;->a:Lt2/g;

    sget-object v3, Lx2/g;->a:Lv9/d;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Lc6/o;->X(Ly8/f;Ly8/h;)Ly8/h;

    move-result-object v2

    sget-object v3, Ly8/i;->l:Ly8/i;

    invoke-interface {v2, v3}, Ly8/h;->y(Ly8/h;)Ly8/h;

    move-result-object v2

    new-instance v3, Lu9/l1;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lu9/x0;-><init>(Lu9/v0;)V

    invoke-interface {v2, v3}, Ly8/h;->y(Ly8/h;)Ly8/h;

    move-result-object v2

    invoke-static {v2}, Lu9/v;->a(Ly8/h;)Lz9/d;

    new-instance v2, Lq3/k;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Lq3/k;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt2/e;->a:Lmb/q;

    iput-object p2, p0, Lt2/e;->b:Lt2/a;

    iput-object v0, p0, Lt2/e;->c:Lg5/s;

    iput-object v1, p0, Lt2/e;->d:Lt2/h;

    iput-object v2, p0, Lt2/e;->e:Lq3/k;

    new-instance p1, Lr0/o1;

    const/4 p2, 0x5

    invoke-direct {p1, p2, p0}, Lr0/o1;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Lt2/q;)Lt2/r;
    .locals 6

    iget-object v0, p0, Lt2/e;->c:Lg5/s;

    iget-object v1, v0, Lg5/s;->l:Ljava/lang/Object;

    check-cast v1, Lwa/e;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lg5/s;->m:Ljava/lang/Object;

    check-cast v2, Lk/s;

    invoke-virtual {v2, p1}, Lk/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt2/r;

    if-eqz v2, :cond_2

    iget-boolean v3, v2, Lt2/r;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_0

    monitor-exit v1

    return-object v2

    :cond_0
    :try_start_1
    iget-object v2, v0, Lg5/s;->m:Ljava/lang/Object;

    check-cast v2, Lk/s;

    iget-object v3, v2, Lk/s;->c:Ld7/g;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v4, v2, Lk/s;->b:Lia/z;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v4, Lia/z;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    iget v5, v2, Lk/s;->d:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v2, Lk/s;->d:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_3
    monitor-exit v3

    check-cast v4, Lt2/r;

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_7

    :goto_1
    monitor-exit v3

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    :goto_2
    monitor-exit v1

    :try_start_4
    iget-object v1, p0, Lt2/e;->d:Lt2/h;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lt2/q;->a:Lt2/p;

    iget-object p0, p0, Lt2/e;->e:Lq3/k;

    iget-object p0, p0, Lq3/k;->m:Ljava/lang/Object;

    iget p0, p1, Lt2/q;->c:I

    iget-object v2, p1, Lt2/q;->b:Lt2/k;

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    instance-of v4, v1, Lt2/b;

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    instance-of v4, v1, Lt2/m;

    if-eqz v4, :cond_5

    check-cast v1, Lt2/m;

    iget-object v1, v1, Lt2/m;->d:Ljava/lang/String;

    invoke-static {v1, v2, p0}, Lmb/q;->f(Ljava/lang/String;Lt2/k;I)Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_4

    :cond_4
    :goto_3
    invoke-static {v3, v2, p0}, Lmb/q;->f(Ljava/lang/String;Lt2/k;I)Landroid/graphics/Typeface;

    move-result-object p0

    :goto_4
    new-instance v3, Lt2/r;

    invoke-direct {v3, p0}, Lt2/r;-><init>(Landroid/graphics/Typeface;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_5
    if-eqz v3, :cond_7

    iget-object p0, v0, Lg5/s;->l:Ljava/lang/Object;

    check-cast p0, Lwa/e;

    monitor-enter p0

    :try_start_5
    iget-object v1, v0, Lg5/s;->m:Ljava/lang/Object;

    check-cast v1, Lk/s;

    invoke-virtual {v1, p1}, Lk/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6

    iget-boolean v1, v3, Lt2/r;->m:Z

    if-eqz v1, :cond_6

    iget-object v0, v0, Lg5/s;->m:Ljava/lang/Object;

    check-cast v0, Lk/s;

    invoke-virtual {v0, p1, v3}, Lk/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception p1

    goto :goto_6

    :cond_6
    :goto_5
    monitor-exit p0

    return-object v3

    :goto_6
    monitor-exit p0

    throw p1

    :cond_7
    :try_start_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Could not load font"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Could not load font"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :goto_7
    monitor-exit v1

    throw p0
.end method

.method public final b(Lt2/p;Lt2/k;II)Lt2/r;
    .locals 6

    new-instance v0, Lt2/q;

    iget-object v1, p0, Lt2/e;->b:Lt2/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v1, Lt2/a;->l:I

    if-eqz v1, :cond_1

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget p2, p2, Lt2/k;->l:I

    add-int/2addr p2, v1

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    invoke-static {p2, v1, v2}, Lg6/c1;->f(III)I

    move-result p2

    new-instance v1, Lt2/k;

    invoke-direct {v1, p2}, Lt2/k;-><init>(I)V

    move-object v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v2, p2

    :goto_1
    iget-object p2, p0, Lt2/e;->a:Lmb/q;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    move-object v1, p1

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lt2/q;-><init>(Lt2/p;Lt2/k;IILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lt2/e;->a(Lt2/q;)Lt2/r;

    move-result-object p0

    return-object p0
.end method
