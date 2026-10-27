.class public final Lc1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc1/f;
.implements Ln4/g;


# instance fields
.field public final synthetic l:Lc1/g;

.field public m:Landroidx/lifecycle/x;

.field public n:Ln4/f;


# direct methods
.method public constructor <init>(Lc1/g;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc1/i;->l:Lc1/g;

    const-string v0, "androidx.savedstate.SavedStateRegistry"

    invoke-virtual {p1, v0}, Lc1/g;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/os/Bundle;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lc1/i;->n:Ln4/f;

    if-nez v2, :cond_1

    new-instance v2, Lp4/a;

    new-instance v3, Lad/t;

    const/16 v4, 0x19

    invoke-direct {v3, v4, p0}, Lad/t;-><init>(ILjava/lang/Object;)V

    invoke-direct {v2, p0, v3}, Lp4/a;-><init>(Ln4/g;Lad/t;)V

    new-instance v3, Ln4/f;

    invoke-direct {v3, v2}, Ln4/f;-><init>(Lp4/a;)V

    iput-object v3, p0, Lc1/i;->n:Ln4/f;

    invoke-virtual {v3, v1}, Ln4/f;->a(Landroid/os/Bundle;)V

    :cond_1
    new-instance v1, Lad/t;

    const/16 v2, 0x9

    invoke-direct {v1, v2, p0}, Lad/t;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lc1/g;->e(Ljava/lang/String;Li9/a;)Lc1/e;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lc1/i;->l:Lc1/g;

    invoke-virtual {p0, p1}, Lc1/g;->b(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final c()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lc1/i;->l:Lc1/g;

    invoke-virtual {p0}, Lc1/g;->c()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lc1/i;->l:Lc1/g;

    invoke-virtual {p0, p1}, Lc1/g;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final e(Ljava/lang/String;Li9/a;)Lc1/e;
    .locals 0

    iget-object p0, p0, Lc1/i;->l:Lc1/g;

    invoke-virtual {p0, p1, p2}, Lc1/g;->e(Ljava/lang/String;Li9/a;)Lc1/e;

    move-result-object p0

    return-object p0
.end method

.method public final getLifecycle()Landroidx/lifecycle/q;
    .locals 2

    iget-object v0, p0, Lc1/i;->m:Landroidx/lifecycle/x;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/x;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/x;-><init>(Landroidx/lifecycle/v;Z)V

    iput-object v0, p0, Lc1/i;->m:Landroidx/lifecycle/x;

    :cond_0
    return-object v0
.end method

.method public final getSavedStateRegistry()Ln4/e;
    .locals 3

    iget-object v0, p0, Lc1/i;->n:Ln4/f;

    if-nez v0, :cond_0

    new-instance v0, Lp4/a;

    new-instance v1, Lad/t;

    const/16 v2, 0x19

    invoke-direct {v1, v2, p0}, Lad/t;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, p0, v1}, Lp4/a;-><init>(Ln4/g;Lad/t;)V

    new-instance v1, Ln4/f;

    invoke-direct {v1, v0}, Ln4/f;-><init>(Lp4/a;)V

    iput-object v1, p0, Lc1/i;->n:Ln4/f;

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Ln4/f;->a(Landroid/os/Bundle;)V

    move-object v0, v1

    :cond_0
    iget-object p0, v0, Ln4/f;->b:Ln4/e;

    return-object p0
.end method
