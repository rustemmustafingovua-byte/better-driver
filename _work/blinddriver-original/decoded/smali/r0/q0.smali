.class public final Lr0/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/x1;
.implements Lu9/r;


# instance fields
.field public final l:Ly8/h;

.field public final m:Li9/e;

.field public final n:Lz9/d;

.field public o:Lu9/j1;


# direct methods
.method public constructor <init>(Ly8/h;Li9/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/q0;->l:Ly8/h;

    iput-object p2, p0, Lr0/q0;->m:Li9/e;

    invoke-interface {p1, p0}, Ly8/h;->y(Ly8/h;)Ly8/h;

    move-result-object p1

    invoke-static {p1}, Lu9/v;->a(Ly8/h;)Lz9/d;

    move-result-object p1

    iput-object p1, p0, Lr0/q0;->n:Lz9/d;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lr0/q0;->o:Lu9/j1;

    if-eqz v0, :cond_0

    new-instance v1, Lr0/i0;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lr0/i0;-><init>(I)V

    invoke-virtual {v0, v1}, Lu9/c1;->u(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lr0/q0;->o:Lu9/j1;

    return-void
.end method

.method public final d(Li9/e;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p2, p0}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lr0/q0;->o:Lu9/j1;

    if-eqz v0, :cond_0

    new-instance v1, Lr0/i0;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lr0/i0;-><init>(I)V

    invoke-virtual {v0, v1}, Lu9/c1;->u(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lr0/q0;->o:Lu9/j1;

    return-void
.end method

.method public final g()V
    .locals 4

    iget-object v0, p0, Lr0/q0;->o:Lu9/j1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/util/concurrent/CancellationException;

    const-string v3, "Old job was still running!"

    invoke-direct {v2, v3}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    invoke-virtual {v0, v2}, Lu9/c1;->c(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iget-object v0, p0, Lr0/q0;->m:Li9/e;

    const/4 v2, 0x3

    iget-object v3, p0, Lr0/q0;->n:Lz9/d;

    invoke-static {v3, v1, v1, v0, v2}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    move-result-object v0

    iput-object v0, p0, Lr0/q0;->o:Lu9/j1;

    return-void
.end method

.method public final getKey()Ly8/g;
    .locals 0

    sget-object p0, Lu9/q;->l:Lu9/q;

    return-object p0
.end method

.method public final k(Ly8/g;)Ly8/h;
    .locals 0

    invoke-static {p0, p1}, Lc6/o;->V(Ly8/f;Ly8/g;)Ly8/h;

    move-result-object p0

    return-object p0
.end method

.method public final n(Ly8/g;)Ly8/f;
    .locals 0

    invoke-static {p0, p1}, Lc6/o;->O(Ly8/f;Ly8/g;)Ly8/f;

    move-result-object p0

    return-object p0
.end method

.method public final w(Ljava/lang/Throwable;Ly8/h;)V
    .locals 3

    sget-object v0, Le1/e;->m:Ld7/g;

    invoke-interface {p2, v0}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object v0

    check-cast v0, Le1/e;

    if-eqz v0, :cond_0

    new-instance v1, Lb0/n;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v0, p0}, Lb0/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1, v1}, Ll9/a;->F(Ljava/lang/Throwable;Li9/a;)Z

    :cond_0
    iget-object p0, p0, Lr0/q0;->l:Ly8/h;

    sget-object v0, Lu9/q;->l:Lu9/q;

    invoke-interface {p0, v0}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object p0

    check-cast p0, Lu9/r;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lu9/r;->w(Ljava/lang/Throwable;Ly8/h;)V

    return-void

    :cond_1
    throw p1
.end method

.method public final y(Ly8/h;)Ly8/h;
    .locals 0

    invoke-static {p0, p1}, Lc6/o;->X(Ly8/f;Ly8/h;)Ly8/h;

    move-result-object p0

    return-object p0
.end method
