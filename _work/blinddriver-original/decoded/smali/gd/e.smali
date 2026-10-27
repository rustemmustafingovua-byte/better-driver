.class public final synthetic Lgd/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lgd/e;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget p0, p0, Lgd/e;->l:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lb3/l;

    new-instance p0, Ln/m;

    iget-wide v0, p1, Lb3/l;->a:J

    const/16 p1, 0x20

    shr-long v2, v0, p1

    long-to-int p1, v2

    int-to-float p1, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-float v0, v0

    invoke-direct {p0, p1, v0}, Ln/m;-><init>(FF)V

    return-object p0

    :pswitch_0
    check-cast p1, Ln/m;

    iget p0, p1, Ln/m;->a:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iget p1, p1, Ln/m;->b:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    int-to-long p0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    new-instance v0, Lb3/j;

    invoke-direct {v0, p0, p1}, Lb3/j;-><init>(J)V

    return-object v0

    :pswitch_1
    check-cast p1, Lb3/j;

    new-instance p0, Ln/m;

    iget-wide v0, p1, Lb3/j;->a:J

    const/16 p1, 0x20

    shr-long v2, v0, p1

    long-to-int p1, v2

    int-to-float p1, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-float v0, v0

    invoke-direct {p0, p1, v0}, Ln/m;-><init>(FF)V

    return-object p0

    :pswitch_2
    check-cast p1, Ln/m;

    iget p0, p1, Ln/m;->a:F

    iget p1, p1, Ln/m;->b:F

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v0, p0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    new-instance v0, Ll1/b;

    invoke-direct {v0, p0, p1}, Ll1/b;-><init>(J)V

    return-object v0

    :pswitch_3
    check-cast p1, Ll1/b;

    new-instance p0, Ln/m;

    iget-wide v0, p1, Ll1/b;->a:J

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iget-wide v1, p1, Ll1/b;->a:J

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    long-to-int p1, v1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-direct {p0, v0, p1}, Ln/m;-><init>(FF)V

    return-object p0

    :pswitch_4
    check-cast p1, Ln/m;

    iget p0, p1, Ln/m;->a:F

    iget p1, p1, Ln/m;->b:F

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v0, p0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    new-instance v0, Ll1/e;

    invoke-direct {v0, p0, p1}, Ll1/e;-><init>(J)V

    return-object v0

    :pswitch_5
    check-cast p1, Ll1/e;

    new-instance p0, Ln/m;

    iget-wide v0, p1, Ll1/e;->a:J

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iget-wide v1, p1, Ll1/e;->a:J

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    long-to-int p1, v1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-direct {p0, v0, p1}, Ln/m;-><init>(FF)V

    return-object p0

    :pswitch_6
    check-cast p1, Ln/m;

    iget p0, p1, Ln/m;->a:F

    iget p1, p1, Ln/m;->b:F

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v0, p0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    new-instance v0, Lb3/g;

    invoke-direct {v0, p0, p1}, Lb3/g;-><init>(J)V

    return-object v0

    :pswitch_7
    check-cast p1, Lb3/g;

    new-instance p0, Ln/m;

    iget-wide v0, p1, Lb3/g;->a:J

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iget-wide v1, p1, Lb3/g;->a:J

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    long-to-int p1, v1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-direct {p0, v0, p1}, Ln/m;-><init>(FF)V

    return-object p0

    :pswitch_8
    check-cast p1, Ln/l;

    iget p0, p1, Ln/l;->a:F

    new-instance p1, Lb3/f;

    invoke-direct {p1, p0}, Lb3/f;-><init>(F)V

    return-object p1

    :pswitch_9
    check-cast p1, Lb3/f;

    new-instance p0, Ln/l;

    iget p1, p1, Lb3/f;->l:F

    invoke-direct {p0, p1}, Ln/l;-><init>(F)V

    return-object p0

    :pswitch_a
    check-cast p1, Ln/l;

    iget p0, p1, Ln/l;->a:F

    float-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    new-instance p1, Ln/l;

    int-to-float p0, p0

    invoke-direct {p1, p0}, Ln/l;-><init>(F)V

    return-object p1

    :pswitch_c
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    new-instance p1, Ln/l;

    invoke-direct {p1, p0}, Ln/l;-><init>(F)V

    return-object p1

    :pswitch_d
    check-cast p1, Li9/a;

    invoke-interface {p1}, Li9/a;->invoke()Ljava/lang/Object;

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_e
    check-cast p1, Ln/i;

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_f
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    new-instance v0, Lm0/i1;

    invoke-direct {v0, p0, p1}, Lm0/i1;-><init>(J)V

    return-object v0

    :pswitch_10
    check-cast p1, Ln/m;

    iget p0, p1, Ln/m;->a:F

    iget p1, p1, Ln/m;->b:F

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v0, p0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    new-instance v0, Ll1/b;

    invoke-direct {v0, p0, p1}, Ll1/b;-><init>(J)V

    return-object v0

    :pswitch_11
    check-cast p1, Ll1/b;

    iget-wide v0, p1, Ll1/b;->a:J

    const-wide v2, 0x7fffffff7fffffffL

    and-long/2addr v2, v0

    const-wide v4, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long p0, v2, v4

    if-eqz p0, :cond_0

    new-instance p0, Ln/m;

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iget-wide v1, p1, Ll1/b;->a:J

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    long-to-int p1, v1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-direct {p0, v0, p1}, Ln/m;-><init>(FF)V

    goto :goto_0

    :cond_0
    sget-object p0, Lm0/x0;->a:Ln/m;

    :goto_0
    return-object p0

    :pswitch_12
    check-cast p1, Lu2/j;

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_13
    check-cast p1, Ljava/util/List;

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_14
    check-cast p1, Lua/nav/routing/GeoPoint;

    const-string p0, "it"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p1, Lua/nav/routing/GeoPoint;->b:D

    const/4 p0, 0x6

    invoke-static {v0, v1, p0}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p1, Lua/nav/routing/GeoPoint;->a:D

    invoke-static {v1, v2, p0}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object p0

    const-string p1, ","

    invoke-static {v0, p1, p0}, La6/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_15
    check-cast p1, Lia/h;

    const-string p0, "$this$Json"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    iput-boolean p0, p1, Lia/h;->b:Z

    iput-boolean p0, p1, Lia/h;->c:Z

    iput-boolean p0, p1, Lia/h;->d:Z

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_16
    check-cast p1, Lid/j1;

    const-string p0, "it"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide p0, p1, Lid/j1;->c:J

    const/16 v0, 0x3e8

    int-to-long v0, v0

    div-long/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_17
    check-cast p1, Lid/j1;

    const-string p0, "it"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object p1, p1, Lid/j1;->d:Ljava/lang/Float;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_1

    :cond_1
    const/high16 p1, 0x41200000    # 10.0f

    :goto_1
    const/high16 v0, 0x40a00000    # 5.0f

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {p1, v0, v1}, Lg6/c1;->e(FFF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%.0f"

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_18
    check-cast p1, Lid/j1;

    const-string p0, "it"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v0, p1, Lid/j1;->b:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-wide v1, p1, Lid/j1;->a:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%.6f,%.6f"

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_19
    check-cast p1, Ljava/util/Map$Entry;

    const-string p0, "it"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    const-string p1, "<get-key>(...)"

    invoke-static {p0, p1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0

    :pswitch_1a
    check-cast p1, Ljava/util/Map$Entry;

    const-string p0, "<destruct>"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lia/l;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p0}, Lja/t;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/16 p0, 0x3a

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1b
    check-cast p1, Lfa/a;

    const-string p0, "$this$buildSerialDescriptor"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, La1/b;

    const/16 v0, 0x1c

    invoke-direct {p0, v0}, La1/b;-><init>(I)V

    new-instance v0, Lia/p;

    invoke-direct {v0, p0}, Lia/p;-><init>(Li9/a;)V

    const-string p0, "JsonPrimitive"

    invoke-static {p1, p0, v0}, Lfa/a;->a(Lfa/a;Ljava/lang/String;Lia/p;)V

    new-instance p0, La1/b;

    const/16 v0, 0x1d

    invoke-direct {p0, v0}, La1/b;-><init>(I)V

    new-instance v0, Lia/p;

    invoke-direct {v0, p0}, Lia/p;-><init>(Li9/a;)V

    const-string p0, "JsonNull"

    invoke-static {p1, p0, v0}, Lfa/a;->a(Lfa/a;Ljava/lang/String;Lia/p;)V

    new-instance p0, Lia/n;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lia/n;-><init>(I)V

    new-instance v0, Lia/p;

    invoke-direct {v0, p0}, Lia/p;-><init>(Li9/a;)V

    const-string p0, "JsonLiteral"

    invoke-static {p1, p0, v0}, Lfa/a;->a(Lfa/a;Ljava/lang/String;Lia/p;)V

    new-instance p0, Lia/n;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lia/n;-><init>(I)V

    new-instance v0, Lia/p;

    invoke-direct {v0, p0}, Lia/p;-><init>(Li9/a;)V

    const-string p0, "JsonObject"

    invoke-static {p1, p0, v0}, Lfa/a;->a(Lfa/a;Ljava/lang/String;Lia/p;)V

    new-instance p0, Lia/n;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lia/n;-><init>(I)V

    new-instance v0, Lia/p;

    invoke-direct {v0, p0}, Lia/p;-><init>(Li9/a;)V

    const-string p0, "JsonArray"

    invoke-static {p1, p0, v0}, Lfa/a;->a(Lfa/a;Ljava/lang/String;Lia/p;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_1c
    check-cast p1, Lia/h;

    const-string p0, "$this$Json"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    iput-boolean p0, p1, Lia/h;->b:Z

    iput-boolean p0, p1, Lia/h;->c:Z

    iput-boolean p0, p1, Lia/h;->d:Z

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
