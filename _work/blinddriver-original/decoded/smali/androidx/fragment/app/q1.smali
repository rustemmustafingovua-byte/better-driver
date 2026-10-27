.class public final synthetic Landroidx/fragment/app/q1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Landroidx/fragment/app/u;

.field public final synthetic n:Landroidx/fragment/app/s1;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/u;Landroidx/fragment/app/s1;I)V
    .locals 0

    iput p3, p0, Landroidx/fragment/app/q1;->l:I

    iput-object p1, p0, Landroidx/fragment/app/q1;->m:Landroidx/fragment/app/u;

    iput-object p2, p0, Landroidx/fragment/app/q1;->n:Landroidx/fragment/app/s1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroidx/fragment/app/q1;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/fragment/app/q1;->m:Landroidx/fragment/app/u;

    iget-object v1, v0, Landroidx/fragment/app/u;->b:Ljava/util/ArrayList;

    iget-object p0, p0, Landroidx/fragment/app/q1;->n:Landroidx/fragment/app/s1;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, v0, Landroidx/fragment/app/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_0
    const-string v0, "this$0"

    iget-object v1, p0, Landroidx/fragment/app/q1;->m:Landroidx/fragment/app/u;

    invoke-static {v1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$operation"

    iget-object p0, p0, Landroidx/fragment/app/q1;->n:Landroidx/fragment/app/s1;

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Landroidx/fragment/app/u;->a(Landroidx/fragment/app/s1;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Landroidx/fragment/app/q1;->m:Landroidx/fragment/app/u;

    iget-object v1, v0, Landroidx/fragment/app/u;->b:Ljava/util/ArrayList;

    iget-object p0, p0, Landroidx/fragment/app/q1;->n:Landroidx/fragment/app/s1;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroidx/fragment/app/s1;->a:I

    iget-object p0, p0, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/l0;

    iget-object p0, p0, Landroidx/fragment/app/l0;->mView:Landroid/view/View;

    const-string v2, "operation.fragment.mView"

    invoke-static {p0, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/fragment/app/u;->a:Landroid/view/ViewGroup;

    invoke-static {v1, p0, v0}, Landroidx/fragment/app/t1;->a(ILandroid/view/View;Landroid/view/ViewGroup;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
