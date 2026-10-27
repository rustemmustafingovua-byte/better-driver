.class public final Landroidx/fragment/app/p;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Landroidx/fragment/app/r;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/r;Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/fragment/app/p;->l:I

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/p;->m:Landroidx/fragment/app/r;

    iput-object p2, p0, Landroidx/fragment/app/p;->o:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroidx/fragment/app/p;->n:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/r;Ljava/lang/Object;Landroid/view/ViewGroup;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/fragment/app/p;->l:I

    .line 2
    iput-object p1, p0, Landroidx/fragment/app/p;->m:Landroidx/fragment/app/r;

    iput-object p2, p0, Landroidx/fragment/app/p;->n:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/fragment/app/p;->o:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9

    iget v0, p0, Landroidx/fragment/app/p;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/fragment/app/p;->m:Landroidx/fragment/app/r;

    iget-object v1, v0, Landroidx/fragment/app/r;->c:Ljava/util/ArrayList;

    iget-object v2, v0, Landroidx/fragment/app/r;->f:Landroidx/fragment/app/n1;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const-string v4, "FragmentManager"

    const/4 v5, 0x2

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v6, 0x0

    move v7, v6

    :cond_1
    if-ge v7, v3, :cond_3

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Landroidx/fragment/app/s;

    iget-object v8, v8, Landroidx/fragment/app/m;->a:Landroidx/fragment/app/s1;

    iget-boolean v8, v8, Landroidx/fragment/app/s1;->g:Z

    if-nez v8, :cond_1

    invoke-static {v5}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Completing animating immediately"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v3, Lf8/i3;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/s;

    iget-object v1, v1, Landroidx/fragment/app/m;->a:Landroidx/fragment/app/s1;

    iget-object v1, v1, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/l0;

    new-instance v4, Landroidx/fragment/app/b0;

    const/4 v5, 0x3

    invoke-direct {v4, v5, v0}, Landroidx/fragment/app/b0;-><init>(ILjava/lang/Object;)V

    iget-object p0, p0, Landroidx/fragment/app/p;->n:Ljava/lang/Object;

    invoke-virtual {v2, v1, p0, v3, v4}, Landroidx/fragment/app/n1;->u(Landroidx/fragment/app/l0;Ljava/lang/Object;Lf8/i3;Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Lf8/i3;->a()V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-static {v5}, Landroidx/fragment/app/w0;->l(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Animating to start"

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, v0, Landroidx/fragment/app/r;->q:Ljava/lang/Object;

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    new-instance v3, Landroidx/fragment/app/o;

    iget-object p0, p0, Landroidx/fragment/app/p;->o:Landroid/view/ViewGroup;

    invoke-direct {v3, v0, p0}, Landroidx/fragment/app/o;-><init>(Landroidx/fragment/app/r;Landroid/view/ViewGroup;)V

    invoke-virtual {v2, v1, v3}, Landroidx/fragment/app/n1;->d(Ljava/lang/Object;Landroidx/fragment/app/o;)V

    :goto_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Landroidx/fragment/app/p;->m:Landroidx/fragment/app/r;

    iget-object v0, v0, Landroidx/fragment/app/r;->f:Landroidx/fragment/app/n1;

    iget-object v1, p0, Landroidx/fragment/app/p;->o:Landroid/view/ViewGroup;

    iget-object p0, p0, Landroidx/fragment/app/p;->n:Ljava/lang/Object;

    invoke-virtual {v0, v1, p0}, Landroidx/fragment/app/n1;->e(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
