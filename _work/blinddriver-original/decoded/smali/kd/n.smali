.class public final Lkd/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/v;
.implements Ln4/g;


# instance fields
.field public final l:Landroidx/lifecycle/x;

.field public final m:Ln4/f;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/lifecycle/x;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/x;-><init>(Landroidx/lifecycle/v;Z)V

    iput-object v0, p0, Lkd/n;->l:Landroidx/lifecycle/x;

    new-instance v1, Lp4/a;

    new-instance v2, Lad/t;

    const/16 v3, 0x19

    invoke-direct {v2, v3, p0}, Lad/t;-><init>(ILjava/lang/Object;)V

    invoke-direct {v1, p0, v2}, Lp4/a;-><init>(Ln4/g;Lad/t;)V

    new-instance v2, Ln4/f;

    invoke-direct {v2, v1}, Ln4/f;-><init>(Lp4/a;)V

    iput-object v2, p0, Lkd/n;->m:Ln4/f;

    invoke-virtual {v1}, Lp4/a;->a()V

    const/4 p0, 0x0

    invoke-virtual {v2, p0}, Ln4/f;->a(Landroid/os/Bundle;)V

    sget-object p0, Landroidx/lifecycle/p;->n:Landroidx/lifecycle/p;

    const-string v1, "setCurrentState"

    invoke-virtual {v0, v1}, Landroidx/lifecycle/x;->d(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroidx/lifecycle/x;->f(Landroidx/lifecycle/p;)V

    return-void
.end method


# virtual methods
.method public final getLifecycle()Landroidx/lifecycle/q;
    .locals 0

    iget-object p0, p0, Lkd/n;->l:Landroidx/lifecycle/x;

    return-object p0
.end method

.method public final getSavedStateRegistry()Ln4/e;
    .locals 0

    iget-object p0, p0, Lkd/n;->m:Ln4/f;

    iget-object p0, p0, Ln4/f;->b:Ln4/e;

    return-object p0
.end method
