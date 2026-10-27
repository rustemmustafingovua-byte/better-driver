.class public final Le3/j;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Le3/z;


# direct methods
.method public synthetic constructor <init>(Le3/z;I)V
    .locals 0

    iput p2, p0, Le3/j;->l:I

    iput-object p1, p0, Le3/j;->m:Le3/z;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Le3/j;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Le3/j;->m:Le3/z;

    iget-object v0, p0, Le3/z;->L:Landroid/view/View;

    invoke-virtual {p0}, Le3/z;->getUpdateBlock()Li9/c;

    move-result-object p0

    invoke-interface {p0, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Le3/j;->m:Le3/z;

    iget-object v0, p0, Le3/z;->L:Landroid/view/View;

    invoke-virtual {p0}, Le3/z;->getResetBlock()Li9/c;

    move-result-object p0

    invoke-interface {p0, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Le3/j;->m:Le3/z;

    iget-object v0, p0, Le3/z;->L:Landroid/view/View;

    invoke-virtual {p0}, Le3/z;->getReleaseBlock()Li9/c;

    move-result-object v1

    invoke-interface {v1, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Le3/z;->h(Le3/z;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object p0, p0, Le3/j;->m:Le3/z;

    iget-object p0, p0, Le3/z;->L:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    return-object v0

    :pswitch_3
    iget-object p0, p0, Le3/j;->m:Le3/z;

    iget-boolean v0, p0, Le3/k;->p:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le3/k;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-static {p0}, Le3/k;->d(Le3/z;)Le2/s1;

    move-result-object v0

    sget-object v1, Le3/c;->m:Le3/c;

    invoke-virtual {p0}, Le3/k;->getUpdate()Li9/a;

    move-result-object v2

    iget-object v0, v0, Le2/s1;->a:Ld1/b0;

    invoke-virtual {v0, p0, v1, v2}, Ld1/b0;->c(Ljava/lang/Object;Li9/c;Li9/a;)V

    :cond_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_4
    iget-object p0, p0, Le3/j;->m:Le3/z;

    invoke-virtual {p0}, Le3/k;->getLayoutNode()Le2/g0;

    move-result-object p0

    invoke-virtual {p0}, Le2/g0;->C()V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
