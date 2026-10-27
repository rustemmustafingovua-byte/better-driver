.class public final synthetic Lr0/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lr0/w0;->l:I

    iput-object p2, p0, Lr0/w0;->m:Ljava/lang/Object;

    iput-object p3, p0, Lr0/w0;->n:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 14

    iget v0, p0, Lr0/w0;->l:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lr0/w0;->m:Ljava/lang/Object;

    check-cast v0, Lc1/f;

    iget-object p0, p0, Lr0/w0;->n:Ljava/lang/Object;

    check-cast p0, Lc1/d;

    new-instance v1, Lx/m0;

    sget-object v2, Lu8/s;->l:Lu8/s;

    invoke-direct {v1, v0, v2, p0}, Lx/m0;-><init>(Lc1/f;Ljava/util/Map;Lc1/d;)V

    return-object v1

    :pswitch_0
    iget-object v0, p0, Lr0/w0;->m:Ljava/lang/Object;

    check-cast v0, Ldadb/Dadb;

    iget-object p0, p0, Lr0/w0;->n:Ljava/lang/Object;

    check-cast p0, Lvc/f;

    iget-object p0, p0, Lvc/f;->a:Landroid/app/Application;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pm path "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ldadb/Dadb;->shell(Ljava/lang/String;)Ldadb/AdbShellResponse;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lr0/w0;->m:Ljava/lang/Object;

    check-cast v0, Lsa/p;

    iget-object p0, p0, Lr0/w0;->n:Ljava/lang/Object;

    check-cast p0, Lj9/y;

    iget-object v1, v0, Lsa/p;->l:Lsa/n;

    iget-object p0, p0, Lj9/y;->m:Ljava/lang/Object;

    check-cast p0, Lsa/b0;

    invoke-virtual {v1, v0, p0}, Lsa/n;->a(Lsa/p;Lsa/b0;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_2
    iget-object v0, p0, Lr0/w0;->m:Ljava/lang/Object;

    check-cast v0, Lod/x2;

    iget-object p0, p0, Lr0/w0;->n:Ljava/lang/Object;

    check-cast p0, Lsa/b0;

    new-instance v2, Lj9/y;

    invoke-direct {v2}, Lj9/y;-><init>()V

    iget-object v0, v0, Lod/x2;->n:Ljava/lang/Object;

    check-cast v0, Lsa/p;

    iget-object v3, v0, Lsa/p;->H:Lsa/y;

    monitor-enter v3

    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, v0, Lsa/p;->C:Lsa/b0;

    new-instance v5, Lsa/b0;

    invoke-direct {v5}, Lsa/b0;-><init>()V

    invoke-virtual {v5, v4}, Lsa/b0;->b(Lsa/b0;)V

    invoke-virtual {v5, p0}, Lsa/b0;->b(Lsa/b0;)V

    iput-object v5, v2, Lj9/y;->m:Ljava/lang/Object;

    invoke-virtual {v5}, Lsa/b0;->a()I

    move-result p0

    int-to-long v5, p0

    invoke-virtual {v4}, Lsa/b0;->a()I

    move-result p0

    int-to-long v7, p0

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long p0, v5, v7

    if-eqz p0, :cond_1

    iget-object v4, v0, Lsa/p;->m:Ljava/util/LinkedHashMap;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lsa/p;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    new-array v7, v1, [Lsa/x;

    invoke-interface {v4, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lsa/x;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_1
    :goto_0
    const/4 v4, 0x0

    :goto_1
    iget-object v7, v2, Lj9/y;->m:Ljava/lang/Object;

    check-cast v7, Lsa/b0;

    const-string v8, "<set-?>"

    invoke-static {v7, v8}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v7, v0, Lsa/p;->C:Lsa/b0;

    iget-object v7, v0, Lsa/p;->u:Loa/c;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lsa/p;->n:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " onSettings"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lr0/w0;

    const/4 v10, 0x5

    invoke-direct {v9, v10, v0, v2}, Lr0/w0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v7, v8, v9}, Loa/c;->b(Loa/c;Ljava/lang/String;Li9/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v7, v0, Lsa/p;->H:Lsa/y;

    iget-object v2, v2, Lj9/y;->m:Ljava/lang/Object;

    check-cast v2, Lsa/b0;

    invoke-virtual {v7, v2}, Lsa/y;->b(Lsa/b0;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception v2

    :try_start_4
    sget-object v7, Lsa/b;->o:Lsa/b;

    invoke-virtual {v0, v7, v7, v2}, Lsa/p;->b(Lsa/b;Lsa/b;Ljava/io/IOException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    monitor-exit v3

    if-eqz v4, :cond_3

    array-length v0, v4

    :goto_3
    if-ge v1, v0, :cond_3

    aget-object v2, v4, v1

    monitor-enter v2

    :try_start_5
    iget-wide v7, v2, Lsa/x;->e:J

    add-long/2addr v7, v5

    iput-wide v7, v2, Lsa/x;->e:J

    if-lez p0, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_2
    monitor-exit v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :catchall_2
    move-exception p0

    monitor-exit v2

    throw p0

    :cond_3
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :goto_4
    :try_start_6
    monitor-exit v0

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_5
    monitor-exit v3

    throw p0

    :pswitch_3
    iget-object v0, p0, Lr0/w0;->m:Ljava/lang/Object;

    check-cast v0, Lsa/p;

    iget-object p0, p0, Lr0/w0;->n:Ljava/lang/Object;

    check-cast p0, Lsa/x;

    :try_start_7
    iget-object v1, v0, Lsa/p;->l:Lsa/n;

    invoke-virtual {v1, p0}, Lsa/n;->b(Lsa/x;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_6

    :catch_1
    move-exception v1

    sget-object v2, Lva/c;->a:Lva/a;

    sget-object v2, Lva/c;->a:Lva/a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Http2Connection.Listener failure for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lsa/p;->n:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v2, v0, v3, v1}, Lva/c;->c(Ljava/lang/String;ILjava/lang/Throwable;)V

    :try_start_8
    sget-object v0, Lsa/b;->o:Lsa/b;

    invoke-virtual {p0, v0, v1}, Lsa/x;->c(Lsa/b;Ljava/io/IOException;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    :goto_6
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_4
    iget-object v0, p0, Lr0/w0;->m:Ljava/lang/Object;

    check-cast v0, Lr9/i;

    iget-object p0, p0, Lr0/w0;->n:Ljava/lang/Object;

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p0, v1}, Lr9/i;->b(Ljava/lang/CharSequence;I)Lr9/g;

    move-result-object p0

    return-object p0

    :pswitch_5
    iget-object v0, p0, Lr0/w0;->m:Ljava/lang/Object;

    check-cast v0, Lk/n0;

    iget-object p0, p0, Lr0/w0;->n:Ljava/lang/Object;

    check-cast p0, Lr0/x;

    iget-object v2, v0, Lk/n0;->b:[Ljava/lang/Object;

    iget-object v0, v0, Lk/n0;->a:[J

    array-length v3, v0

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_7

    move v4, v1

    :goto_7
    aget-wide v5, v0, v4

    not-long v7, v5

    const/4 v9, 0x7

    shl-long/2addr v7, v9

    and-long/2addr v7, v5

    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v7, v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_6

    sub-int v7, v4, v3

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    rsub-int/lit8 v7, v7, 0x8

    move v9, v1

    :goto_8
    if-ge v9, v7, :cond_5

    const-wide/16 v10, 0xff

    and-long/2addr v10, v5

    const-wide/16 v12, 0x80

    cmp-long v10, v10, v12

    if-gez v10, :cond_4

    shl-int/lit8 v10, v4, 0x3

    add-int/2addr v10, v9

    aget-object v10, v2, v10

    invoke-virtual {p0, v10}, Lr0/x;->A(Ljava/lang/Object;)V

    :cond_4
    shr-long/2addr v5, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_5
    if-ne v7, v8, :cond_7

    :cond_6
    if-eq v4, v3, :cond_7

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_7
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_6
    iget-object v0, p0, Lr0/w0;->m:Ljava/lang/Object;

    check-cast v0, Lg5/m;

    iget-object p0, p0, Lr0/w0;->n:Ljava/lang/Object;

    check-cast p0, Lr0/p1;

    iget-object v0, v0, Lg5/m;->m:Ljava/lang/Object;

    check-cast v0, Lz0/a;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_9

    :cond_8
    invoke-virtual {p0}, Lr0/p1;->invoke()Ljava/lang/Object;

    :goto_9
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
