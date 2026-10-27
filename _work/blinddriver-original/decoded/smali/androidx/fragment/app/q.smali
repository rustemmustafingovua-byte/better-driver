.class public final Landroidx/fragment/app/q;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/Serializable;I)V
    .locals 0

    iput p5, p0, Landroidx/fragment/app/q;->l:I

    iput-object p1, p0, Landroidx/fragment/app/q;->m:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/fragment/app/q;->n:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/fragment/app/q;->o:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/fragment/app/q;->p:Ljava/io/Serializable;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget v0, p0, Landroidx/fragment/app/q;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/fragment/app/q;->m:Ljava/lang/Object;

    check-cast v0, Lf3/v;

    iget-object v1, p0, Landroidx/fragment/app/q;->n:Ljava/lang/Object;

    check-cast v1, Li9/a;

    iget-object v2, p0, Landroidx/fragment/app/q;->o:Ljava/lang/Object;

    check-cast v2, Lf3/u;

    iget-object p0, p0, Landroidx/fragment/app/q;->p:Ljava/io/Serializable;

    check-cast p0, Lb3/m;

    invoke-virtual {v0, v1, v2, p0}, Lf3/v;->f(Li9/a;Lf3/u;Lb3/m;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Landroidx/fragment/app/q;->n:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/fragment/app/q;->m:Ljava/lang/Object;

    check-cast v1, Landroidx/fragment/app/r;

    const/4 v2, 0x2

    invoke-static {v2}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v3

    const-string v4, "FragmentManager"

    if-eqz v3, :cond_0

    const-string v3, "Attempting to create TransitionSeekController"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, v1, Landroidx/fragment/app/r;->f:Landroidx/fragment/app/n1;

    iget-object v5, p0, Landroidx/fragment/app/q;->o:Ljava/lang/Object;

    invoke-virtual {v3, v0, v5}, Landroidx/fragment/app/n1;->i(Landroid/view/ViewGroup;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v1, Landroidx/fragment/app/r;->q:Ljava/lang/Object;

    if-nez v3, :cond_2

    invoke-static {v2}, Landroidx/fragment/app/w0;->l(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "TransitionSeekController was not created."

    invoke-static {v4, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x1

    iput-boolean p0, v1, Landroidx/fragment/app/r;->r:Z

    goto :goto_0

    :cond_2
    iget-object p0, p0, Landroidx/fragment/app/q;->p:Ljava/io/Serializable;

    check-cast p0, Lj9/y;

    new-instance v3, Landroidx/fragment/app/p;

    invoke-direct {v3, v1, v5, v0}, Landroidx/fragment/app/p;-><init>(Landroidx/fragment/app/r;Ljava/lang/Object;Landroid/view/ViewGroup;)V

    iput-object v3, p0, Lj9/y;->m:Ljava/lang/Object;

    invoke-static {v2}, Landroidx/fragment/app/w0;->l(I)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Started executing operations from "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Landroidx/fragment/app/r;->d:Landroidx/fragment/app/s1;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Landroidx/fragment/app/r;->e:Landroidx/fragment/app/s1;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
