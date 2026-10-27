.class public final synthetic Landroidx/fragment/app/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/fragment/app/b0;->l:I

    iput-object p2, p0, Landroidx/fragment/app/b0;->m:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Landroidx/fragment/app/b0;->l:I

    iget-object p0, p0, Landroidx/fragment/app/b0;->m:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/fragment/app/w0;

    iget-object p0, p0, Landroidx/fragment/app/w0;->j:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :pswitch_0
    check-cast p0, Landroidx/fragment/app/r;

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    const-string v1, "Transition for all operations has completed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroidx/fragment/app/s;

    iget-object v3, v3, Landroidx/fragment/app/m;->a:Landroidx/fragment/app/s1;

    invoke-virtual {v3, p0}, Landroidx/fragment/app/s1;->c(Landroidx/fragment/app/r1;)V

    goto :goto_0

    :cond_2
    return-void

    :pswitch_1
    check-cast p0, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-static {v0, p0}, Landroidx/fragment/app/g1;->a(ILjava/util/ArrayList;)V

    return-void

    :pswitch_2
    check-cast p0, Lj9/y;

    const-string v0, "$seekCancelLambda"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lj9/y;->m:Ljava/lang/Object;

    check-cast p0, Li9/a;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    :cond_3
    return-void

    :pswitch_3
    check-cast p0, Landroidx/fragment/app/l0;

    iget-object v0, p0, Landroidx/fragment/app/l0;->mViewLifecycleOwner:Landroidx/fragment/app/o1;

    iget-object v1, p0, Landroidx/fragment/app/l0;->mSavedViewRegistryState:Landroid/os/Bundle;

    iget-object v0, v0, Landroidx/fragment/app/o1;->q:Ln4/f;

    invoke-virtual {v0, v1}, Ln4/f;->a(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/l0;->mSavedViewRegistryState:Landroid/os/Bundle;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
