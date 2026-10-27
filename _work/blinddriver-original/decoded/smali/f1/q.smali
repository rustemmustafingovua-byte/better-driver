.class public abstract Lf1/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le2/j;


# instance fields
.field public l:Lf1/q;

.field public m:Lz9/d;

.field public n:I

.field public o:I

.field public p:Lf1/q;

.field public q:Lf1/q;

.field public r:Le2/m1;

.field public s:Le2/h1;

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Ld5/a;

.field public y:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lf1/q;->l:Lf1/q;

    const/4 v0, -0x1

    iput v0, p0, Lf1/q;->o:I

    return-void
.end method


# virtual methods
.method public final A0()Lu9/t;
    .locals 3

    iget-object v0, p0, Lf1/q;->m:Lz9/d;

    if-nez v0, :cond_0

    invoke-static {p0}, Le2/l;->w(Le2/j;)Le2/q1;

    move-result-object v0

    check-cast v0, Lf2/y;

    invoke-virtual {v0}, Lf2/y;->getCoroutineContext()Ly8/h;

    move-result-object v0

    invoke-static {p0}, Le2/l;->w(Le2/j;)Le2/q1;

    move-result-object v1

    check-cast v1, Lf2/y;

    invoke-virtual {v1}, Lf2/y;->getCoroutineContext()Ly8/h;

    move-result-object v1

    sget-object v2, Lu9/q;->m:Lu9/q;

    invoke-interface {v1, v2}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object v1

    check-cast v1, Lu9/v0;

    new-instance v2, Lu9/x0;

    invoke-direct {v2, v1}, Lu9/x0;-><init>(Lu9/v0;)V

    invoke-interface {v0, v2}, Ly8/h;->y(Ly8/h;)Ly8/h;

    move-result-object v0

    invoke-static {v0}, Lu9/v;->a(Ly8/h;)Lz9/d;

    move-result-object v0

    iput-object v0, p0, Lf1/q;->m:Lz9/d;

    :cond_0
    return-object v0
.end method

.method public B0()Z
    .locals 0

    instance-of p0, p0, Lp/p;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public C0()V
    .locals 1

    iget-boolean v0, p0, Lf1/q;->y:Z

    if-eqz v0, :cond_0

    const-string v0, "node attached multiple times"

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lf1/q;->s:Le2/h1;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "attach invoked on a node without a coordinator"

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf1/q;->y:Z

    iput-boolean v0, p0, Lf1/q;->v:Z

    return-void
.end method

.method public D0()V
    .locals 4

    iget-boolean v0, p0, Lf1/q;->y:Z

    if-nez v0, :cond_0

    const-string v0, "Cannot detach a node that is not attached"

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lf1/q;->v:Z

    if-eqz v0, :cond_1

    const-string v0, "Must run runAttachLifecycle() before markAsDetached()"

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lf1/q;->w:Z

    if-eqz v0, :cond_2

    const-string v0, "Must run runDetachLifecycle() before markAsDetached()"

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lf1/q;->y:Z

    iget-object v0, p0, Lf1/q;->m:Lz9/d;

    if-eqz v0, :cond_3

    new-instance v1, Lf1/s;

    const-string v2, "The Modifier.Node was detached"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lb2/b;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v1}, Lu9/v;->e(Lu9/t;Lf1/s;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lf1/q;->m:Lz9/d;

    :cond_3
    return-void
.end method

.method public E0()V
    .locals 0

    return-void
.end method

.method public F0()V
    .locals 0

    return-void
.end method

.method public G0()V
    .locals 0

    return-void
.end method

.method public H0()V
    .locals 1

    iget-boolean v0, p0, Lf1/q;->y:Z

    if-nez v0, :cond_0

    const-string v0, "reset() called on an unattached node"

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lf1/q;->G0()V

    return-void
.end method

.method public I0()V
    .locals 1

    iget-boolean v0, p0, Lf1/q;->y:Z

    if-nez v0, :cond_0

    const-string v0, "Must run markAsAttached() prior to runAttachLifecycle"

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lf1/q;->v:Z

    if-nez v0, :cond_1

    const-string v0, "Must run runAttachLifecycle() only once after markAsAttached()"

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lf1/q;->v:Z

    invoke-virtual {p0}, Lf1/q;->E0()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf1/q;->w:Z

    return-void
.end method

.method public J0()V
    .locals 1

    iget-boolean v0, p0, Lf1/q;->y:Z

    if-nez v0, :cond_0

    const-string v0, "node detached multiple times"

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lf1/q;->s:Le2/h1;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "detach invoked on a node without a coordinator"

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :goto_0
    iget-boolean v0, p0, Lf1/q;->w:Z

    if-nez v0, :cond_2

    const-string v0, "Must run runDetachLifecycle() once after runAttachLifecycle() and before markAsDetached()"

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lf1/q;->w:Z

    iget-object v0, p0, Lf1/q;->x:Ld5/a;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ld5/a;->invoke()Ljava/lang/Object;

    :cond_3
    invoke-virtual {p0}, Lf1/q;->F0()V

    return-void
.end method

.method public K0(Lf1/q;)V
    .locals 0

    iput-object p1, p0, Lf1/q;->l:Lf1/q;

    return-void
.end method

.method public L0(Le2/h1;)V
    .locals 0

    iput-object p1, p0, Lf1/q;->s:Le2/h1;

    return-void
.end method
