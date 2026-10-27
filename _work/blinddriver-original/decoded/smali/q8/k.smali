.class public abstract Lq8/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr9/i;

.field public static final b:Lr9/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr9/i;

    const-string v1, "([0-9]+)\\s*(?:\'|ft)\\s*([0-9]+)\\s*(?:\"|in)"

    invoke-direct {v0, v1}, Lr9/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lq8/k;->a:Lr9/i;

    new-instance v0, Lr9/i;

    const-string v1, "([0-9]+|[0-9]*\\.[0-9]+)\\s*([a-z/\'\"]+)"

    invoke-direct {v0, v1}, Lr9/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lq8/k;->b:Lr9/i;

    return-void
.end method

.method public static final a(Ljava/lang/String;)Ljava/lang/Double;
    .locals 3

    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "km/h"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "yds"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "mph"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-wide v0, 0x3ff9bfdf7e8038a0L    # 1.609344

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :sswitch_3
    const-string v0, "lbs"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "kph"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    return-object v1

    :sswitch_5
    const-string v0, "cwt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const-wide v0, 0x3faa02c3d8732567L    # 0.05080234544

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :sswitch_6
    const-string v0, "yd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const-wide v0, 0x3fed42c3c9eecbfbL    # 0.9144

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :sswitch_7
    const-string v0, "st"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const-wide v0, 0x3fed07a84ab75e51L    # 0.90718474

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :sswitch_8
    const-string v1, "mm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    return-object v0

    :sswitch_9
    const-string v0, "lt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const-wide v0, 0x3ff041ba64eb3c24L    # 1.0160469

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :sswitch_a
    const-string v0, "lb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const-wide v0, 0x3f3dba046515e19aL    # 4.5359237E-4

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :sswitch_b
    const-string v0, "km"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const-wide v0, 0x408f400000000000L    # 1000.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :sswitch_c
    const-string v1, "kg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    return-object v0

    :sswitch_d
    const-string v0, "in"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_0

    :sswitch_e
    const-string v0, "ft"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_0

    :sswitch_f
    const-string v0, "cm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :sswitch_10
    const-string v0, "t"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_0

    :cond_b
    return-object v1

    :sswitch_11
    const-string v0, "m"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_0

    :cond_c
    return-object v1

    :sswitch_12
    const-string v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_0

    :cond_d
    const-wide v0, 0x3fd381d7dbf487fdL    # 0.3048

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :sswitch_13
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_e
    const-wide v0, 0x3f9a027525460aa6L    # 0.0254

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_13
        0x27 -> :sswitch_12
        0x6d -> :sswitch_11
        0x74 -> :sswitch_10
        0xc6a -> :sswitch_f
        0xcce -> :sswitch_e
        0xd25 -> :sswitch_d
        0xd5c -> :sswitch_c
        0xd62 -> :sswitch_b
        0xd76 -> :sswitch_a
        0xd88 -> :sswitch_9
        0xda0 -> :sswitch_8
        0xe61 -> :sswitch_7
        0xf0b -> :sswitch_6
        0x18280 -> :sswitch_5
        0x19fa3 -> :sswitch_4
        0x1a1bd -> :sswitch_3
        0x1a725 -> :sswitch_2
        0x1d2c8 -> :sswitch_1
        0x3242fb -> :sswitch_0
    .end sparse-switch
.end method

.method public static final b(Ljava/lang/String;)Ljava/lang/Double;
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "Char sequence is empty."

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_2

    goto/16 :goto_0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p0}, Lr9/k;->h0(Ljava/lang/CharSequence;)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, Lr9/k;->h0(Ljava/lang/CharSequence;)C

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_3

    invoke-static {p0}, Lr9/k;->h0(Ljava/lang/CharSequence;)C

    move-result v0

    const/16 v1, 0x27

    if-eq v0, v1, :cond_3

    invoke-static {p0}, Lr9/q;->I(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object v0, Lq8/k;->b:Lr9/i;

    invoke-virtual {v0, p0}, Lr9/i;->e(Ljava/lang/String;)Lr9/g;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lr9/g;->a()Ljava/util/List;

    move-result-object p0

    check-cast p0, Lr9/e;

    invoke-virtual {p0, v2}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0}, Lr9/g;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Lr9/e;

    invoke-virtual {v0, v1}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0}, Lr9/q;->I(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v0}, Lq8/k;->a(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    mul-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_4
    sget-object v0, Lq8/k;->a:Lr9/i;

    invoke-virtual {v0, p0}, Lr9/i;->e(Ljava/lang/String;)Lr9/g;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lr9/g;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Lr9/e;

    invoke-virtual {v0, v2}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lr9/g;->a()Ljava/util/List;

    move-result-object p0

    check-cast p0, Lr9/e;

    invoke-virtual {p0, v1}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-double v0, v0

    const-string v2, "ft"

    invoke-static {v2}, Lq8/k;->a(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v2}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    mul-double/2addr v2, v0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-double v0, p0

    const-string p0, "in"

    invoke-static {p0}, Lq8/k;->a(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double/2addr v4, v0

    add-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_6
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
