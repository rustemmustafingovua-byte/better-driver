.class public final Lc1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/x1;


# instance fields
.field public l:Lc1/j;

.field public m:Lc1/f;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/Object;

.field public p:[Ljava/lang/Object;

.field public q:Lc1/e;

.field public final r:Lad/t;


# direct methods
.method public constructor <init>(Lc1/j;Lc1/f;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc1/b;->l:Lc1/j;

    iput-object p2, p0, Lc1/b;->m:Lc1/f;

    iput-object p3, p0, Lc1/b;->n:Ljava/lang/String;

    iput-object p4, p0, Lc1/b;->o:Ljava/lang/Object;

    iput-object p5, p0, Lc1/b;->p:[Ljava/lang/Object;

    new-instance p1, Lad/t;

    const/16 p2, 0x8

    invoke-direct {p1, p2, p0}, Lad/t;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lc1/b;->r:Lad/t;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lc1/b;->q:Lc1/e;

    if-eqz p0, :cond_0

    check-cast p0, Lg5/m;

    invoke-virtual {p0}, Lg5/m;->x()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lc1/b;->m:Lc1/f;

    iget-object v1, p0, Lc1/b;->q:Lc1/e;

    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    iget-object v1, p0, Lc1/b;->r:Lad/t;

    invoke-virtual {v1}, Lad/t;->invoke()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v0, v2}, Lc1/f;->b(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance p0, Ljava/lang/IllegalArgumentException;

    instance-of v0, v2, Ld1/r;

    if-eqz v0, :cond_1

    check-cast v2, Ld1/r;

    invoke-interface {v2}, Ld1/r;->c()Lr0/m2;

    move-result-object v0

    sget-object v1, Lr0/e;->o:Lr0/e;

    if-eq v0, v1, :cond_0

    invoke-interface {v2}, Ld1/r;->c()Lr0/m2;

    move-result-object v0

    sget-object v1, Lr0/e;->r:Lr0/e;

    if-eq v0, v1, :cond_0

    invoke-interface {v2}, Ld1/r;->c()Lr0/m2;

    move-result-object v0

    sget-object v1, Lr0/e;->p:Lr0/e;

    if-eq v0, v1, :cond_0

    const-string v0, "If you use a custom SnapshotMutationPolicy for your MutableState you have to write a custom Saver"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MutableState containing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cannot be saved using the current SaveableStateRegistry. The default implementation only supports types which can be stored inside the Bundle. Please consider implementing a custom Saver for this class and pass it as a stateSaver parameter to rememberSaveable()."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lc1/k;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object v2, p0, Lc1/b;->n:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lc1/f;->e(Ljava/lang/String;Li9/a;)Lc1/e;

    move-result-object v0

    iput-object v0, p0, Lc1/b;->q:Lc1/e;

    :cond_3
    return-void

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "entry("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lc1/b;->q:Lc1/e;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ") is not null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f()V
    .locals 0

    iget-object p0, p0, Lc1/b;->q:Lc1/e;

    if-eqz p0, :cond_0

    check-cast p0, Lg5/m;

    invoke-virtual {p0}, Lg5/m;->x()V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 0

    invoke-virtual {p0}, Lc1/b;->b()V

    return-void
.end method
