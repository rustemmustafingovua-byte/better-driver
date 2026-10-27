.class public final Lf2/g3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/t;
.implements Landroidx/lifecycle/t;


# instance fields
.field public final l:Lf2/y;

.field public final m:Lr0/x;

.field public n:Z

.field public o:Landroidx/lifecycle/q;

.field public p:Li9/e;


# direct methods
.method public constructor <init>(Lf2/y;Lr0/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf2/g3;->l:Lf2/y;

    iput-object p2, p0, Lf2/g3;->m:Lr0/x;

    sget-object p1, Lf2/j1;->a:Lz0/d;

    iput-object p1, p0, Lf2/g3;->p:Li9/e;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-boolean v0, p0, Lf2/g3;->n:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lf2/g3;->n:Z

    iget-object v0, p0, Lf2/g3;->l:Lf2/y;

    invoke-virtual {v0}, Lf2/y;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080096

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lf2/g3;->o:Landroidx/lifecycle/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/q;->b(Landroidx/lifecycle/u;)V

    :cond_0
    iget-object p0, p0, Lf2/g3;->m:Lr0/x;

    invoke-virtual {p0}, Lr0/x;->m()V

    return-void
.end method

.method public final c(Landroidx/lifecycle/v;Landroidx/lifecycle/o;)V
    .locals 0

    sget-object p1, Landroidx/lifecycle/o;->ON_DESTROY:Landroidx/lifecycle/o;

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lf2/g3;->a()V

    return-void

    :cond_0
    sget-object p1, Landroidx/lifecycle/o;->ON_CREATE:Landroidx/lifecycle/o;

    if-ne p2, p1, :cond_1

    iget-boolean p1, p0, Lf2/g3;->n:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lf2/g3;->p:Li9/e;

    invoke-virtual {p0, p1}, Lf2/g3;->f(Li9/e;)V

    :cond_1
    return-void
.end method

.method public final f(Li9/e;)V
    .locals 2

    new-instance v0, Lc5/f;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0, p1}, Lc5/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lf2/g3;->l:Lf2/y;

    invoke-virtual {p0, v0}, Lf2/y;->setOnViewTreeOwnersAvailable(Li9/c;)V

    return-void
.end method
