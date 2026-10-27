.class public final synthetic Lcom/graphhopper/isochrone/algorithm/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/graphhopper/isochrone/algorithm/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    iget p0, p0, Lcom/graphhopper/isochrone/algorithm/b;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lw/l;

    check-cast p2, Lw/l;

    iget p0, p1, Lw/l;->a:I

    iget p1, p2, Lw/l;->a:I

    invoke-static {p0, p1}, Lj9/n;->h(II)I

    move-result p0

    return p0

    :pswitch_0
    check-cast p1, Lx/s0;

    check-cast p2, Lx/s0;

    iget p0, p2, Lx/s0;->a:I

    iget p1, p1, Lx/s0;->a:I

    invoke-static {p0, p1}, Lj9/n;->h(II)I

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Lr0/m0;

    check-cast p2, Lr0/m0;

    iget p0, p1, Lr0/m0;->b:I

    iget p1, p2, Lr0/m0;->b:I

    invoke-static {p0, p1}, Lj9/n;->h(II)I

    move-result p0

    return p0

    :pswitch_2
    check-cast p1, Lt8/j;

    check-cast p2, Lt8/j;

    iget-object p0, p1, Lt8/j;->m:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    iget-object p1, p1, Lt8/j;->l:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    sub-int/2addr p0, p1

    iget-object p1, p2, Lt8/j;->m:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p2, p2, Lt8/j;->l:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    sub-int/2addr p1, p2

    sub-int/2addr p0, p1

    return p0

    :pswitch_3
    check-cast p1, Lcom/graphhopper/util/details/IntersectionValues;

    check-cast p2, Lcom/graphhopper/util/details/IntersectionValues;

    invoke-static {p1, p2}, Lcom/graphhopper/util/details/IntersectionDetails;->a(Lcom/graphhopper/util/details/IntersectionValues;Lcom/graphhopper/util/details/IntersectionValues;)I

    move-result p0

    return p0

    :pswitch_4
    check-cast p1, [B

    check-cast p2, [B

    array-length p0, p1

    array-length v0, p2

    if-eq p0, v0, :cond_0

    array-length p0, p1

    array-length p1, p2

    sub-int/2addr p0, p1

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    move v0, p0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    if-eq v1, v2, :cond_1

    sub-int p0, v1, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return p0

    :pswitch_5
    check-cast p1, Le2/g0;

    check-cast p2, Le2/g0;

    iget-object p0, p1, Le2/g0;->S:Le2/l0;

    iget-object p0, p0, Le2/l0;->p:Le2/x0;

    iget p0, p0, Le2/x0;->P:F

    iget-object v0, p2, Le2/g0;->S:Le2/l0;

    iget-object v0, v0, Le2/l0;->p:Le2/x0;

    iget v0, v0, Le2/x0;->P:F

    cmpg-float v1, p0, v0

    if-nez v1, :cond_3

    invoke-virtual {p1}, Le2/g0;->w()I

    move-result p0

    invoke-virtual {p2}, Le2/g0;->w()I

    move-result p1

    invoke-static {p0, p1}, Lj9/n;->h(II)I

    move-result p0

    goto :goto_2

    :cond_3
    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    :goto_2
    return p0

    :pswitch_6
    check-cast p1, Lrb/d;

    check-cast p2, Lrb/d;

    invoke-static {p1, p2}, Lcom/graphhopper/isochrone/algorithm/ContourBuilder;->b(Lrb/d;Lrb/d;)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
