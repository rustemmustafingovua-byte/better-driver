.class public final Landroidx/fragment/app/d0;
.super Landroidx/fragment/app/j0;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/fragment/app/l0;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/l0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/d0;->a:Landroidx/fragment/app/l0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object p0, p0, Landroidx/fragment/app/d0;->a:Landroidx/fragment/app/l0;

    iget-object v0, p0, Landroidx/fragment/app/l0;->mSavedStateRegistryController:Ln4/f;

    iget-object v0, v0, Ln4/f;->a:Lp4/a;

    invoke-virtual {v0}, Lp4/a;->a()V

    invoke-static {p0}, Landroidx/lifecycle/t0;->d(Ln4/g;)V

    iget-object v0, p0, Landroidx/fragment/app/l0;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "registryState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Landroidx/fragment/app/l0;->mSavedStateRegistryController:Ln4/f;

    invoke-virtual {p0, v0}, Ln4/f;->a(Landroid/os/Bundle;)V

    return-void
.end method
