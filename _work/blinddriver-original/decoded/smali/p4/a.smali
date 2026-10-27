.class public final Lp4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ln4/g;

.field public final b:Lad/t;

.field public final c:Lmb/q;

.field public final d:Ljava/util/LinkedHashMap;

.field public e:Z

.field public f:Landroid/os/Bundle;

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>(Ln4/g;Lad/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp4/a;->a:Ln4/g;

    iput-object p2, p0, Lp4/a;->b:Lad/t;

    new-instance p1, Lmb/q;

    const/4 p2, 0x7

    invoke-direct {p1, p2}, Lmb/q;-><init>(I)V

    iput-object p1, p0, Lp4/a;->c:Lmb/q;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lp4/a;->d:Ljava/util/LinkedHashMap;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lp4/a;->h:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lp4/a;->a:Ln4/g;

    invoke-interface {v0}, Landroidx/lifecycle/v;->getLifecycle()Landroidx/lifecycle/q;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/x;

    iget-object v1, v1, Landroidx/lifecycle/x;->c:Landroidx/lifecycle/p;

    sget-object v2, Landroidx/lifecycle/p;->m:Landroidx/lifecycle/p;

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lp4/a;->e:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lp4/a;->b:Lad/t;

    invoke-virtual {v1}, Lad/t;->invoke()Ljava/lang/Object;

    invoke-interface {v0}, Landroidx/lifecycle/v;->getLifecycle()Landroidx/lifecycle/q;

    move-result-object v0

    new-instance v1, Lod/r1;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lod/r1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/q;->a(Landroidx/lifecycle/u;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lp4/a;->e:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "SavedStateRegistry was already attached."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Restarter must be created only during owner\'s initialization stage"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
