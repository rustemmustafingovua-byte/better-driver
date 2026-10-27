.class public final Lpa/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lpa/p;

.field public final b:Lpa/e;

.field public final c:Lqa/f;


# direct methods
.method public constructor <init>(Lpa/p;Lpa/e;Lqa/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpa/a;->a:Lpa/p;

    iput-object p2, p0, Lpa/a;->b:Lpa/e;

    iput-object p3, p0, Lpa/a;->c:Lqa/f;

    return-void
.end method


# virtual methods
.method public final a(Lpa/q;)V
    .locals 2

    const-string v0, "connection"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lma/e;->a:Ljava/util/TimeZone;

    iget-object p0, p0, Lpa/a;->a:Lpa/p;

    iget-object v0, p0, Lpa/p;->s:Lpa/q;

    if-nez v0, :cond_0

    iput-object p1, p0, Lpa/p;->s:Lpa/q;

    iget-object p1, p1, Lpa/q;->s:Ljava/util/ArrayList;

    new-instance v0, Lpa/n;

    iget-object v1, p0, Lpa/p;->q:Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lpa/n;-><init>(Lpa/p;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(Lpa/d;)V
    .locals 0

    iget-object p0, p0, Lpa/a;->a:Lpa/p;

    iget-object p0, p0, Lpa/p;->z:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()Lpa/q;
    .locals 0

    iget-object p0, p0, Lpa/a;->a:Lpa/p;

    iget-object p0, p0, Lpa/p;->s:Lpa/q;

    return-object p0
.end method

.method public final d(Lla/f0;Ljava/io/IOException;)V
    .locals 0

    const-string p0, "route"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, Lla/f0;->c:Ljava/net/InetSocketAddress;

    const-string p1, "inetSocketAddress"

    invoke-static {p0, p1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final e(Lpa/q;)V
    .locals 0

    const-string p0, "connection"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final f(Lpa/q;)V
    .locals 1

    const-string v0, "connection"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lpa/q;->k:Lpa/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "call"

    iget-object p0, p0, Lpa/a;->a:Lpa/p;

    invoke-static {p0, p1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final g(Lpa/q;)V
    .locals 0

    return-void
.end method

.method public final h(Lpa/q;)V
    .locals 0

    return-void
.end method

.method public final i(Lpa/q;)V
    .locals 0

    return-void
.end method

.method public final j(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final l()Z
    .locals 1

    iget-object p0, p0, Lpa/a;->c:Lqa/f;

    iget-object p0, p0, Lqa/f;->e:Lg7/c;

    iget-object p0, p0, Lg7/c;->b:Ljava/lang/String;

    const-string v0, "GET"

    invoke-static {p0, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final m()Z
    .locals 0

    iget-object p0, p0, Lpa/a;->a:Lpa/p;

    iget-boolean p0, p0, Lpa/p;->x:Z

    return p0
.end method

.method public final n(Lpa/q;)V
    .locals 0

    return-void
.end method

.method public final o()Ljava/net/Socket;
    .locals 0

    iget-object p0, p0, Lpa/a;->a:Lpa/p;

    invoke-virtual {p0}, Lpa/p;->r()Ljava/net/Socket;

    move-result-object p0

    return-object p0
.end method

.method public final p(Lpa/d;)V
    .locals 0

    iget-object p0, p0, Lpa/a;->a:Lpa/p;

    iget-object p0, p0, Lpa/p;->z:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final q()V
    .locals 0

    return-void
.end method

.method public final r()V
    .locals 0

    return-void
.end method
