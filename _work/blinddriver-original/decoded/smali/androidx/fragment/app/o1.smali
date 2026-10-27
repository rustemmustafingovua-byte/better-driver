.class public final Landroidx/fragment/app/o1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/k;
.implements Ln4/g;
.implements Landroidx/lifecycle/g1;


# instance fields
.field public final l:Landroidx/fragment/app/l0;

.field public final m:Landroidx/lifecycle/f1;

.field public final n:Landroidx/fragment/app/b0;

.field public o:Landroidx/lifecycle/c1;

.field public p:Landroidx/lifecycle/x;

.field public q:Ln4/f;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/l0;Landroidx/lifecycle/f1;Landroidx/fragment/app/b0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/o1;->p:Landroidx/lifecycle/x;

    iput-object v0, p0, Landroidx/fragment/app/o1;->q:Ln4/f;

    iput-object p1, p0, Landroidx/fragment/app/o1;->l:Landroidx/fragment/app/l0;

    iput-object p2, p0, Landroidx/fragment/app/o1;->m:Landroidx/lifecycle/f1;

    iput-object p3, p0, Landroidx/fragment/app/o1;->n:Landroidx/fragment/app/b0;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/o1;->p:Landroidx/lifecycle/x;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/x;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/x;-><init>(Landroidx/lifecycle/v;Z)V

    iput-object v0, p0, Landroidx/fragment/app/o1;->p:Landroidx/lifecycle/x;

    new-instance v0, Lp4/a;

    new-instance v1, Lad/t;

    const/16 v2, 0x19

    invoke-direct {v1, v2, p0}, Lad/t;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, p0, v1}, Lp4/a;-><init>(Ln4/g;Lad/t;)V

    new-instance v1, Ln4/f;

    invoke-direct {v1, v0}, Ln4/f;-><init>(Lp4/a;)V

    iput-object v1, p0, Landroidx/fragment/app/o1;->q:Ln4/f;

    invoke-virtual {v0}, Lp4/a;->a()V

    iget-object p0, p0, Landroidx/fragment/app/o1;->n:Landroidx/fragment/app/b0;

    invoke-virtual {p0}, Landroidx/fragment/app/b0;->run()V

    :cond_0
    return-void
.end method

.method public final getDefaultViewModelCreationExtras()Ld4/b;
    .locals 5

    iget-object v0, p0, Landroidx/fragment/app/o1;->l:Landroidx/fragment/app/l0;

    invoke-virtual {v0}, Landroidx/fragment/app/l0;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :goto_0
    instance-of v2, v1, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_1

    instance-of v2, v1, Landroid/app/Application;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/app/Application;

    goto :goto_1

    :cond_0
    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    new-instance v2, Ld4/c;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ld4/c;-><init>(I)V

    iget-object v3, v2, Ld4/b;->a:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_2

    sget-object v4, Landroidx/lifecycle/b1;->d:Ld7/g;

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object v1, Landroidx/lifecycle/t0;->a:Ld7/g;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Landroidx/lifecycle/t0;->b:Ld7/g;

    invoke-interface {v3, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroidx/fragment/app/l0;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_3

    sget-object p0, Landroidx/lifecycle/t0;->c:Ld7/g;

    invoke-virtual {v0}, Landroidx/fragment/app/l0;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {v3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v2
.end method

.method public final getDefaultViewModelProviderFactory()Landroidx/lifecycle/c1;
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/o1;->l:Landroidx/fragment/app/l0;

    invoke-virtual {v0}, Landroidx/fragment/app/l0;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/c1;

    move-result-object v1

    iget-object v2, v0, Landroidx/fragment/app/l0;->mDefaultFactory:Landroidx/lifecycle/c1;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v1, p0, Landroidx/fragment/app/o1;->o:Landroidx/lifecycle/c1;

    return-object v1

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/o1;->o:Landroidx/lifecycle/c1;

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/l0;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :goto_0
    instance-of v2, v1, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_2

    instance-of v2, v1, Landroid/app/Application;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/app/Application;

    goto :goto_1

    :cond_1
    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_1
    new-instance v2, Landroidx/lifecycle/w0;

    invoke-virtual {v0}, Landroidx/fragment/app/l0;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Landroidx/lifecycle/w0;-><init>(Landroid/app/Application;Ln4/g;Landroid/os/Bundle;)V

    iput-object v2, p0, Landroidx/fragment/app/o1;->o:Landroidx/lifecycle/c1;

    :cond_3
    iget-object p0, p0, Landroidx/fragment/app/o1;->o:Landroidx/lifecycle/c1;

    return-object p0
.end method

.method public final getLifecycle()Landroidx/lifecycle/q;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/o1;->b()V

    iget-object p0, p0, Landroidx/fragment/app/o1;->p:Landroidx/lifecycle/x;

    return-object p0
.end method

.method public final getSavedStateRegistry()Ln4/e;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/o1;->b()V

    iget-object p0, p0, Landroidx/fragment/app/o1;->q:Ln4/f;

    iget-object p0, p0, Ln4/f;->b:Ln4/e;

    return-object p0
.end method

.method public final getViewModelStore()Landroidx/lifecycle/f1;
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/o1;->b()V

    iget-object p0, p0, Landroidx/fragment/app/o1;->m:Landroidx/lifecycle/f1;

    return-object p0
.end method
