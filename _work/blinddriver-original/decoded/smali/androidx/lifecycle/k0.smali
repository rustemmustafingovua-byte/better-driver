.class public final Landroidx/lifecycle/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/t;


# instance fields
.field public final synthetic l:Landroidx/lifecycle/o;

.field public final synthetic m:Lj9/y;

.field public final synthetic n:Lu9/t;

.field public final synthetic o:Landroidx/lifecycle/o;

.field public final synthetic p:Lu9/g;

.field public final synthetic q:Lca/c;

.field public final synthetic r:Lb4/b;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/o;Lj9/y;Lu9/t;Landroidx/lifecycle/o;Lu9/g;Lca/c;Lb4/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/k0;->l:Landroidx/lifecycle/o;

    iput-object p2, p0, Landroidx/lifecycle/k0;->m:Lj9/y;

    iput-object p3, p0, Landroidx/lifecycle/k0;->n:Lu9/t;

    iput-object p4, p0, Landroidx/lifecycle/k0;->o:Landroidx/lifecycle/o;

    iput-object p5, p0, Landroidx/lifecycle/k0;->p:Lu9/g;

    iput-object p6, p0, Landroidx/lifecycle/k0;->q:Lca/c;

    iput-object p7, p0, Landroidx/lifecycle/k0;->r:Lb4/b;

    return-void
.end method


# virtual methods
.method public final c(Landroidx/lifecycle/v;Landroidx/lifecycle/o;)V
    .locals 3

    iget-object p1, p0, Landroidx/lifecycle/k0;->l:Landroidx/lifecycle/o;

    iget-object v0, p0, Landroidx/lifecycle/k0;->m:Lj9/y;

    const/4 v1, 0x0

    if-ne p2, p1, :cond_0

    new-instance p1, Landroidx/lifecycle/j0;

    iget-object p2, p0, Landroidx/lifecycle/k0;->q:Lca/c;

    iget-object v2, p0, Landroidx/lifecycle/k0;->r:Lb4/b;

    invoke-direct {p1, p2, v2, v1}, Landroidx/lifecycle/j0;-><init>(Lca/c;Lb4/b;Ly8/c;)V

    const/4 p2, 0x3

    iget-object p0, p0, Landroidx/lifecycle/k0;->n:Lu9/t;

    invoke-static {p0, v1, v1, p1, p2}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    move-result-object p0

    iput-object p0, v0, Lj9/y;->m:Ljava/lang/Object;

    return-void

    :cond_0
    iget-object p1, p0, Landroidx/lifecycle/k0;->o:Landroidx/lifecycle/o;

    if-ne p2, p1, :cond_2

    iget-object p1, v0, Lj9/y;->m:Ljava/lang/Object;

    check-cast p1, Lu9/v0;

    if-eqz p1, :cond_1

    invoke-interface {p1, v1}, Lu9/v0;->c(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    iput-object v1, v0, Lj9/y;->m:Ljava/lang/Object;

    :cond_2
    sget-object p1, Landroidx/lifecycle/o;->ON_DESTROY:Landroidx/lifecycle/o;

    if-ne p2, p1, :cond_3

    iget-object p0, p0, Landroidx/lifecycle/k0;->p:Lu9/g;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lu9/g;->resumeWith(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method
