.class public final Lk4/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Lk4/h;->b:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lk4/h;->c:Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lk4/h;->d:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lk4/h;->a:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-array v0, p1, [J

    iput-object v0, p0, Lk4/h;->b:Ljava/lang/Object;

    .line 18
    new-array v0, p1, [Z

    iput-object v0, p0, Lk4/h;->c:Ljava/lang/Object;

    .line 19
    new-array p1, p1, [I

    iput-object p1, p0, Lk4/h;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lpa/p;Lpa/h;Lqa/d;)V
    .locals 1

    const-string v0, "finder"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lk4/h;->b:Ljava/lang/Object;

    .line 9
    iput-object p2, p0, Lk4/h;->c:Ljava/lang/Object;

    .line 10
    iput-object p3, p0, Lk4/h;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lx/u;Lc2/r1;Lx/p0;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lk4/h;->b:Ljava/lang/Object;

    .line 13
    iput-object p2, p0, Lk4/h;->c:Ljava/lang/Object;

    .line 14
    iput-object p3, p0, Lk4/h;->d:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lk4/h;->a:Z

    return-void
.end method

.method public static a(Lk4/h;Ljava/io/IOException;I)Ljava/io/IOException;
    .locals 3

    and-int/lit8 v0, p2, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_1

    move v1, v2

    :cond_1
    iget-object p2, p0, Lk4/h;->b:Ljava/lang/Object;

    check-cast p2, Lpa/p;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lk4/h;->e(Ljava/io/IOException;)V

    :cond_2
    invoke-virtual {p2, p0, v1, v0, p1}, Lpa/p;->o(Lk4/h;ZZLjava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Lpa/q;
    .locals 1

    iget-object p0, p0, Lk4/h;->d:Ljava/lang/Object;

    check-cast p0, Lqa/d;

    invoke-interface {p0}, Lqa/d;->i()Lqa/c;

    move-result-object p0

    instance-of v0, p0, Lpa/q;

    if-eqz v0, :cond_0

    check-cast p0, Lpa/q;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "no connection for CONNECT tunnels"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c()[I
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lk4/h;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lk4/h;->b:Ljava/lang/Object;

    check-cast v0, [J

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_4

    aget-wide v5, v0, v3

    add-int/lit8 v7, v4, 0x1

    const-wide/16 v8, 0x0

    cmp-long v5, v5, v8

    const/4 v6, 0x1

    if-lez v5, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    iget-object v8, p0, Lk4/h;->c:Ljava/lang/Object;

    check-cast v8, [Z

    aget-boolean v9, v8, v4

    if-eq v5, v9, :cond_3

    iget-object v9, p0, Lk4/h;->d:Ljava/lang/Object;

    check-cast v9, [I

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v6, 0x2

    :goto_2
    aput v6, v9, v4

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_3
    iget-object v6, p0, Lk4/h;->d:Ljava/lang/Object;

    check-cast v6, [I

    aput v2, v6, v4

    :goto_3
    aput-boolean v5, v8, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v7

    goto :goto_0

    :cond_4
    iput-boolean v2, p0, Lk4/h;->a:Z

    iget-object v0, p0, Lk4/h;->d:Ljava/lang/Object;

    check-cast v0, [I

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_4
    monitor-exit p0

    throw v0
.end method

.method public d(Z)Lla/b0;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lk4/h;->d:Ljava/lang/Object;

    check-cast v0, Lqa/d;

    invoke-interface {v0, p1}, Lqa/d;->f(Z)Lla/b0;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p0, p1, Lla/b0;->m:Lk4/h;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lk4/h;->e(Ljava/io/IOException;)V

    throw p1
.end method

.method public e(Ljava/io/IOException;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lk4/h;->a:Z

    iget-object v0, p0, Lk4/h;->d:Ljava/lang/Object;

    check-cast v0, Lqa/d;

    invoke-interface {v0}, Lqa/d;->i()Lqa/c;

    move-result-object v0

    iget-object p0, p0, Lk4/h;->b:Ljava/lang/Object;

    check-cast p0, Lpa/p;

    invoke-interface {v0, p0, p1}, Lqa/c;->h(Lpa/p;Ljava/io/IOException;)V

    return-void
.end method
