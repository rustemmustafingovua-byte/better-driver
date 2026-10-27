.class public final Lf8/r2;
.super Lf8/x2;
.source "SourceFile"


# instance fields
.field public final l:Lf8/z;

.field public final m:Ljava/lang/String;

.field public final n:Lf8/w2;

.field public final o:[Lf8/s2;

.field public final p:Ljava/util/WeakHashMap;


# direct methods
.method public constructor <init>(Lf8/z;Lf8/w2;Lf8/m2;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lf8/r2;->p:Ljava/util/WeakHashMap;

    iput-object p1, p0, Lf8/r2;->l:Lf8/z;

    invoke-virtual {p1}, Lf8/z;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lf8/b3;->a(Lf8/w2;Lf8/m2;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lf8/r2;->m:Ljava/lang/String;

    iput-object p2, p0, Lf8/r2;->n:Lf8/w2;

    iget-object p3, p1, Lf8/z;->p:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p1, Lf8/z;->p:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    new-array p3, p3, [Lf8/s2;

    iput-object p3, p0, Lf8/r2;->o:[Lf8/s2;

    const/4 p3, 0x0

    :goto_0
    iget-object v0, p1, Lf8/z;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_0

    iget-object v0, p0, Lf8/r2;->o:[Lf8/s2;

    new-instance v1, Lf8/s2;

    iget-object v2, p1, Lf8/z;->p:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf8/f0;

    invoke-direct {v1, v2, p2, p0}, Lf8/s2;-><init>(Lf8/f0;Lf8/w2;Lf8/r2;)V

    aput-object v1, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p2, Lf8/w2;->r:Lf8/p2;

    invoke-virtual {p1, p0}, Lf8/p2;->b(Lf8/x2;)V

    return-void

    :cond_1
    new-instance p1, Lf8/q2;

    const-string p2, "Enums must contain at least one value."

    invoke-direct {p1, p0, p2}, Lf8/q2;-><init>(Lf8/x2;Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final b()Lf8/w2;
    .locals 0

    iget-object p0, p0, Lf8/r2;->n:Lf8/w2;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf8/r2;->m:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf8/r2;->l:Lf8/z;

    invoke-virtual {p0}, Lf8/z;->v()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final e()Lf8/c;
    .locals 0

    iget-object p0, p0, Lf8/r2;->l:Lf8/z;

    return-object p0
.end method

.method public final f(I)Lf8/s2;
    .locals 2

    iget-object v0, p0, Lf8/r2;->n:Lf8/w2;

    iget-object v0, v0, Lf8/w2;->r:Lf8/p2;

    iget-object v0, v0, Lf8/p2;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    new-instance v1, Lf8/n2;

    invoke-direct {v1, p0, p1}, Lf8/n2;-><init>(Lf8/x2;I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf8/s2;

    return-object p0
.end method

.method public final g(I)Lf8/s2;
    .locals 3

    invoke-virtual {p0, p1}, Lf8/r2;->f(I)Lf8/s2;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    iget-object p1, p0, Lf8/r2;->p:Ljava/util/WeakHashMap;

    invoke-virtual {p1, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lf8/s2;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Lf8/s2;

    iget-object p1, p0, Lf8/r2;->n:Lf8/w2;

    invoke-direct {v0, p1, p0, v1}, Lf8/s2;-><init>(Lf8/w2;Lf8/r2;Ljava/lang/Integer;)V

    iget-object p1, p0, Lf8/r2;->p:Ljava/util/WeakHashMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
