.class public final synthetic Lkd/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lkd/x;


# direct methods
.method public synthetic constructor <init>(Lkd/x;I)V
    .locals 0

    iput p2, p0, Lkd/v;->l:I

    iput-object p1, p0, Lkd/v;->m:Lkd/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lkd/v;->l:I

    check-cast p1, Ly1/u;

    check-cast p2, Ll1/b;

    packed-switch v0, :pswitch_data_0

    const-string v0, "c"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ly1/u;->a()V

    iget-wide v0, p2, Ll1/b;->a:J

    const/16 p1, 0x20

    shr-long/2addr v0, p1

    long-to-int p1, v0

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    iget-wide v0, p2, Ll1/b;->a:J

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int p2, v0

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    iget-object p0, p0, Lkd/v;->m:Lkd/x;

    iget-object v0, p0, Lkd/x;->n:Lr0/e1;

    invoke-virtual {v0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lkd/x;->l:F

    div-float/2addr p1, v1

    add-float/2addr p1, v0

    float-to-int p1, p1

    const/16 v0, 0x168

    const/16 v2, 0x78

    invoke-static {p1, v2, v0}, Lg6/c1;->f(III)I

    move-result p1

    iget-object v0, p0, Lkd/x;->n:Lr0/e1;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lkd/x;->o:Lr0/e1;

    invoke-virtual {p1}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p2, v1

    add-float/2addr p2, v3

    float-to-int p2, p2

    const/16 v3, 0x1a4

    invoke-static {p2, v2, v3}, Lg6/c1;->f(III)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lkd/x;->m:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, v1

    float-to-int p2, p2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object p2, p0, Lkd/x;->p:Lf2/k1;

    if-eqz p2, :cond_0

    :try_start_0
    iget-object p0, p0, Lkd/x;->i:Landroid/view/WindowManager;

    invoke-interface {p0, p2, p1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :cond_0
    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    const-string v0, "c"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ly1/u;->a()V

    iget-wide v0, p2, Ll1/b;->a:J

    const/16 p1, 0x20

    shr-long/2addr v0, p1

    long-to-int p1, v0

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    iget-wide v0, p2, Ll1/b;->a:J

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int p2, v0

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    iget-object p0, p0, Lkd/v;->m:Lkd/x;

    iget-object v0, p0, Lkd/x;->m:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    float-to-int p1, p1

    add-int/2addr v1, p1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    float-to-int p2, p2

    add-int/2addr p1, p2

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p0, Lkd/x;->p:Lf2/k1;

    if-eqz p1, :cond_1

    :try_start_1
    iget-object p0, p0, Lkd/x;->i:Landroid/view/WindowManager;

    invoke-interface {p0, p1, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :cond_1
    :goto_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
