.class public final Lc2/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/u1;


# static fields
.field public static final m:Lc2/x0;


# instance fields
.field public final synthetic l:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc2/x0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc2/x0;-><init>(I)V

    sput-object v0, Lc2/x0;->m:Lc2/x0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lc2/x0;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public b(JJ)J
    .locals 5

    iget p0, p0, Lc2/x0;->l:I

    const/16 v0, 0x20

    const-wide v1, 0xffffffffL

    packed-switch p0, :pswitch_data_0

    shr-long v3, p1, v0

    long-to-int p0, v3

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    shr-long v3, p3, v0

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    cmpg-float p0, p0, v3

    if-gtz p0, :cond_0

    and-long v3, p1, v1

    long-to-int p0, v3

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    and-long v3, p3, v1

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    cmpg-float p0, p0, v3

    if-gtz p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p3, p0

    shl-long p0, p1, v0

    and-long p2, p3, v1

    or-long/2addr p0, p2

    sget p2, Lc2/l1;->a:I

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lc2/x;->c(JJ)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p3, p0

    shl-long p0, p1, v0

    and-long p2, p3, v1

    or-long/2addr p0, p2

    sget p2, Lc2/l1;->a:I

    :goto_0
    return-wide p0

    :pswitch_0
    invoke-static {p1, p2, p3, p4}, Lc2/x;->c(JJ)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p3, p0

    shl-long p0, p1, v0

    and-long p2, p3, v1

    or-long/2addr p0, p2

    sget p2, Lc2/l1;->a:I

    return-wide p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public c(Lc2/t1;)V
    .locals 0

    invoke-virtual {p1}, Lc2/t1;->clear()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lc2/x0;->l:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "ReusedSlotId"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
