.class public final Lr0/a2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu9/t;
.implements Lr0/x1;


# static fields
.field public static final o:Lr0/g;


# instance fields
.field public final l:Ly8/h;

.field public final m:Lr0/a2;

.field public volatile n:Ly8/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr0/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lr0/a2;->o:Lr0/g;

    return-void
.end method

.method public constructor <init>(Ly8/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/a2;->l:Ly8/h;

    iput-object p0, p0, Lr0/a2;->m:Lr0/a2;

    return-void
.end method


# virtual methods
.method public final C()Ly8/h;
    .locals 6

    iget-object v0, p0, Lr0/a2;->n:Ly8/h;

    if-eqz v0, :cond_0

    sget-object v1, Lr0/a2;->o:Lr0/g;

    if-ne v0, v1, :cond_4

    :cond_0
    iget-object v0, p0, Lr0/a2;->l:Ly8/h;

    sget-object v1, Le1/e;->m:Ld7/g;

    invoke-interface {v0, v1}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object v0

    check-cast v0, Le1/e;

    if-eqz v0, :cond_1

    new-instance v1, Lr0/z1;

    invoke-direct {v1, v0, p0}, Lr0/z1;-><init>(Le1/e;Lr0/a2;)V

    goto :goto_0

    :cond_1
    sget-object v1, Ly8/i;->l:Ly8/i;

    :goto_0
    iget-object v0, p0, Lr0/a2;->m:Lr0/a2;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lr0/a2;->n:Ly8/h;

    if-nez v2, :cond_2

    iget-object v2, p0, Lr0/a2;->l:Ly8/h;

    sget-object v3, Lu9/q;->m:Lu9/q;

    invoke-interface {v2, v3}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object v3

    check-cast v3, Lu9/v0;

    new-instance v4, Lu9/x0;

    invoke-direct {v4, v3}, Lu9/x0;-><init>(Lu9/v0;)V

    invoke-interface {v2, v4}, Ly8/h;->y(Ly8/h;)Ly8/h;

    move-result-object v2

    sget-object v3, Ly8/i;->l:Ly8/i;

    invoke-interface {v2, v3}, Ly8/h;->y(Ly8/h;)Ly8/h;

    move-result-object v2

    invoke-interface {v2, v1}, Ly8/h;->y(Ly8/h;)Ly8/h;

    move-result-object v1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    sget-object v3, Lr0/a2;->o:Lr0/g;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lr0/a2;->l:Ly8/h;

    sget-object v3, Lu9/q;->m:Lu9/q;

    invoke-interface {v2, v3}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object v3

    check-cast v3, Lu9/v0;

    new-instance v4, Lu9/x0;

    invoke-direct {v4, v3}, Lu9/x0;-><init>(Lu9/v0;)V

    new-instance v3, Lr0/i0;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lr0/i0;-><init>(I)V

    invoke-virtual {v4, v3}, Lu9/c1;->s(Ljava/lang/Object;)Z

    invoke-interface {v2, v4}, Ly8/h;->y(Ly8/h;)Ly8/h;

    move-result-object v2

    sget-object v3, Ly8/i;->l:Ly8/i;

    invoke-interface {v2, v3}, Ly8/h;->y(Ly8/h;)Ly8/h;

    move-result-object v2

    invoke-interface {v2, v1}, Ly8/h;->y(Ly8/h;)Ly8/h;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    iput-object v1, p0, Lr0/a2;->n:Ly8/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    move-object v0, v1

    :cond_4
    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    return-object v0

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public final a()V
    .locals 0

    invoke-virtual {p0}, Lr0/a2;->b()V

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lr0/a2;->m:Lr0/a2;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr0/a2;->n:Ly8/h;

    if-nez v1, :cond_0

    sget-object v1, Lr0/a2;->o:Lr0/g;

    iput-object v1, p0, Lr0/a2;->n:Ly8/h;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance p0, Lr0/i0;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lr0/i0;-><init>(I)V

    invoke-static {v1, p0}, Lu9/v;->f(Ly8/h;Ljava/util/concurrent/CancellationException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final f()V
    .locals 0

    invoke-virtual {p0}, Lr0/a2;->b()V

    return-void
.end method

.method public final g()V
    .locals 0

    return-void
.end method
