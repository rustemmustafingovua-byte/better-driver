.class public final Lv5/l;
.super Lv5/b;
.source "SourceFile"


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lv5/l;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final f()J
    .locals 2

    iget p0, p0, Lv5/l;->b:I

    packed-switch p0, :pswitch_data_0

    const/high16 p0, 0x7fc00000    # Float.NaN

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v0, p0

    return-wide v0

    :pswitch_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g()J
    .locals 2

    iget p0, p0, Lv5/l;->b:I

    packed-switch p0, :pswitch_data_0

    const/high16 p0, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v0, p0

    return-wide v0

    :pswitch_0
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final j()J
    .locals 2

    iget p0, p0, Lv5/l;->b:I

    packed-switch p0, :pswitch_data_0

    const/high16 p0, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v0, p0

    return-wide v0

    :pswitch_0
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final n([CIIZJIZI)J
    .locals 0

    iget p0, p0, Lv5/l;->b:I

    packed-switch p0, :pswitch_data_0

    invoke-static/range {p4 .. p9}, Lv5/c;->i(ZJIZI)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p4

    if-eqz p4, :cond_0

    new-instance p0, Ljava/lang/String;

    sub-int/2addr p3, p2

    invoke-direct {p0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :pswitch_0
    invoke-static/range {p4 .. p9}, Lv5/c;->h(ZJIZI)D

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/String;

    sub-int/2addr p3, p2

    invoke-direct {p0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p4

    :cond_1
    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    return-wide p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final p([CIIZJIZI)J
    .locals 8

    iget p0, p0, Lv5/l;->b:I

    packed-switch p0, :pswitch_data_0

    invoke-static/range {p4 .. p9}, Lv5/c;->m(ZJIZI)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p4

    if-eqz p4, :cond_0

    new-instance p0, Ljava/lang/String;

    sub-int/2addr p3, p2

    invoke-direct {p0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :pswitch_0
    int-to-long v3, p7

    move/from16 p0, p9

    int-to-long v6, p0

    move v0, p4

    move-wide v1, p5

    move/from16 v5, p8

    invoke-static/range {v0 .. v7}, Lv5/c;->l(ZJJZJ)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/String;

    sub-int/2addr p3, p2

    invoke-direct {p0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    return-wide p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
