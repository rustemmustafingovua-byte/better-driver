.class public final Lb6/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final q:La6/n;


# instance fields
.field public final l:Lb6/p0;

.field public final m:Lq6/k;

.field public final n:Lg5/f;

.field public final o:Ls5/d;

.field public final p:Lb6/e0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, La6/n;

    sget-object v1, Ls5/p;->e:Lw5/k;

    iget-object v1, v1, Lw5/k;->l:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, La6/n;-><init>(I)V

    iput-object v1, v0, La6/n;->m:Ljava/lang/Object;

    new-instance v1, La6/r;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, La6/n;->n:Ljava/lang/Object;

    sput-object v0, Lb6/f0;->q:La6/n;

    return-void
.end method

.method public constructor <init>(Lb6/c0;Lb6/p0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lb6/f0;->l:Lb6/p0;

    .line 3
    iget-object p2, p1, Lb6/c0;->r:Lq6/k;

    iput-object p2, p0, Lb6/f0;->m:Lq6/k;

    .line 4
    iget-object p2, p1, Lb6/c0;->s:Lg5/f;

    iput-object p2, p0, Lb6/f0;->n:Lg5/f;

    .line 5
    iget-object p1, p1, Lb6/c0;->l:Ls5/d;

    iput-object p1, p0, Lb6/f0;->o:Ls5/d;

    .line 6
    sget-object p1, Lb6/e0;->m:Lb6/e0;

    iput-object p1, p0, Lb6/f0;->p:Lb6/e0;

    return-void
.end method

.method public constructor <init>(Lb6/f0;Lb6/p0;Lb6/e0;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p2, p0, Lb6/f0;->l:Lb6/p0;

    .line 9
    iget-object p2, p1, Lb6/f0;->m:Lq6/k;

    iput-object p2, p0, Lb6/f0;->m:Lq6/k;

    .line 10
    iget-object p2, p1, Lb6/f0;->n:Lg5/f;

    iput-object p2, p0, Lb6/f0;->n:Lg5/f;

    .line 11
    iget-object p1, p1, Lb6/f0;->o:Ls5/d;

    iput-object p1, p0, Lb6/f0;->o:Ls5/d;

    .line 12
    iput-object p3, p0, Lb6/f0;->p:Lb6/e0;

    return-void
.end method


# virtual methods
.method public final a(Ls5/g;Lp6/k;)V
    .locals 4

    sget-object v0, Lb6/q0;->u:Lb6/q0;

    iget-object v1, p0, Lb6/f0;->l:Lb6/p0;

    invoke-virtual {v1, v0}, Lb6/p0;->t(Lb6/q0;)Z

    move-result v0

    iget-object v2, p0, Lb6/f0;->n:Lg5/f;

    iget-object p0, p0, Lb6/f0;->m:Lq6/k;

    if-eqz v0, :cond_0

    instance-of v0, p2, Ljava/io/Closeable;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/io/Closeable;

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lq6/k;->o0(Lb6/p0;Lg5/f;)Lq6/k;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lq6/k;->p0(Ls5/g;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {p1}, Ls5/g;->close()V

    return-void

    :catch_0
    move-exception p0

    move-object v0, v3

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    invoke-static {p1, v0, p0}, Lu6/h;->g(Ls5/g;Ljava/io/Closeable;Ljava/lang/Exception;)V

    throw v3

    :cond_0
    :try_start_2
    invoke-virtual {p0, v1, v2}, Lq6/k;->o0(Lb6/p0;Lg5/f;)Lq6/k;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lq6/k;->p0(Ls5/g;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    invoke-virtual {p1}, Ls5/g;->close()V

    return-void

    :catch_2
    move-exception p0

    sget-object p2, Lu6/h;->a:[Ljava/lang/annotation/Annotation;

    sget-object p2, Ls5/f;->o:Ls5/f;

    invoke-virtual {p1, p2}, Ls5/g;->m(Ls5/f;)Ls5/g;

    :try_start_3
    invoke-virtual {p1}, Ls5/g;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    invoke-static {p0}, Lu6/h;->D(Ljava/lang/Throwable;)V

    invoke-static {p0}, Lu6/h;->E(Ljava/lang/Throwable;)V

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final b(Lp6/k;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lb6/f0;->o:Ls5/d;

    invoke-virtual {v0}, Ls5/d;->i()La6/b;

    move-result-object v1

    :try_start_0
    new-instance v2, Lw5/j;

    invoke-direct {v2, v1}, Lw5/j;-><init>(La6/b;)V
    :try_end_0
    .catch Ls5/l; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v0, v2}, Ls5/d;->j(Lw5/j;)Ls5/g;

    move-result-object v0

    iget-object v1, p0, Lb6/f0;->l:Lb6/p0;

    invoke-virtual {v1, v0}, Lb6/p0;->r(Ls5/g;)V

    iget-object v1, p0, Lb6/f0;->p:Lb6/e0;

    iget-object v1, v1, Lb6/e0;->l:Ls5/p;

    if-eqz v1, :cond_2

    sget-object v3, Lb6/f0;->q:La6/n;

    if-ne v1, v3, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ls5/g;->y(Ls5/p;)V

    goto :goto_0

    :cond_0
    instance-of v3, v1, La6/h;

    if-eqz v3, :cond_1

    check-cast v1, La6/h;

    invoke-interface {v1}, La6/h;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls5/p;

    :cond_1
    invoke-virtual {v0, v1}, Ls5/g;->y(Ls5/p;)V

    :cond_2
    :goto_0
    invoke-virtual {p0, v0, p1}, Lb6/f0;->a(Ls5/g;Lp6/k;)V

    iget-object p0, v2, Lw5/j;->l:La6/s;

    invoke-virtual {p0}, La6/s;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, La6/s;->n()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :catchall_0
    move-exception p0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catch Ls5/l; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p0

    throw p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lb6/p;->e(Ljava/io/IOException;)Lb6/p;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    throw p0
.end method
