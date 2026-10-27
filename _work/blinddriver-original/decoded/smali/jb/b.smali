.class public abstract Ljb/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I

.field public static final b:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x25

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Ljb/b;->a:[I

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    sput-object v0, Ljb/b;->b:[J

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        -0x80000000
        0x55555556
        0x40000000    # 2.0f
        0x33333334
        0x2aaaaaab
        0x24924925
        0x20000000
        0x1c71c71d    # 7.999756E-22f
        0x1999999a
        0x1745d175
        0x15555556
        0x13b13b14
        0x12492493
        0x11111112
        0x10000000
        0xf0f0f10
        0xe38e38f
        0xd79435f
        0xccccccd
        0xc30c30d
        0xba2e8bb
        0xb21642d
        0xaaaaaab
        0xa3d70a4
        0x9d89d8a
        0x97b425f
        0x924924a
        0x8d3dcb1
        0x8888889
        0x8421085
        0x8000000
        0x7c1f07d
        0x7878788
        0x7507508
        0x71c71c8
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x0
        -0x8000000000000000L
        0x5555555555555556L    # 1.1945305291614957E103
        0x4000000000000000L    # 2.0
        0x3333333333333334L    # 4.667261458395857E-62
        0x2aaaaaaaaaaaaaabL    # 3.720662080996989E-103
        0x2492492492492493L    # 1.610103693112747E-132
        0x2000000000000000L
        0x1c71c71c71c71c72L
        0x199999999999999aL
        0x1745d1745d1745d2L
        0x1555555555555556L    # 6.644796634065046E-206
        0x13b13b13b13b13b2L    # 7.997380387058967E-214
        0x124924924924924aL    # 1.391130315222828E-220
        0x1111111111111112L
        0x1000000000000000L
        0xf0f0f0f0f0f0f10L
        0xe38e38e38e38e39L    # 3.732578736806904E-240
        0xd79435e50d79436L
        0xccccccccccccccdL
        0xc30c30c30c30c31L
        0xba2e8ba2e8ba2e9L
        0xb21642c8590b217L    # 4.63303772589612E-255
        0xaaaaaaaaaaaaaabL
        0xa3d70a3d70a3d71L
        0x9d89d89d89d89d9L
        0x97b425ed097b426L
        0x924924924924925L
        0x8d3dcb08d3dcb09L
        0x888888888888889L
        0x842108421084211L
        0x800000000000000L
        0x7c1f07c1f07c1f1L
        0x787878787878788L
        0x750750750750751L
        0x71c71c71c71c71dL
    .end array-data
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(ILjava/lang/String;)I
    .locals 8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x2

    if-lt p0, v0, :cond_6

    const/16 v1, 0x24

    if-gt p0, v1, :cond_6

    sget-object v1, Ljb/b;->a:[I

    aget v1, v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_5

    const-string v4, "\" and radix "

    const-string v5, "For input string \""

    if-ltz v3, :cond_4

    if-eq p0, v0, :cond_0

    if-ge v3, v1, :cond_4

    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, p0}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    mul-int/2addr v3, p0

    add-int/2addr v6, v3

    if-gez v3, :cond_2

    if-gez v6, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v3, v6

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    return v3

    :cond_6
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "Invalid radix "

    invoke-static {p0, v0}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string p1, "null"

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(ILjava/lang/String;)J
    .locals 13

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x2

    if-lt p0, v0, :cond_6

    const/16 v1, 0x24

    if-gt p0, v1, :cond_6

    sget-object v1, Ljb/b;->b:[J

    aget-wide v1, v1, p0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-wide v6, v3

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v5, v8, :cond_5

    cmp-long v8, v6, v3

    const-string v9, "\" and radix "

    const-string v10, "For input string \""

    if-ltz v8, :cond_4

    if-eq p0, v0, :cond_0

    cmp-long v8, v6, v1

    if-gez v8, :cond_4

    :cond_0
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8, p0}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    const/4 v11, -0x1

    if-eq v8, v11, :cond_3

    int-to-long v11, p0

    mul-long/2addr v6, v11

    int-to-long v11, v8

    add-long/2addr v11, v6

    cmp-long v6, v6, v3

    if-gez v6, :cond_2

    cmp-long v6, v11, v3

    if-gez v6, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    move-wide v6, v11

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    return-wide v6

    :cond_6
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "Invalid radix "

    invoke-static {p0, v0}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string p1, "null"

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
