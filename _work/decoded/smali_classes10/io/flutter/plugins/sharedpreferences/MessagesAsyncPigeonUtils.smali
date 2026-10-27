.class final Lio/flutter/plugins/sharedpreferences/MessagesAsyncPigeonUtils;
.super Ljava/lang/Object;
.source "MessagesAsync.g.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0001J\u0016\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00052\u0006\u0010\u0008\u001a\u00020\tJ\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rJ\u0016\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\rJ\u000e\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0010J\u001a\u0010\u0016\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0001J\u0010\u0010\u0017\u001a\u00020\u00122\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001\u00a8\u0006\u0019"
    }
    d2 = {
        "Lio/flutter/plugins/sharedpreferences/MessagesAsyncPigeonUtils;",
        "",
        "<init>",
        "()V",
        "wrapResult",
        "",
        "result",
        "wrapError",
        "exception",
        "",
        "doubleEquals",
        "",
        "a",
        "",
        "b",
        "floatEquals",
        "",
        "doubleHash",
        "",
        "d",
        "floatHash",
        "f",
        "deepEquals",
        "deepHash",
        "value",
        "shared_preferences_android_debug"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lio/flutter/plugins/sharedpreferences/MessagesAsyncPigeonUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/flutter/plugins/sharedpreferences/MessagesAsyncPigeonUtils;

    invoke-direct {v0}, Lio/flutter/plugins/sharedpreferences/MessagesAsyncPigeonUtils;-><init>()V

    sput-object v0, Lio/flutter/plugins/sharedpreferences/MessagesAsyncPigeonUtils;->INSTANCE:Lio/flutter/plugins/sharedpreferences/MessagesAsyncPigeonUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    .line 54
    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    .line 55
    return v0

    .line 57
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1e

    if-nez p2, :cond_1

    goto/16 :goto_4

    .line 60
    :cond_1
    instance-of v2, p1, [B

    if-eqz v2, :cond_2

    instance-of v2, p2, [B

    if-eqz v2, :cond_2

    .line 61
    move-object v0, p1

    check-cast v0, [B

    move-object v1, p2

    check-cast v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0

    .line 63
    :cond_2
    instance-of v2, p1, [I

    if-eqz v2, :cond_3

    instance-of v2, p2, [I

    if-eqz v2, :cond_3

    .line 64
    move-object v0, p1

    check-cast v0, [I

    move-object v1, p2

    check-cast v1, [I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    return v0

    .line 66
    :cond_3
    instance-of v2, p1, [J

    if-eqz v2, :cond_4

    instance-of v2, p2, [J

    if-eqz v2, :cond_4

    .line 67
    move-object v0, p1

    check-cast v0, [J

    move-object v1, p2

    check-cast v1, [J

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    return v0

    .line 69
    :cond_4
    instance-of v2, p1, [D

    if-eqz v2, :cond_8

    instance-of v2, p2, [D

    if-eqz v2, :cond_8

    .line 70
    move-object v2, p1

    check-cast v2, [D

    array-length v2, v2

    move-object v3, p2

    check-cast v3, [D

    array-length v3, v3

    if-eq v2, v3, :cond_5

    return v1

    .line 71
    :cond_5
    const/4 v2, 0x0

    .local v2, "i":I
    move-object v3, p1

    check-cast v3, [D

    array-length v3, v3

    :goto_0
    if-ge v2, v3, :cond_7

    .line 72
    move-object v4, p1

    check-cast v4, [D

    aget-wide v5, v4, v2

    move-object v4, p2

    check-cast v4, [D

    aget-wide v7, v4, v2

    invoke-virtual {p0, v5, v6, v7, v8}, Lio/flutter/plugins/sharedpreferences/MessagesAsyncPigeonUtils;->doubleEquals(DD)Z

    move-result v4

    if-nez v4, :cond_6

    return v1

    .line 71
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    .end local v2    # "i":I
    :cond_7
    return v0

    .line 76
    :cond_8
    instance-of v2, p1, [F

    if-eqz v2, :cond_c

    instance-of v2, p2, [F

    if-eqz v2, :cond_c

    .line 77
    move-object v2, p1

    check-cast v2, [F

    array-length v2, v2

    move-object v3, p2

    check-cast v3, [F

    array-length v3, v3

    if-eq v2, v3, :cond_9

    return v1

    .line 78
    :cond_9
    const/4 v2, 0x0

    .restart local v2    # "i":I
    move-object v3, p1

    check-cast v3, [F

    array-length v3, v3

    :goto_1
    if-ge v2, v3, :cond_b

    .line 79
    move-object v4, p1

    check-cast v4, [F

    aget v4, v4, v2

    move-object v5, p2

    check-cast v5, [F

    aget v5, v5, v2

    invoke-virtual {p0, v4, v5}, Lio/flutter/plugins/sharedpreferences/MessagesAsyncPigeonUtils;->floatEquals(FF)Z

    move-result v4

    if-nez v4, :cond_a

    return v1

    .line 78
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 81
    .end local v2    # "i":I
    :cond_b
    return v0

    .line 83
    :cond_c
    instance-of v2, p1, [Ljava/lang/Object;

    if-eqz v2, :cond_10

    instance-of v2, p2, [Ljava/lang/Object;

    if-eqz v2, :cond_10

    .line 84
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    array-length v2, v2

    move-object v3, p2

    check-cast v3, [Ljava/lang/Object;

    array-length v3, v3

    if-eq v2, v3, :cond_d

    return v1

    .line 85
    :cond_d
    const/4 v2, 0x0

    .restart local v2    # "i":I
    move-object v3, p1

    check-cast v3, [Ljava/lang/Object;

    array-length v3, v3

    :goto_2
    if-ge v2, v3, :cond_f

    .line 86
    move-object v4, p1

    check-cast v4, [Ljava/lang/Object;

    aget-object v4, v4, v2

    move-object v5, p2

    check-cast v5, [Ljava/lang/Object;

    aget-object v5, v5, v2

    invoke-virtual {p0, v4, v5}, Lio/flutter/plugins/sharedpreferences/MessagesAsyncPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    return v1

    .line 85
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 88
    .end local v2    # "i":I
    :cond_f
    return v0

    .line 90
    :cond_10
    instance-of v2, p1, Ljava/util/List;

    if-eqz v2, :cond_14

    instance-of v2, p2, Ljava/util/List;

    if-eqz v2, :cond_14

    .line 91
    move-object v2, p1

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move-object v3, p2

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_11

    return v1

    .line 92
    :cond_11
    move-object v2, p1

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 93
    .local v2, "iterA":Ljava/util/Iterator;
    move-object v3, p2

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 94
    .local v3, "iterB":Ljava/util/Iterator;
    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 95
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lio/flutter/plugins/sharedpreferences/MessagesAsyncPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    return v1

    .line 97
    :cond_13
    return v0

    .line 99
    .end local v2    # "iterA":Ljava/util/Iterator;
    .end local v3    # "iterB":Ljava/util/Iterator;
    :cond_14
    instance-of v2, p1, Ljava/util/Map;

    if-eqz v2, :cond_1b

    instance-of v2, p2, Ljava/util/Map;

    if-eqz v2, :cond_1b

    .line 100
    move-object v2, p1

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    move-object v3, p2

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v2, v3, :cond_15

    return v1

    .line 101
    :cond_15
    move-object v2, p1

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 102
    .local v3, "entry":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 103
    .local v4, "key":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 104
    .local v5, "found":Z
    move-object v6, p2

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_17
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 105
    .local v7, "bEntry":Ljava/util/Map$Entry;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0, v4, v8}, Lio/flutter/plugins/sharedpreferences/MessagesAsyncPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 106
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0, v6, v8}, Lio/flutter/plugins/sharedpreferences/MessagesAsyncPigeonUtils;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 107
    const/4 v5, 0x1

    .line 108
    goto :goto_3

    .line 110
    :cond_18
    return v1

    .line 114
    .end local v7    # "bEntry":Ljava/util/Map$Entry;
    :cond_19
    :goto_3
    if-nez v5, :cond_16

    return v1

    .line 116
    .end local v3    # "entry":Ljava/util/Map$Entry;
    .end local v4    # "key":Ljava/lang/Object;
    .end local v5    # "found":Z
    :cond_1a
    return v0

    .line 118
    :cond_1b
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1c

    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_1c

    .line 119
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    move-object v2, p2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lio/flutter/plugins/sharedpreferences/MessagesAsyncPigeonUtils;->doubleEquals(DD)Z

    move-result v0

    return v0

    .line 121
    :cond_1c
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_1d

    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_1d

    .line 122
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lio/flutter/plugins/sharedpreferences/MessagesAsyncPigeonUtils;->floatEquals(FF)Z

    move-result v0

    return v0

    .line 124
    :cond_1d
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 58
    :cond_1e
    :goto_4
    return v1
.end method

.method public final deepHash(Ljava/lang/Object;)I
    .locals 8
    .param p1, "value"    # Ljava/lang/Object;

    .line 128
    nop

    .line 129
    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto/16 :goto_5

    .line 130
    :cond_0
    instance-of v1, p1, [B

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    goto/16 :goto_5

    .line 131
    :cond_1
    instance-of v1, p1, [I

    if-eqz v1, :cond_2

    move-object v0, p1

    check-cast v0, [I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    goto/16 :goto_5

    .line 132
    :cond_2
    instance-of v1, p1, [J

    if-eqz v1, :cond_3

    move-object v0, p1

    check-cast v0, [J

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    goto/16 :goto_5

    .line 133
    :cond_3
    instance-of v1, p1, [D

    if-eqz v1, :cond_5

    .line 134
    const/4 v1, 0x1

    .line 135
    .local v1, "result":I
    move-object v2, p1

    check-cast v2, [D

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_4

    aget-wide v4, v2, v0

    .line 136
    .local v4, "item":D
    mul-int/lit8 v6, v1, 0x1f

    invoke-virtual {p0, v4, v5}, Lio/flutter/plugins/sharedpreferences/MessagesAsyncPigeonUtils;->doubleHash(D)I

    move-result v7

    add-int v1, v6, v7

    .line 135
    .end local v4    # "item":D
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_4
    move v0, v1

    .end local v1    # "result":I
    goto/16 :goto_5

    .line 140
    :cond_5
    instance-of v1, p1, [F

    if-eqz v1, :cond_7

    .line 141
    const/4 v1, 0x1

    .line 142
    .restart local v1    # "result":I
    move-object v2, p1

    check-cast v2, [F

    array-length v3, v2

    :goto_1
    if-ge v0, v3, :cond_6

    aget v4, v2, v0

    .line 143
    .local v4, "item":F
    mul-int/lit8 v5, v1, 0x1f

    invoke-virtual {p0, v4}, Lio/flutter/plugins/sharedpreferences/MessagesAsyncPigeonUtils;->floatHash(F)I

    move-result v6

    add-int v1, v5, v6

    .line 142
    .end local v4    # "item":F
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 145
    :cond_6
    move v0, v1

    .end local v1    # "result":I
    goto/16 :goto_5

    .line 147
    :cond_7
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_9

    .line 148
    const/4 v1, 0x1

    .line 149
    .restart local v1    # "result":I
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    :goto_2
    if-ge v0, v3, :cond_8

    aget-object v4, v2, v0

    .line 150
    .local v4, "item":Ljava/lang/Object;
    mul-int/lit8 v5, v1, 0x1f

    invoke-virtual {p0, v4}, Lio/flutter/plugins/sharedpreferences/MessagesAsyncPigeonUtils;->deepHash(Ljava/lang/Object;)I

    move-result v6

    add-int v1, v5, v6

    .line 149
    .end local v4    # "item":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 152
    :cond_8
    move v0, v1

    .end local v1    # "result":I
    goto/16 :goto_5

    .line 154
    :cond_9
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_b

    .line 155
    const/4 v0, 0x1

    .line 156
    .local v0, "result":I
    move-object v1, p1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 157
    .local v2, "item":Ljava/lang/Object;
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v2}, Lio/flutter/plugins/sharedpreferences/MessagesAsyncPigeonUtils;->deepHash(Ljava/lang/Object;)I

    move-result v4

    add-int v0, v3, v4

    .end local v2    # "item":Ljava/lang/Object;
    goto :goto_3

    .line 159
    :cond_a
    nop

    .end local v0    # "result":I
    goto :goto_5

    .line 161
    :cond_b
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_d

    .line 162
    const/4 v0, 0x0

    .line 163
    .restart local v0    # "result":I
    move-object v1, p1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 164
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/flutter/plugins/sharedpreferences/MessagesAsyncPigeonUtils;->deepHash(Ljava/lang/Object;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x1f

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/flutter/plugins/sharedpreferences/MessagesAsyncPigeonUtils;->deepHash(Ljava/lang/Object;)I

    move-result v4

    xor-int/2addr v3, v4

    add-int/2addr v0, v3

    .end local v2    # "entry":Ljava/util/Map$Entry;
    goto :goto_4

    .line 166
    :cond_c
    nop

    .end local v0    # "result":I
    goto :goto_5

    .line 168
    :cond_d
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_e

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/flutter/plugins/sharedpreferences/MessagesAsyncPigeonUtils;->doubleHash(D)I

    move-result v0

    goto :goto_5

    .line 169
    :cond_e
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lio/flutter/plugins/sharedpreferences/MessagesAsyncPigeonUtils;->floatHash(F)I

    move-result v0

    goto :goto_5

    .line 170
    :cond_f
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 128
    :goto_5
    return v0
.end method

.method public final doubleEquals(DD)Z
    .locals 7
    .param p1, "a"    # D
    .param p3, "b"    # D

    .line 32
    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-eqz v2, :cond_1

    move-wide v5, v0

    goto :goto_1

    :cond_1
    move-wide v5, p1

    :goto_1
    cmpg-double v2, p3, v0

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    move v2, v4

    :goto_2
    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move-wide v0, p3

    :goto_3
    cmpg-double v0, v5, v0

    if-nez v0, :cond_4

    move v0, v3

    goto :goto_4

    :cond_4
    move v0, v4

    :goto_4
    if-nez v0, :cond_6

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    move v3, v4

    :cond_6
    :goto_5
    return v3
.end method

.method public final doubleHash(D)I
    .locals 6
    .param p1, "d"    # D

    .line 42
    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-wide v0, p1

    .line 43
    .local v0, "normalized":D
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 44
    .local v2, "bits":J
    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v4, v2

    long-to-int v4, v4

    return v4
.end method

.method public final floatEquals(FF)Z
    .locals 5
    .param p1, "a"    # F
    .param p2, "b"    # F

    .line 37
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, p1

    :goto_1
    cmpg-float v4, p2, v0

    if-nez v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    move v0, p2

    :goto_3
    cmpg-float v0, v1, v0

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    move v0, v3

    :goto_4
    if-nez v0, :cond_6

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    move v2, v3

    :cond_6
    :goto_5
    return v2
.end method

.method public final floatHash(F)I
    .locals 2
    .param p1, "f"    # F

    .line 49
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, p1

    .line 50
    .local v0, "normalized":F
    :goto_1
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    return v1
.end method

.method public final wrapError(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 6
    .param p1, "exception"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    instance-of v0, p1, Lio/flutter/plugins/sharedpreferences/SharedPreferencesError;

    if-eqz v0, :cond_0

    .line 21
    move-object v0, p1

    check-cast v0, Lio/flutter/plugins/sharedpreferences/SharedPreferencesError;

    invoke-virtual {v0}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesError;->getCode()Ljava/lang/String;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lio/flutter/plugins/sharedpreferences/SharedPreferencesError;

    invoke-virtual {v1}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesError;->getMessage()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesError;

    invoke-virtual {v2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesError;->getDetails()Ljava/lang/Object;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 24
    nop

    .line 26
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cause: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", Stacktrace: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 24
    nop

    .line 23
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 20
    :goto_0
    return-object v0
.end method

.method public final wrapResult(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p1, "result"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 16
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
