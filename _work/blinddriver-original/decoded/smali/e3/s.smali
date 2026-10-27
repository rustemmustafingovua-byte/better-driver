.class public final Le3/s;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Le3/t;


# direct methods
.method public synthetic constructor <init>(Le3/t;I)V
    .locals 0

    iput p2, p0, Le3/s;->l:I

    iput-object p1, p0, Le3/s;->m:Le3/t;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget v0, p0, Le3/s;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lk1/a;

    iget-object p0, p0, Le3/s;->m:Le3/t;

    invoke-static {p0}, Le3/l;->c(Lf1/q;)Landroid/view/View;

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    check-cast p1, Lk1/a;

    iget-object p0, p0, Le3/s;->m:Le3/t;

    invoke-static {p0}, Le3/l;->c(Lf1/q;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Le2/l;->w(Le2/j;)Le2/q1;

    move-result-object v1

    check-cast v1, Lf2/y;

    invoke-virtual {v1}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object v1

    invoke-static {p0}, Le2/l;->x(Le2/j;)Landroid/view/View;

    move-result-object p0

    iget v2, p1, Lk1/a;->a:I

    invoke-static {v2}, Lk1/h;->c(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [I

    invoke-virtual {p0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    new-array p0, v3, [I

    invoke-virtual {v0, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    check-cast v1, Lk1/o;

    iget-object v1, v1, Lk1/o;->c:Lk1/b0;

    invoke-static {v1}, Lk1/d;->f(Lk1/b0;)Lk1/b0;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Lk1/d;->i(Lk1/b0;)Ll1/c;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const/4 v5, 0x1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    iget v6, v1, Ll1/c;->a:F

    float-to-int v6, v6

    const/4 v7, 0x0

    aget v8, v4, v7

    add-int/2addr v6, v8

    aget v7, p0, v7

    sub-int/2addr v6, v7

    iget v9, v1, Ll1/c;->b:F

    float-to-int v9, v9

    aget v4, v4, v5

    add-int/2addr v9, v4

    aget p0, p0, v5

    sub-int/2addr v9, p0

    iget v10, v1, Ll1/c;->c:F

    float-to-int v10, v10

    add-int/2addr v10, v8

    sub-int/2addr v10, v7

    iget v1, v1, Ll1/c;->d:F

    float-to-int v1, v1

    add-int/2addr v1, v4

    sub-int/2addr v1, p0

    invoke-direct {v3, v6, v9, v10, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_1
    invoke-static {v0, v2, v3}, Lk1/h;->b(Landroid/view/View;Ljava/lang/Integer;Landroid/graphics/Rect;)Z

    move-result p0

    if-nez p0, :cond_2

    iput-boolean v5, p1, Lk1/a;->b:Z

    :cond_2
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
