.class public final Lc2/j1;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(ILjava/util/ArrayList;)V
    .locals 0

    iput p1, p0, Lc2/j1;->l:I

    iput-object p2, p0, Lc2/j1;->m:Ljava/util/ArrayList;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lc2/j1;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lc2/e1;

    iget-object p0, p0, Lc2/j1;->m:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc2/f1;

    invoke-static {p1, v3, v1, v1}, Lc2/e1;->j(Lc2/e1;Lc2/f1;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    check-cast p1, Lc2/e1;

    iget-object p0, p0, Lc2/j1;->m:Ljava/util/ArrayList;

    invoke-static {p0}, Lg5/f;->A(Ljava/util/List;)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc2/f1;

    invoke-static {p1, v3, v1, v1}, Lc2/e1;->l(Lc2/e1;Lc2/f1;II)V

    if-eq v2, v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_1
    check-cast p1, Lc2/e1;

    iget-object p0, p0, Lc2/j1;->m:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc2/f1;

    invoke-static {p1, v3, v1, v1}, Lc2/e1;->l(Lc2/e1;Lc2/f1;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_2
    check-cast p1, Lc2/e1;

    iget-object p0, p0, Lc2/j1;->m:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc2/f1;

    invoke-static {p1, v3, v1, v1}, Lc2/e1;->o(Lc2/e1;Lc2/f1;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
