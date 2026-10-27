.class public final Lb6/d0;
.super Ls5/o;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final l:Lb6/h;

.field public final m:Le6/n;

.field public final n:Lb6/l;

.field public final o:Lb6/n;

.field public final p:Ljava/util/concurrent/ConcurrentHashMap;

.field public transient q:Lb6/l;


# direct methods
.method public constructor <init>(Lb6/d0;Lb6/h;Lb6/l;Lb6/n;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lb6/d0;->l:Lb6/h;

    .line 3
    iget-object v0, p1, Lb6/d0;->m:Le6/n;

    iput-object v0, p0, Lb6/d0;->m:Le6/n;

    .line 4
    iget-object p1, p1, Lb6/d0;->p:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lb6/d0;->p:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    iput-object p3, p0, Lb6/d0;->n:Lb6/l;

    .line 6
    iput-object p4, p0, Lb6/d0;->o:Lb6/n;

    .line 7
    invoke-virtual {p2}, Lb6/h;->u()Z

    return-void
.end method

.method public constructor <init>(Ll6/a;Lb6/h;Lb6/l;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p2, p0, Lb6/d0;->l:Lb6/h;

    .line 10
    iget-object v0, p1, Lb6/c0;->u:Le6/n;

    iput-object v0, p0, Lb6/d0;->m:Le6/n;

    .line 11
    iget-object p1, p1, Lb6/c0;->w:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lb6/d0;->p:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    iput-object p3, p0, Lb6/d0;->n:Lb6/l;

    .line 13
    invoke-virtual {p2}, Lb6/h;->u()Z

    .line 14
    invoke-virtual {p0, p3}, Lb6/d0;->i(Lb6/l;)Lb6/n;

    move-result-object p1

    iput-object p1, p0, Lb6/d0;->o:Lb6/n;

    return-void
.end method


# virtual methods
.method public final a(Ls5/k;)Lb6/q;
    .locals 7

    const-string v0, "p"

    invoke-virtual {p0, p1, v0}, Lb6/d0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lb6/d0;->l:Lb6/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v3, p0, Lb6/d0;->m:Le6/n;

    invoke-virtual {v3, v0, p1}, Le6/n;->G0(Lb6/h;Ls5/k;)Le6/n;

    move-result-object v3

    sget-object v4, Ls5/n;->F:Ls5/n;

    if-ne v1, v4, :cond_1

    iget-object v1, v0, Lb6/h;->v:Lp6/m;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lp6/t;->l:Lp6/t;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lb6/d0;->h()Lb6/l;

    move-result-object v1

    invoke-virtual {p0}, Lb6/d0;->h()Lb6/l;

    move-result-object v4

    iget-object v5, p0, Lb6/d0;->p:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lb6/n;

    if-nez v6, :cond_3

    invoke-virtual {v3, v4}, Lb6/i;->Y(Lb6/l;)Lb6/n;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Cannot find a deserializer for type "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lb6/i;->G(Ljava/lang/String;)Ljava/lang/Object;

    throw v2

    :cond_3
    :goto_0
    invoke-virtual {v3, p1, v1, v6}, Le6/n;->H0(Ls5/k;Lb6/l;Lb6/n;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb6/q;

    :goto_1
    invoke-virtual {p1}, Ls5/k;->m()V

    sget-object v3, Lb6/j;->B:Lb6/j;

    invoke-virtual {v0, v3}, Lb6/h;->t(Lb6/j;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lb6/d0;->h()Lb6/l;

    move-result-object p0

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v1, Lu6/h;->a:[Ljava/lang/annotation/Annotation;

    if-nez p0, :cond_4

    move-object p0, v2

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lb6/l;->o:Ljava/lang/Class;

    :goto_2
    invoke-static {p0, p1, v0}, Lb6/i;->y0(Ljava/lang/Class;Ls5/k;Ls5/n;)V

    throw v2

    :cond_5
    return-object v1
.end method

.method public final b(Ljava/lang/Class;Ls5/k;)Ljava/lang/Object;
    .locals 5

    const-string v0, "p"

    invoke-virtual {p0, p2, v0}, Lb6/d0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lb6/d0;->l:Lb6/h;

    invoke-virtual {v0, p1}, Ld6/m;->c(Ljava/lang/Class;)Lb6/l;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lb6/d0;->n:Lb6/l;

    invoke-virtual {p1, v1}, Lb6/l;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lb6/d0;->i(Lb6/l;)Lb6/n;

    move-result-object v1

    new-instance v2, Lb6/d0;

    invoke-direct {v2, p0, v0, p1, v1}, Lb6/d0;-><init>(Lb6/d0;Lb6/h;Lb6/l;Lb6/n;)V

    move-object p0, v2

    :goto_0
    iget-object p1, p0, Lb6/d0;->m:Le6/n;

    iget-object v0, p0, Lb6/d0;->l:Lb6/h;

    invoke-virtual {p1, v0, p2}, Le6/n;->G0(Lb6/h;Ls5/k;)Le6/n;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ls5/k;->t()Ls5/n;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-virtual {p2}, Ls5/k;->z0()Ls5/n;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p2, "No content to map due to end-of-input"

    invoke-virtual {p1, p2, p0}, Lb6/i;->x0(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :cond_2
    :goto_1
    sget-object v3, Ls5/n;->F:Ls5/n;

    iget-object v4, p0, Lb6/d0;->n:Lb6/l;

    if-ne v1, v3, :cond_3

    invoke-virtual {p0, p1}, Lb6/d0;->f(Le6/n;)Lb6/n;

    move-result-object p0

    invoke-virtual {p0, p1}, Lb6/n;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_3

    :cond_3
    sget-object v3, Ls5/n;->x:Ls5/n;

    if-eq v1, v3, :cond_6

    sget-object v3, Ls5/n;->v:Ls5/n;

    if-ne v1, v3, :cond_4

    goto :goto_2

    :cond_4
    sget-object v3, Ls5/n;->t:Ls5/n;

    if-ne v1, v3, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p0, p1}, Lb6/d0;->f(Le6/n;)Lb6/n;

    move-result-object p0

    invoke-virtual {p1, p2, v4, p0}, Le6/n;->H0(Ls5/k;Lb6/l;Lb6/n;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_3

    :cond_6
    :goto_2
    move-object p0, v2

    :goto_3
    invoke-virtual {p2}, Ls5/k;->m()V

    sget-object p1, Lb6/j;->B:Lb6/j;

    invoke-virtual {v0, p1}, Lb6/h;->t(Lb6/j;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p2}, Ls5/k;->z0()Ls5/n;

    move-result-object p1

    if-eqz p1, :cond_8

    sget-object p0, Lu6/h;->a:[Ljava/lang/annotation/Annotation;

    if-nez v4, :cond_7

    move-object p0, v2

    goto :goto_4

    :cond_7
    iget-object p0, v4, Lb6/l;->o:Ljava/lang/Class;

    :goto_4
    invoke-static {p0, p2, p1}, Lb6/i;->y0(Ljava/lang/Class;Ls5/k;Ls5/n;)V

    throw v2

    :cond_8
    return-object p0
.end method

.method public final c(Ls5/v;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    const-string v0, "n"

    invoke-virtual {p0, p1, v0}, Lb6/d0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lp6/y;

    check-cast p1, Lb6/q;

    invoke-direct {v0, p1, p0}, Lp6/y;-><init>(Lb6/q;Ls5/o;)V

    invoke-virtual {p0, p2, v0}, Lb6/d0;->b(Ljava/lang/Class;Ls5/k;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ls5/l; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    invoke-static {p0}, Lb6/p;->e(Ljava/io/IOException;)Lb6/p;

    move-result-object p0

    throw p0

    :goto_1
    throw p0
.end method

.method public final d(Ls5/g;Ljava/lang/Object;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not implemented for ObjectReader"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "argument \""

    const-string v0, "\" is null"

    invoke-static {p1, p2, v0}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final f(Le6/n;)Lb6/n;
    .locals 3

    iget-object v0, p0, Lb6/d0;->o:Lb6/n;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lb6/d0;->n:Lb6/l;

    if-eqz v1, :cond_3

    iget-object p0, p0, Lb6/d0;->p:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb6/n;

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {p1, v1}, Lb6/i;->Y(Lb6/l;)Lb6/n;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find a deserializer for type "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lb6/i;->G(Ljava/lang/String;)Ljava/lang/Object;

    throw v0

    :cond_3
    const-string p0, "No value type configured for ObjectReader"

    invoke-virtual {p1, p0}, Lb6/i;->G(Ljava/lang/String;)Ljava/lang/Object;

    throw v0
.end method

.method public final h()Lb6/l;
    .locals 2

    iget-object v0, p0, Lb6/d0;->q:Lb6/l;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb6/d0;->l:Lb6/h;

    iget-object v0, v0, Ld6/m;->m:Ld6/a;

    iget-object v0, v0, Ld6/a;->l:Lt6/p;

    const-class v1, Lb6/q;

    invoke-virtual {v0, v1}, Lt6/p;->l(Ljava/lang/reflect/Type;)Lb6/l;

    move-result-object v0

    iput-object v0, p0, Lb6/d0;->q:Lb6/l;

    :cond_0
    return-object v0
.end method

.method public final i(Lb6/l;)Lb6/n;
    .locals 3

    if-eqz p1, :cond_2

    sget-object v0, Lb6/j;->N:Lb6/j;

    iget-object v1, p0, Lb6/d0;->l:Lb6/h;

    invoke-virtual {v1, v0}, Lb6/h;->t(Lb6/j;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb6/d0;->p:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb6/n;

    if-nez v2, :cond_1

    :try_start_0
    iget-object p0, p0, Lb6/d0;->m:Le6/n;

    invoke-virtual {p0, v1}, Le6/n;->F0(Lb6/h;)Le6/n;

    move-result-object p0

    invoke-virtual {p0, p1}, Lb6/i;->Y(Lb6/l;)Lb6/n;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ls5/l; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v2

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
