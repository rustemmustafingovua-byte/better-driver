.class public Lio/flutter/plugin/common/StandardMessageCodec;
.super Ljava/lang/Object;
.source "StandardMessageCodec.java"

# interfaces
.implements Lio/flutter/plugin/common/MessageCodec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugin/common/StandardMessageCodec$ExposedByteArrayOutputStream;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/flutter/plugin/common/MessageCodec<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final BIGINT:B = 0x5t

.field private static final BYTE_ARRAY:B = 0x8t

.field private static final DOUBLE:B = 0x6t

.field private static final DOUBLE_ARRAY:B = 0xbt

.field private static final FALSE:B = 0x2t

.field private static final FLOAT_ARRAY:B = 0xet

.field public static final INSTANCE:Lio/flutter/plugin/common/StandardMessageCodec;

.field private static final INT:B = 0x3t

.field private static final INT_ARRAY:B = 0x9t

.field private static final LIST:B = 0xct

.field private static final LITTLE_ENDIAN:Z

.field private static final LONG:B = 0x4t

.field private static final LONG_ARRAY:B = 0xat

.field private static final MAP:B = 0xdt

.field private static final NULL:B = 0x0t

.field private static final STRING:B = 0x7t

.field private static final TAG:Ljava/lang/String; = "StandardMessageCodec#"

.field private static final TRUE:B = 0x1t

.field private static final UTF8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 67
    new-instance v0, Lio/flutter/plugin/common/StandardMessageCodec;

    invoke-direct {v0}, Lio/flutter/plugin/common/StandardMessageCodec;-><init>()V

    sput-object v0, Lio/flutter/plugin/common/StandardMessageCodec;->INSTANCE:Lio/flutter/plugin/common/StandardMessageCodec;

    .line 96
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lio/flutter/plugin/common/StandardMessageCodec;->LITTLE_ENDIAN:Z

    .line 97
    const-string v0, "UTF8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lio/flutter/plugin/common/StandardMessageCodec;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static readAlignment(Ljava/nio/ByteBuffer;I)V
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "alignment"    # I

    .line 326
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    rem-int/2addr v0, p1

    .line 327
    .local v0, "mod":I
    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 330
    :cond_0
    return-void
.end method

.method protected static readBytes(Ljava/nio/ByteBuffer;)[B
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 318
    invoke-static {p0}, Lio/flutter/plugin/common/StandardMessageCodec;->readSize(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 319
    .local v0, "length":I
    new-array v1, v0, [B

    .line 320
    .local v1, "bytes":[B
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 321
    return-object v1
.end method

.method protected static readSize(Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 302
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 305
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 306
    .local v0, "value":I
    const/16 v1, 0xfe

    if-ge v0, v1, :cond_0

    .line 307
    return v0

    .line 308
    :cond_0
    if-ne v0, v1, :cond_1

    .line 309
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v1

    return v1

    .line 311
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    return v1

    .line 303
    .end local v0    # "value":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message corrupted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static writeAlignment(Ljava/io/ByteArrayOutputStream;I)V
    .locals 3
    .param p0, "stream"    # Ljava/io/ByteArrayOutputStream;
    .param p1, "alignment"    # I

    .line 204
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    rem-int/2addr v0, p1

    .line 205
    .local v0, "mod":I
    if-eqz v0, :cond_0

    .line 206
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sub-int v2, p1, v0

    if-ge v1, v2, :cond_0

    .line 207
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected static writeBytes(Ljava/io/ByteArrayOutputStream;[B)V
    .locals 2
    .param p0, "stream"    # Ljava/io/ByteArrayOutputStream;
    .param p1, "bytes"    # [B

    .line 194
    array-length v0, p1

    invoke-static {p0, v0}, Lio/flutter/plugin/common/StandardMessageCodec;->writeSize(Ljava/io/ByteArrayOutputStream;I)V

    .line 195
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 196
    return-void
.end method

.method protected static writeChar(Ljava/io/ByteArrayOutputStream;I)V
    .locals 1
    .param p0, "stream"    # Ljava/io/ByteArrayOutputStream;
    .param p1, "value"    # I

    .line 135
    sget-boolean v0, Lio/flutter/plugin/common/StandardMessageCodec;->LITTLE_ENDIAN:Z

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 137
    ushr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 139
    :cond_0
    ushr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 140
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 142
    :goto_0
    return-void
.end method

.method protected static writeDouble(Ljava/io/ByteArrayOutputStream;D)V
    .locals 2
    .param p0, "stream"    # Ljava/io/ByteArrayOutputStream;
    .param p1, "value"    # D

    .line 189
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lio/flutter/plugin/common/StandardMessageCodec;->writeLong(Ljava/io/ByteArrayOutputStream;J)V

    .line 190
    return-void
.end method

.method protected static writeFloat(Ljava/io/ByteArrayOutputStream;F)V
    .locals 1
    .param p0, "stream"    # Ljava/io/ByteArrayOutputStream;
    .param p1, "value"    # F

    .line 184
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p0, v0}, Lio/flutter/plugin/common/StandardMessageCodec;->writeInt(Ljava/io/ByteArrayOutputStream;I)V

    .line 185
    return-void
.end method

.method protected static writeInt(Ljava/io/ByteArrayOutputStream;I)V
    .locals 1
    .param p0, "stream"    # Ljava/io/ByteArrayOutputStream;
    .param p1, "value"    # I

    .line 146
    sget-boolean v0, Lio/flutter/plugin/common/StandardMessageCodec;->LITTLE_ENDIAN:Z

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 148
    ushr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 149
    ushr-int/lit8 v0, p1, 0x10

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 150
    ushr-int/lit8 v0, p1, 0x18

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 152
    :cond_0
    ushr-int/lit8 v0, p1, 0x18

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 153
    ushr-int/lit8 v0, p1, 0x10

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 154
    ushr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 155
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 157
    :goto_0
    return-void
.end method

.method protected static writeLong(Ljava/io/ByteArrayOutputStream;J)V
    .locals 9
    .param p0, "stream"    # Ljava/io/ByteArrayOutputStream;
    .param p1, "value"    # J

    .line 161
    sget-boolean v0, Lio/flutter/plugin/common/StandardMessageCodec;->LITTLE_ENDIAN:Z

    const/16 v1, 0x8

    const/16 v2, 0x10

    const/16 v3, 0x18

    const/16 v4, 0x20

    const/16 v5, 0x28

    const/16 v6, 0x30

    const/16 v7, 0x38

    if-eqz v0, :cond_0

    .line 162
    long-to-int v0, p1

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 163
    ushr-long v0, p1, v1

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 164
    ushr-long v0, p1, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 165
    ushr-long v0, p1, v3

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 166
    ushr-long v0, p1, v4

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 167
    ushr-long v0, p1, v5

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 168
    ushr-long v0, p1, v6

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 169
    ushr-long v0, p1, v7

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 171
    :cond_0
    ushr-long v7, p1, v7

    long-to-int v0, v7

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 172
    ushr-long v6, p1, v6

    long-to-int v0, v6

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 173
    ushr-long v5, p1, v5

    long-to-int v0, v5

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 174
    ushr-long v4, p1, v4

    long-to-int v0, v4

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 175
    ushr-long v3, p1, v3

    long-to-int v0, v3

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 176
    ushr-long v2, p1, v2

    long-to-int v0, v2

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 177
    ushr-long v0, p1, v1

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 178
    long-to-int v0, p1

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 180
    :goto_0
    return-void
.end method

.method protected static writeSize(Ljava/io/ByteArrayOutputStream;I)V
    .locals 2
    .param p0, "stream"    # Ljava/io/ByteArrayOutputStream;
    .param p1, "value"    # I

    .line 119
    if-gez p1, :cond_0

    .line 120
    const-string v0, "StandardMessageCodec#"

    const-string v1, "Attempted to write a negative size."

    invoke-static {v0, v1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_0
    const/16 v0, 0xfe

    if-ge p1, v0, :cond_1

    .line 123
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 124
    :cond_1
    const v1, 0xffff

    if-gt p1, v1, :cond_2

    .line 125
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 126
    invoke-static {p0, p1}, Lio/flutter/plugin/common/StandardMessageCodec;->writeChar(Ljava/io/ByteArrayOutputStream;I)V

    goto :goto_0

    .line 128
    :cond_2
    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 129
    invoke-static {p0, p1}, Lio/flutter/plugin/common/StandardMessageCodec;->writeInt(Ljava/io/ByteArrayOutputStream;I)V

    .line 131
    :goto_0
    return-void
.end method


# virtual methods
.method public decodeMessage(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 3
    .param p1, "message"    # Ljava/nio/ByteBuffer;

    .line 85
    if-nez p1, :cond_0

    .line 86
    const/4 v0, 0x0

    return-object v0

    .line 88
    :cond_0
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 89
    invoke-virtual {p0, p1}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    .line 90
    .local v0, "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_1

    .line 93
    return-object v0

    .line 91
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Message corrupted"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public encodeMessage(Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .locals 5
    .param p1, "message"    # Ljava/lang/Object;

    .line 72
    if-nez p1, :cond_0

    .line 73
    const/4 v0, 0x0

    return-object v0

    .line 75
    :cond_0
    new-instance v0, Lio/flutter/plugin/common/StandardMessageCodec$ExposedByteArrayOutputStream;

    invoke-direct {v0}, Lio/flutter/plugin/common/StandardMessageCodec$ExposedByteArrayOutputStream;-><init>()V

    .line 76
    .local v0, "stream":Lio/flutter/plugin/common/StandardMessageCodec$ExposedByteArrayOutputStream;
    invoke-virtual {p0, v0, p1}, Lio/flutter/plugin/common/StandardMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 77
    invoke-virtual {v0}, Lio/flutter/plugin/common/StandardMessageCodec$ExposedByteArrayOutputStream;->size()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 78
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Lio/flutter/plugin/common/StandardMessageCodec$ExposedByteArrayOutputStream;->buffer()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Lio/flutter/plugin/common/StandardMessageCodec$ExposedByteArrayOutputStream;->size()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 79
    return-object v1
.end method

.method protected final readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 335
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 339
    .local v0, "type":B
    invoke-virtual {p0, v0, p1}, Lio/flutter/plugin/common/StandardMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 336
    .end local v0    # "type":B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message corrupted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 5
    .param p1, "type"    # B
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 351
    const/4 v0, 0x4

    const/16 v1, 0x8

    packed-switch p1, :pswitch_data_0

    .line 449
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message corrupted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :pswitch_0
    invoke-static {p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readSize(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 441
    .local v1, "length":I
    new-array v2, v1, [F

    .line 442
    .local v2, "array":[F
    invoke-static {p2, v0}, Lio/flutter/plugin/common/StandardMessageCodec;->readAlignment(Ljava/nio/ByteBuffer;I)V

    .line 443
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    .line 444
    move-object v0, v2

    .line 445
    .local v0, "result":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    mul-int/lit8 v4, v1, 0x4

    add-int/2addr v3, v4

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 446
    goto/16 :goto_2

    .line 430
    .end local v0    # "result":Ljava/lang/Object;
    .end local v1    # "length":I
    .end local v2    # "array":[F
    :pswitch_1
    invoke-static {p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readSize(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 431
    .local v0, "size":I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 432
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 433
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 435
    .end local v2    # "i":I
    :cond_0
    move-object v2, v1

    .line 436
    .local v2, "result":Ljava/lang/Object;
    move-object v0, v2

    goto/16 :goto_2

    .line 420
    .end local v0    # "size":I
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v2    # "result":Ljava/lang/Object;
    :pswitch_2
    invoke-static {p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readSize(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 421
    .restart local v0    # "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 422
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 423
    invoke-virtual {p0, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 425
    .end local v2    # "i":I
    :cond_1
    move-object v2, v1

    .line 426
    .local v2, "result":Ljava/lang/Object;
    move-object v0, v2

    goto/16 :goto_2

    .line 410
    .end local v0    # "size":I
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v2    # "result":Ljava/lang/Object;
    :pswitch_3
    invoke-static {p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readSize(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 411
    .local v0, "length":I
    new-array v2, v0, [D

    .line 412
    .local v2, "array":[D
    invoke-static {p2, v1}, Lio/flutter/plugin/common/StandardMessageCodec;->readAlignment(Ljava/nio/ByteBuffer;I)V

    .line 413
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/nio/DoubleBuffer;->get([D)Ljava/nio/DoubleBuffer;

    .line 414
    move-object v1, v2

    .line 415
    .local v1, "result":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    mul-int/lit8 v4, v0, 0x8

    add-int/2addr v3, v4

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 416
    move-object v0, v1

    goto/16 :goto_2

    .line 400
    .end local v0    # "length":I
    .end local v1    # "result":Ljava/lang/Object;
    .end local v2    # "array":[D
    :pswitch_4
    invoke-static {p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readSize(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 401
    .restart local v0    # "length":I
    new-array v2, v0, [J

    .line 402
    .local v2, "array":[J
    invoke-static {p2, v1}, Lio/flutter/plugin/common/StandardMessageCodec;->readAlignment(Ljava/nio/ByteBuffer;I)V

    .line 403
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    .line 404
    move-object v1, v2

    .line 405
    .restart local v1    # "result":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    mul-int/lit8 v4, v0, 0x8

    add-int/2addr v3, v4

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 406
    move-object v0, v1

    goto/16 :goto_2

    .line 390
    .end local v0    # "length":I
    .end local v1    # "result":Ljava/lang/Object;
    .end local v2    # "array":[J
    :pswitch_5
    invoke-static {p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readSize(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 391
    .local v1, "length":I
    new-array v2, v1, [I

    .line 392
    .local v2, "array":[I
    invoke-static {p2, v0}, Lio/flutter/plugin/common/StandardMessageCodec;->readAlignment(Ljava/nio/ByteBuffer;I)V

    .line 393
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    .line 394
    move-object v0, v2

    .line 395
    .local v0, "result":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    mul-int/lit8 v4, v1, 0x4

    add-int/2addr v3, v4

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 396
    goto :goto_2

    .line 385
    .end local v0    # "result":Ljava/lang/Object;
    .end local v1    # "length":I
    .end local v2    # "array":[I
    :pswitch_6
    invoke-static {p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 386
    .restart local v0    # "result":Ljava/lang/Object;
    goto :goto_2

    .line 379
    .end local v0    # "result":Ljava/lang/Object;
    :pswitch_7
    invoke-static {p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 380
    .local v0, "bytes":[B
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lio/flutter/plugin/common/StandardMessageCodec;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 381
    .local v1, "result":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_2

    .line 374
    .end local v0    # "bytes":[B
    .end local v1    # "result":Ljava/lang/Object;
    :pswitch_8
    invoke-static {p2, v1}, Lio/flutter/plugin/common/StandardMessageCodec;->readAlignment(Ljava/nio/ByteBuffer;I)V

    .line 375
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 376
    .local v0, "result":Ljava/lang/Object;
    goto :goto_2

    .line 369
    .end local v0    # "result":Ljava/lang/Object;
    :pswitch_9
    invoke-static {p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 370
    .local v0, "hex":[B
    new-instance v1, Ljava/math/BigInteger;

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lio/flutter/plugin/common/StandardMessageCodec;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 371
    .restart local v1    # "result":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_2

    .line 365
    .end local v0    # "hex":[B
    .end local v1    # "result":Ljava/lang/Object;
    :pswitch_a
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 366
    .local v0, "result":Ljava/lang/Object;
    goto :goto_2

    .line 362
    .end local v0    # "result":Ljava/lang/Object;
    :pswitch_b
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 363
    .restart local v0    # "result":Ljava/lang/Object;
    goto :goto_2

    .line 359
    .end local v0    # "result":Ljava/lang/Object;
    :pswitch_c
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 360
    .restart local v0    # "result":Ljava/lang/Object;
    goto :goto_2

    .line 356
    .end local v0    # "result":Ljava/lang/Object;
    :pswitch_d
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 357
    .restart local v0    # "result":Ljava/lang/Object;
    goto :goto_2

    .line 353
    .end local v0    # "result":Ljava/lang/Object;
    :pswitch_e
    const/4 v0, 0x0

    .line 354
    .restart local v0    # "result":Ljava/lang/Object;
    nop

    .line 451
    :goto_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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

.method protected writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "value"    # Ljava/lang/Object;

    .line 220
    const/4 v0, 0x0

    if-eqz p2, :cond_18

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_9

    .line 222
    :cond_0
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 223
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_a

    .line 224
    :cond_2
    instance-of v1, p2, Ljava/lang/Number;

    const/4 v2, 0x4

    const/16 v3, 0x8

    if-eqz v1, :cond_9

    .line 225
    instance-of v0, p2, Ljava/lang/Integer;

    if-nez v0, :cond_8

    instance-of v0, p2, Ljava/lang/Short;

    if-nez v0, :cond_8

    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_3

    goto :goto_2

    .line 228
    :cond_3
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 229
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 230
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lio/flutter/plugin/common/StandardMessageCodec;->writeLong(Ljava/io/ByteArrayOutputStream;J)V

    goto/16 :goto_a

    .line 231
    :cond_4
    instance-of v0, p2, Ljava/lang/Float;

    if-nez v0, :cond_7

    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_5

    goto :goto_1

    .line 235
    :cond_5
    instance-of v0, p2, Ljava/math/BigInteger;

    if-eqz v0, :cond_6

    .line 236
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 237
    move-object v0, p2

    check-cast v0, Ljava/math/BigInteger;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lio/flutter/plugin/common/StandardMessageCodec;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {p1, v0}, Lio/flutter/plugin/common/StandardMessageCodec;->writeBytes(Ljava/io/ByteArrayOutputStream;[B)V

    goto/16 :goto_a

    .line 239
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported Number type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_7
    :goto_1
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 233
    invoke-static {p1, v3}, Lio/flutter/plugin/common/StandardMessageCodec;->writeAlignment(Ljava/io/ByteArrayOutputStream;I)V

    .line 234
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lio/flutter/plugin/common/StandardMessageCodec;->writeDouble(Ljava/io/ByteArrayOutputStream;D)V

    goto/16 :goto_a

    .line 226
    :cond_8
    :goto_2
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 227
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lio/flutter/plugin/common/StandardMessageCodec;->writeInt(Ljava/io/ByteArrayOutputStream;I)V

    goto/16 :goto_a

    .line 241
    :cond_9
    instance-of v1, p2, Ljava/lang/CharSequence;

    if-eqz v1, :cond_a

    .line 242
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 243
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lio/flutter/plugin/common/StandardMessageCodec;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {p1, v0}, Lio/flutter/plugin/common/StandardMessageCodec;->writeBytes(Ljava/io/ByteArrayOutputStream;[B)V

    goto/16 :goto_a

    .line 244
    :cond_a
    instance-of v1, p2, [B

    if-eqz v1, :cond_b

    .line 245
    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 246
    move-object v0, p2

    check-cast v0, [B

    invoke-static {p1, v0}, Lio/flutter/plugin/common/StandardMessageCodec;->writeBytes(Ljava/io/ByteArrayOutputStream;[B)V

    goto/16 :goto_a

    .line 247
    :cond_b
    instance-of v1, p2, [I

    if-eqz v1, :cond_d

    .line 248
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 249
    move-object v1, p2

    check-cast v1, [I

    .line 250
    .local v1, "array":[I
    array-length v3, v1

    invoke-static {p1, v3}, Lio/flutter/plugin/common/StandardMessageCodec;->writeSize(Ljava/io/ByteArrayOutputStream;I)V

    .line 251
    invoke-static {p1, v2}, Lio/flutter/plugin/common/StandardMessageCodec;->writeAlignment(Ljava/io/ByteArrayOutputStream;I)V

    .line 252
    array-length v2, v1

    :goto_3
    if-ge v0, v2, :cond_c

    aget v3, v1, v0

    .line 253
    .local v3, "n":I
    invoke-static {p1, v3}, Lio/flutter/plugin/common/StandardMessageCodec;->writeInt(Ljava/io/ByteArrayOutputStream;I)V

    .line 252
    .end local v3    # "n":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 255
    .end local v1    # "array":[I
    :cond_c
    goto/16 :goto_a

    :cond_d
    instance-of v1, p2, [J

    if-eqz v1, :cond_f

    .line 256
    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 257
    move-object v1, p2

    check-cast v1, [J

    .line 258
    .local v1, "array":[J
    array-length v2, v1

    invoke-static {p1, v2}, Lio/flutter/plugin/common/StandardMessageCodec;->writeSize(Ljava/io/ByteArrayOutputStream;I)V

    .line 259
    invoke-static {p1, v3}, Lio/flutter/plugin/common/StandardMessageCodec;->writeAlignment(Ljava/io/ByteArrayOutputStream;I)V

    .line 260
    array-length v2, v1

    :goto_4
    if-ge v0, v2, :cond_e

    aget-wide v3, v1, v0

    .line 261
    .local v3, "n":J
    invoke-static {p1, v3, v4}, Lio/flutter/plugin/common/StandardMessageCodec;->writeLong(Ljava/io/ByteArrayOutputStream;J)V

    .line 260
    .end local v3    # "n":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 263
    .end local v1    # "array":[J
    :cond_e
    goto/16 :goto_a

    :cond_f
    instance-of v1, p2, [D

    if-eqz v1, :cond_11

    .line 264
    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 265
    move-object v1, p2

    check-cast v1, [D

    .line 266
    .local v1, "array":[D
    array-length v2, v1

    invoke-static {p1, v2}, Lio/flutter/plugin/common/StandardMessageCodec;->writeSize(Ljava/io/ByteArrayOutputStream;I)V

    .line 267
    invoke-static {p1, v3}, Lio/flutter/plugin/common/StandardMessageCodec;->writeAlignment(Ljava/io/ByteArrayOutputStream;I)V

    .line 268
    array-length v2, v1

    :goto_5
    if-ge v0, v2, :cond_10

    aget-wide v3, v1, v0

    .line 269
    .local v3, "d":D
    invoke-static {p1, v3, v4}, Lio/flutter/plugin/common/StandardMessageCodec;->writeDouble(Ljava/io/ByteArrayOutputStream;D)V

    .line 268
    .end local v3    # "d":D
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 271
    .end local v1    # "array":[D
    :cond_10
    goto/16 :goto_a

    :cond_11
    instance-of v1, p2, Ljava/util/List;

    if-eqz v1, :cond_13

    .line 272
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 273
    move-object v0, p2

    check-cast v0, Ljava/util/List;

    .line 274
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p1, v1}, Lio/flutter/plugin/common/StandardMessageCodec;->writeSize(Ljava/io/ByteArrayOutputStream;I)V

    .line 275
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 276
    .local v2, "o":Ljava/lang/Object;
    invoke-virtual {p0, p1, v2}, Lio/flutter/plugin/common/StandardMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 277
    .end local v2    # "o":Ljava/lang/Object;
    goto :goto_6

    .line 278
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_12
    goto/16 :goto_a

    :cond_13
    instance-of v1, p2, Ljava/util/Map;

    if-eqz v1, :cond_15

    .line 279
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 280
    move-object v0, p2

    check-cast v0, Ljava/util/Map;

    .line 281
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {p1, v1}, Lio/flutter/plugin/common/StandardMessageCodec;->writeSize(Ljava/io/ByteArrayOutputStream;I)V

    .line 282
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 283
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lio/flutter/plugin/common/StandardMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 284
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lio/flutter/plugin/common/StandardMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    .line 285
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    goto :goto_7

    .line 286
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_14
    goto :goto_a

    :cond_15
    instance-of v1, p2, [F

    if-eqz v1, :cond_17

    .line 287
    const/16 v1, 0xe

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 288
    move-object v1, p2

    check-cast v1, [F

    .line 289
    .local v1, "array":[F
    array-length v3, v1

    invoke-static {p1, v3}, Lio/flutter/plugin/common/StandardMessageCodec;->writeSize(Ljava/io/ByteArrayOutputStream;I)V

    .line 290
    invoke-static {p1, v2}, Lio/flutter/plugin/common/StandardMessageCodec;->writeAlignment(Ljava/io/ByteArrayOutputStream;I)V

    .line 291
    array-length v2, v1

    :goto_8
    if-ge v0, v2, :cond_16

    aget v3, v1, v0

    .line 292
    .local v3, "f":F
    invoke-static {p1, v3}, Lio/flutter/plugin/common/StandardMessageCodec;->writeFloat(Ljava/io/ByteArrayOutputStream;F)V

    .line 291
    .end local v3    # "f":F
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 294
    .end local v1    # "array":[F
    :cond_16
    goto :goto_a

    .line 295
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported value: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' of type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 296
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_18
    :goto_9
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 298
    :goto_a
    return-void
.end method
