.class public final Landroidx/lifecycle/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/t;
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final l:Ljava/lang/String;

.field public final m:Landroidx/lifecycle/q0;

.field public n:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/lifecycle/q0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/r0;->l:Ljava/lang/String;

    iput-object p2, p0, Landroidx/lifecycle/r0;->m:Landroidx/lifecycle/q0;

    return-void
.end method


# virtual methods
.method public final c(Landroidx/lifecycle/v;Landroidx/lifecycle/o;)V
    .locals 1

    sget-object v0, Landroidx/lifecycle/o;->ON_DESTROY:Landroidx/lifecycle/o;

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroidx/lifecycle/r0;->n:Z

    invoke-interface {p1}, Landroidx/lifecycle/v;->getLifecycle()Landroidx/lifecycle/q;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/q;->b(Landroidx/lifecycle/u;)V

    :cond_0
    return-void
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final k(Landroidx/lifecycle/q;Ln4/e;)V
    .locals 1

    const-string v0, "registry"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/lifecycle/r0;->n:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/r0;->n:Z

    invoke-virtual {p1, p0}, Landroidx/lifecycle/q;->a(Landroidx/lifecycle/u;)V

    iget-object p1, p0, Landroidx/lifecycle/r0;->m:Landroidx/lifecycle/q0;

    iget-object p1, p1, Landroidx/lifecycle/q0;->a:Landroidx/lifecycle/a1;

    iget-object p1, p1, Landroidx/lifecycle/a1;->p:Ljava/lang/Object;

    check-cast p1, Lb/h;

    iget-object p0, p0, Landroidx/lifecycle/r0;->l:Ljava/lang/String;

    invoke-virtual {p2, p0, p1}, Ln4/e;->c(Ljava/lang/String;Ln4/d;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already attached to lifecycleOwner"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
