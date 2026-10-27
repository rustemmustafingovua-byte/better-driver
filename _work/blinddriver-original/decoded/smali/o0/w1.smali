.class public final synthetic Lo0/w1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:I

.field public final synthetic o:I


# direct methods
.method public synthetic constructor <init>(IILc2/f1;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lo0/w1;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo0/w1;->n:I

    iput-object p3, p0, Lo0/w1;->m:Ljava/lang/Object;

    iput p2, p0, Lo0/w1;->o:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;III)V
    .locals 0

    .line 2
    iput p4, p0, Lo0/w1;->l:I

    iput-object p1, p0, Lo0/w1;->m:Ljava/lang/Object;

    iput p2, p0, Lo0/w1;->n:I

    iput p3, p0, Lo0/w1;->o:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lo0/w1;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lo0/w1;->m:Ljava/lang/Object;

    check-cast v0, Lm1/g;

    check-cast p1, Lp2/p;

    iget-object v1, p1, Lp2/p;->a:Lp2/a;

    iget v2, p0, Lo0/w1;->n:I

    invoke-virtual {p1, v2}, Lp2/p;->d(I)I

    move-result v2

    iget p0, p0, Lo0/w1;->o:I

    invoke-virtual {p1, p0}, Lp2/p;->d(I)I

    move-result p0

    iget-object v3, v1, Lp2/a;->e:Ljava/lang/CharSequence;

    if-ltz v2, :cond_0

    if-gt v2, p0, :cond_0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-gt p0, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, ") or end("

    const-string v5, ") is out of range [0.."

    const-string v6, "start("

    invoke-static {v6, v2, v4, p0, v5}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "], or start > end!"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lv2/a;->a(Ljava/lang/String;)V

    :goto_0
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iget-object v1, v1, Lp2/a;->d:Lq2/j;

    iget-object v4, v1, Lq2/j;->f:Landroid/text/Layout;

    invoke-virtual {v4, v2, p0, v3}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    iget p0, v1, Lq2/j;->h:I

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    int-to-float p0, p0

    invoke-virtual {v3, v1, p0}, Landroid/graphics/Path;->offset(FF)V

    :cond_1
    iget p0, p1, Lp2/p;->f:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v1, p1

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    const/16 v4, 0x20

    shl-long/2addr v1, v4

    const-wide v5, 0xffffffffL

    and-long/2addr p0, v5

    or-long/2addr p0, v1

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    shr-long v7, p0, v4

    long-to-int v2, v7

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    and-long/2addr p0, v5

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-virtual {v1, v2, p0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    invoke-virtual {v3, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object p0, v0, Lm1/g;->a:Landroid/graphics/Path;

    const-wide/16 v0, 0x0

    long-to-int p1, v0

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {p0, v3, p1, v0}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;FF)V

    :goto_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lo0/w1;->m:Ljava/lang/Object;

    check-cast v0, Lc2/f1;

    iget v1, p0, Lo0/w1;->o:I

    check-cast p1, Lc2/e1;

    iget p0, p0, Lo0/w1;->n:I

    invoke-static {p1, v0, p0, v1}, Lc2/e1;->j(Lc2/e1;Lc2/f1;II)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lo0/w1;->m:Ljava/lang/Object;

    check-cast v0, Lc2/f1;

    iget v1, p0, Lo0/w1;->o:I

    check-cast p1, Lc2/e1;

    iget p0, p0, Lo0/w1;->n:I

    invoke-static {p1, v0, p0, v1}, Lc2/e1;->j(Lc2/e1;Lc2/f1;II)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lo0/w1;->m:Ljava/lang/Object;

    check-cast v0, Lc2/f1;

    check-cast p1, Lc2/e1;

    iget v1, v0, Lc2/f1;->l:I

    iget v2, p0, Lo0/w1;->n:I

    sub-int/2addr v2, v1

    int-to-float v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ll9/a;->z(F)I

    move-result v1

    iget v3, v0, Lc2/f1;->m:I

    iget p0, p0, Lo0/w1;->o:I

    sub-int/2addr p0, v3

    int-to-float p0, p0

    div-float/2addr p0, v2

    invoke-static {p0}, Ll9/a;->z(F)I

    move-result p0

    invoke-static {p1, v0, v1, p0}, Lc2/e1;->j(Lc2/e1;Lc2/f1;II)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
