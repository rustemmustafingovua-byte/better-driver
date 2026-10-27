.class public final Lcom/abovevacant/epitaph/io/WireReader;
.super Ljava/lang/Object;
.source "WireReader.java"


# static fields
.field public static final WIRETYPE_FIXED32:I = 0x5

.field public static final WIRETYPE_FIXED64:I = 0x1

.field public static final WIRETYPE_LENGTH_DELIMITED:I = 0x2

.field public static final WIRETYPE_VARINT:I


# instance fields
.field private final buffer:[B

.field private final limit:I

.field private position:I


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "data"
        }
    .end annotation

    .line 32
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/abovevacant/epitaph/io/WireReader;-><init>([BII)V

    .line 33
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "data",
            "offset",
            "length"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/abovevacant/epitaph/io/WireReader;->buffer:[B

    .line 37
    iput p2, p0, Lcom/abovevacant/epitaph/io/WireReader;->position:I

    .line 38
    add-int v0, p2, p3

    iput v0, p0, Lcom/abovevacant/epitaph/io/WireReader;->limit:I

    .line 39
    return-void
.end method

.method public static expectWireType(III)V
    .locals 4
    .param p0, "fieldNumber"    # I
    .param p1, "expected"    # I
    .param p2, "actual"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "fieldNumber",
            "expected",
            "actual"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    if-ne p1, p2, :cond_0

    .line 189
    return-void

    .line 176
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 180
    invoke-static {p1}, Lcom/abovevacant/epitaph/io/WireReader;->wireTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (wire type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") but got "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 184
    invoke-static {p2}, Lcom/abovevacant/epitaph/io/WireReader;->wireTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromInputStream(Ljava/io/InputStream;)Lcom/abovevacant/epitaph/io/WireReader;
    .locals 5
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "stream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 45
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 47
    .local v1, "buf":[B
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "bytesRead":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 48
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 50
    :cond_0
    new-instance v2, Lcom/abovevacant/epitaph/io/WireReader;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/abovevacant/epitaph/io/WireReader;-><init>([B)V

    return-object v2
.end method

.method public static getFieldNumber(I)I
    .locals 1
    .param p0, "tag"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tag"
        }
    .end annotation

    .line 75
    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method

.method public static getWireType(I)I
    .locals 1
    .param p0, "tag"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tag"
        }
    .end annotation

    .line 80
    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method private static wireTypeName(I)Ljava/lang/String;
    .locals 1
    .param p0, "wireType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "wireType"
        }
    .end annotation

    .line 192
    packed-switch p0, :pswitch_data_0

    .line 202
    :pswitch_0
    const-string v0, "unknown"

    return-object v0

    .line 200
    :pswitch_1
    const-string v0, "fixed32"

    return-object v0

    .line 198
    :pswitch_2
    const-string v0, "length-delimited"

    return-object v0

    .line 196
    :pswitch_3
    const-string v0, "fixed64"

    return-object v0

    .line 194
    :pswitch_4
    const-string v0, "varint"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public hasRemaining()Z
    .locals 2

    .line 54
    iget v0, p0, Lcom/abovevacant/epitaph/io/WireReader;->position:I

    iget v1, p0, Lcom/abovevacant/epitaph/io/WireReader;->limit:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readBool()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readVarInt()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readBytes()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readVarInt32()I

    move-result v0

    .line 137
    .local v0, "length":I
    if-ltz v0, :cond_1

    .line 140
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->remaining()I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 143
    new-array v1, v0, [B

    .line 144
    .local v1, "result":[B
    iget-object v2, p0, Lcom/abovevacant/epitaph/io/WireReader;->buffer:[B

    iget v3, p0, Lcom/abovevacant/epitaph/io/WireReader;->position:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    iget v2, p0, Lcom/abovevacant/epitaph/io/WireReader;->position:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/abovevacant/epitaph/io/WireReader;->position:I

    .line 146
    return-object v1

    .line 141
    .end local v1    # "result":[B
    :cond_0
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "Not enough bytes for length-delimited field"

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Negative length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readFixed32()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, "result":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 129
    iget-object v3, p0, Lcom/abovevacant/epitaph/io/WireReader;->buffer:[B

    iget v4, p0, Lcom/abovevacant/epitaph/io/WireReader;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/abovevacant/epitaph/io/WireReader;->position:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v2, 0x8

    shl-int/2addr v3, v4

    or-int/2addr v0, v3

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    .end local v2    # "i":I
    :cond_0
    return v0

    .line 125
    .end local v0    # "result":I
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "Not enough bytes for fixed32"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readFixed64()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    .line 115
    const-wide/16 v2, 0x0

    .line 116
    .local v2, "result":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 117
    iget-object v4, p0, Lcom/abovevacant/epitaph/io/WireReader;->buffer:[B

    iget v5, p0, Lcom/abovevacant/epitaph/io/WireReader;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/abovevacant/epitaph/io/WireReader;->position:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    mul-int/lit8 v6, v0, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    .end local v0    # "i":I
    :cond_0
    return-wide v2

    .line 113
    .end local v2    # "result":J
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "Not enough bytes for fixed64"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readMessage()Lcom/abovevacant/epitaph/io/WireReader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readBytes()[B

    move-result-object v0

    .line 162
    .local v0, "data":[B
    new-instance v1, Lcom/abovevacant/epitaph/io/WireReader;

    invoke-direct {v1, v0}, Lcom/abovevacant/epitaph/io/WireReader;-><init>([B)V

    return-object v1
.end method

.method public readString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readBytes()[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public readTag()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    const/4 v0, 0x0

    return v0

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readVarInt()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public readVarInt()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    const-wide/16 v0, 0x0

    .line 90
    .local v0, "result":J
    const/4 v2, 0x0

    .line 91
    .local v2, "shift":I
    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_2

    .line 92
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    iget-object v3, p0, Lcom/abovevacant/epitaph/io/WireReader;->buffer:[B

    iget v4, p0, Lcom/abovevacant/epitaph/io/WireReader;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/abovevacant/epitaph/io/WireReader;->position:I

    aget-byte v3, v3, v4

    .line 96
    .local v3, "b":B
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    .line 97
    and-int/lit16 v4, v3, 0x80

    if-nez v4, :cond_0

    .line 98
    return-wide v0

    .line 100
    :cond_0
    nop

    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x7

    .line 101
    goto :goto_0

    .line 93
    :cond_1
    new-instance v3, Ljava/io/EOFException;

    const-string v4, "Truncated varint"

    invoke-direct {v3, v4}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 102
    :cond_2
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Malformed varint"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public readVarInt32()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readVarInt()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public remaining()I
    .locals 2

    .line 58
    iget v0, p0, Lcom/abovevacant/epitaph/io/WireReader;->limit:I

    iget v1, p0, Lcom/abovevacant/epitaph/io/WireReader;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public skipField(I)V
    .locals 3
    .param p1, "wireType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "wireType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    packed-switch p1, :pswitch_data_0

    .line 232
    :pswitch_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown wire type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :pswitch_1
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 229
    iget v0, p0, Lcom/abovevacant/epitaph/io/WireReader;->position:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/abovevacant/epitaph/io/WireReader;->position:I

    .line 230
    goto :goto_0

    .line 227
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "Not enough bytes to skip fixed32"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :pswitch_2
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readVarInt32()I

    move-result v0

    .line 220
    .local v0, "length":I
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->remaining()I

    move-result v1

    if-lt v1, v0, :cond_1

    .line 223
    iget v1, p0, Lcom/abovevacant/epitaph/io/WireReader;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/abovevacant/epitaph/io/WireReader;->position:I

    .line 224
    goto :goto_0

    .line 221
    :cond_1
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "Not enough bytes to skip length-delimited"

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 213
    .end local v0    # "length":I
    :pswitch_3
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_2

    .line 216
    iget v0, p0, Lcom/abovevacant/epitaph/io/WireReader;->position:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/abovevacant/epitaph/io/WireReader;->position:I

    .line 217
    goto :goto_0

    .line 214
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "Not enough bytes to skip fixed64"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :pswitch_4
    invoke-virtual {p0}, Lcom/abovevacant/epitaph/io/WireReader;->readVarInt()J

    .line 211
    nop

    .line 234
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
