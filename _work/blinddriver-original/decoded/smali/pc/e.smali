.class public final Lpc/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnc/b;


# instance fields
.field public final l:Ljava/lang/String;

.field public volatile m:Lnc/b;

.field public n:Ljava/lang/Boolean;

.field public o:Ljava/lang/reflect/Method;

.field public p:Le6/o;

.field public final q:Ljava/util/Queue;

.field public final r:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/LinkedBlockingQueue;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpc/e;->l:Ljava/lang/String;

    iput-object p2, p0, Lpc/e;->q:Ljava/util/Queue;

    iput-boolean p3, p0, Lpc/e;->r:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lpc/e;->g()Lnc/b;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lnc/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    invoke-virtual {p0}, Lpc/e;->g()Lnc/b;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lnc/b;->b(Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method

.method public final c()Z
    .locals 0

    invoke-virtual {p0}, Lpc/e;->g()Lnc/b;

    move-result-object p0

    invoke-interface {p0}, Lnc/b;->c()Z

    move-result p0

    return p0
.end method

.method public final d()Z
    .locals 0

    invoke-virtual {p0}, Lpc/e;->g()Lnc/b;

    move-result-object p0

    invoke-interface {p0}, Lnc/b;->d()Z

    move-result p0

    return p0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lpc/e;->g()Lnc/b;

    move-result-object p0

    invoke-interface {p0, p1}, Lnc/b;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const-class v2, Lpc/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lpc/e;

    iget-object p0, p0, Lpc/e;->l:Ljava/lang/String;

    iget-object p1, p1, Lpc/e;->l:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public final f()Z
    .locals 0

    invoke-virtual {p0}, Lpc/e;->g()Lnc/b;

    move-result-object p0

    invoke-interface {p0}, Lnc/b;->f()Z

    move-result p0

    return p0
.end method

.method public final g()Lnc/b;
    .locals 3

    iget-object v0, p0, Lpc/e;->m:Lnc/b;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lpc/e;->m:Lnc/b;

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lpc/e;->r:Z

    if-eqz v0, :cond_1

    sget-object p0, Lpc/b;->l:Lpc/b;

    return-object p0

    :cond_1
    iget-object v0, p0, Lpc/e;->p:Le6/o;

    if-nez v0, :cond_2

    new-instance v0, Le6/o;

    iget-object v1, p0, Lpc/e;->q:Ljava/util/Queue;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Le6/o;->m:Ljava/lang/Object;

    iget-object v2, p0, Lpc/e;->l:Ljava/lang/String;

    iput-object v2, v0, Le6/o;->l:Ljava/io/Serializable;

    iput-object v1, v0, Le6/o;->n:Ljava/lang/Object;

    iput-object v0, p0, Lpc/e;->p:Le6/o;

    :cond_2
    iget-object p0, p0, Lpc/e;->p:Le6/o;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lpc/e;->l:Ljava/lang/String;

    return-object p0
.end method

.method public final h()Z
    .locals 0

    invoke-virtual {p0}, Lpc/e;->g()Lnc/b;

    move-result-object p0

    invoke-interface {p0}, Lnc/b;->h()Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lpc/e;->l:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final i(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lpc/e;->g()Lnc/b;

    move-result-object p0

    invoke-interface {p0, p1}, Lnc/b;->i(Ljava/lang/String;)V

    return-void
.end method

.method public final j()Z
    .locals 0

    invoke-virtual {p0}, Lpc/e;->g()Lnc/b;

    move-result-object p0

    invoke-interface {p0}, Lnc/b;->j()Z

    move-result p0

    return p0
.end method

.method public final k(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lpc/e;->g()Lnc/b;

    move-result-object p0

    invoke-interface {p0, p1}, Lnc/b;->k(Ljava/lang/String;)V

    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lpc/e;->g()Lnc/b;

    move-result-object p0

    invoke-interface {p0, p1}, Lnc/b;->l(Ljava/lang/String;)V

    return-void
.end method

.method public final varargs m(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Lpc/e;->g()Lnc/b;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lnc/b;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final n(I)Z
    .locals 0

    invoke-virtual {p0}, Lpc/e;->g()Lnc/b;

    move-result-object p0

    invoke-interface {p0, p1}, Lnc/b;->n(I)Z

    move-result p0

    return p0
.end method

.method public final varargs o(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Lpc/e;->g()Lnc/b;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lnc/b;->o(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final p(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Lpc/e;->g()Lnc/b;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lnc/b;->p(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final varargs q([Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Lpc/e;->g()Lnc/b;

    move-result-object p0

    invoke-interface {p0, p1}, Lnc/b;->q([Ljava/lang/Object;)V

    return-void
.end method

.method public final r(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p0}, Lpc/e;->g()Lnc/b;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lnc/b;->r(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public final s(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Lpc/e;->g()Lnc/b;

    move-result-object p0

    invoke-interface {p0, p1}, Lnc/b;->s(Ljava/lang/Object;)V

    return-void
.end method

.method public final t()Z
    .locals 3

    iget-object v0, p0, Lpc/e;->n:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lpc/e;->m:Lnc/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "log"

    const-class v2, Loc/a;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lpc/e;->o:Ljava/lang/reflect/Method;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lpc/e;->n:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lpc/e;->n:Ljava/lang/Boolean;

    :goto_0
    iget-object p0, p0, Lpc/e;->n:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
