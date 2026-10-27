.class public final synthetic Landroidx/fragment/app/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/n1;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .line 2
    const/4 p1, 0x0

    iput p1, p0, Landroidx/fragment/app/o;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/fragment/app/o;->m:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/fragment/app/o;->n:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/fragment/app/r;Landroid/view/ViewGroup;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Landroidx/fragment/app/o;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/o;->m:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/fragment/app/o;->n:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Landroidx/fragment/app/o;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/fragment/app/o;->m:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/r;

    iget-object p0, p0, Landroidx/fragment/app/o;->n:Ljava/lang/Object;

    check-cast p0, Landroid/view/ViewGroup;

    const-string v1, "$container"

    invoke-static {p0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/fragment/app/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroidx/fragment/app/s;

    iget-object v3, v3, Landroidx/fragment/app/m;->a:Landroidx/fragment/app/s1;

    iget-object v4, v3, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/l0;

    invoke-virtual {v4}, Landroidx/fragment/app/l0;->getView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    iget v3, v3, Landroidx/fragment/app/s1;->a:I

    invoke-static {v3, v4, p0}, Landroidx/fragment/app/t1;->a(ILandroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_1
    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/fragment/app/o;->m:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iget-object p0, p0, Landroidx/fragment/app/o;->n:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Rect;

    invoke-static {v0, p0}, Landroidx/fragment/app/n1;->j(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
