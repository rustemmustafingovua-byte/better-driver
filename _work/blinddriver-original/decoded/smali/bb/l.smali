.class public final Lbb/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbb/u;


# instance fields
.field public l:B

.field public final m:Lbb/p;

.field public final n:Ljava/util/zip/Inflater;

.field public final o:Lbb/m;

.field public final p:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(Lbb/i;)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbb/p;

    invoke-direct {v0, p1}, Lbb/p;-><init>(Lbb/u;)V

    iput-object v0, p0, Lbb/l;->m:Lbb/p;

    new-instance p1, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object p1, p0, Lbb/l;->n:Ljava/util/zip/Inflater;

    new-instance v1, Lbb/m;

    invoke-direct {v1, v0, p1}, Lbb/m;-><init>(Lbb/p;Ljava/util/zip/Inflater;)V

    iput-object v1, p0, Lbb/l;->o:Lbb/m;

    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object p1, p0, Lbb/l;->p:Ljava/util/zip/CRC32;

    return-void
.end method

.method public static b(IILjava/lang/String;)V
    .locals 2

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": actual 0x"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ll9/a;->D(I)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x8

    invoke-static {p2, p1}, Lr9/k;->k0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " != expected 0x"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ll9/a;->D(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lr9/k;->k0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final c(Lbb/g;JJ)V
    .locals 4

    iget-object p1, p1, Lbb/g;->l:Lbb/q;

    invoke-static {p1}, Lj9/n;->d(Ljava/lang/Object;)V

    :goto_0
    iget v0, p1, Lbb/q;->c:I

    iget v1, p1, Lbb/q;->b:I

    sub-int v2, v0, v1

    int-to-long v2, v2

    cmp-long v2, p2, v2

    if-ltz v2, :cond_0

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr p2, v0

    iget-object p1, p1, Lbb/q;->f:Lbb/q;

    invoke-static {p1}, Lj9/n;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-lez v2, :cond_1

    iget v2, p1, Lbb/q;->b:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    long-to-int p2, v2

    iget p3, p1, Lbb/q;->c:I

    sub-int/2addr p3, p2

    int-to-long v2, p3

    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    iget-object v2, p0, Lbb/l;->p:Ljava/util/zip/CRC32;

    iget-object v3, p1, Lbb/q;->a:[B

    invoke-virtual {v2, v3, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long p2, p3

    sub-long/2addr p4, p2

    iget-object p1, p1, Lbb/q;->f:Lbb/q;

    invoke-static {p1}, Lj9/n;->d(Ljava/lang/Object;)V

    move-wide p2, v0

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final close()V
    .locals 0

    iget-object p0, p0, Lbb/l;->o:Lbb/m;

    invoke-virtual {p0}, Lbb/m;->close()V

    return-void
.end method

.method public final read(Lbb/g;J)J
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-wide/from16 v7, p2

    const-string v1, "sink"

    invoke-static {v6, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    cmp-long v3, v7, v1

    if-ltz v3, :cond_12

    if-nez v3, :cond_0

    return-wide v1

    :cond_0
    iget-byte v1, v0, Lbb/l;->l:B

    iget-object v9, v0, Lbb/l;->p:Ljava/util/zip/CRC32;

    const/4 v10, 0x1

    iget-object v11, v0, Lbb/l;->m:Lbb/p;

    const-wide/16 v17, -0x1

    if-nez v1, :cond_d

    const-wide/16 v1, 0xa

    invoke-virtual {v11, v1, v2}, Lbb/p;->M(J)V

    iget-object v1, v11, Lbb/p;->m:Lbb/g;

    const-wide/16 v2, 0x3

    invoke-virtual {v1, v2, v3}, Lbb/g;->getByte(J)B

    move-result v19

    shr-int/lit8 v2, v19, 0x1

    and-int/2addr v2, v10

    if-ne v2, v10, :cond_1

    move/from16 v20, v10

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    move/from16 v20, v2

    :goto_0
    if-eqz v20, :cond_2

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    invoke-virtual/range {v0 .. v5}, Lbb/l;->c(Lbb/g;JJ)V

    :cond_2
    invoke-virtual {v11}, Lbb/p;->readShort()S

    move-result v0

    const-string v2, "ID1ID2"

    const/16 v3, 0x1f8b

    invoke-static {v3, v0, v2}, Lbb/l;->b(IILjava/lang/String;)V

    const-wide/16 v2, 0x8

    invoke-virtual {v11, v2, v3}, Lbb/p;->skip(J)V

    shr-int/lit8 v0, v19, 0x2

    and-int/2addr v0, v10

    const v21, 0xff00

    const-wide/16 v12, 0x2

    if-ne v0, v10, :cond_5

    invoke-virtual {v11, v12, v13}, Lbb/p;->M(J)V

    if-eqz v20, :cond_3

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lbb/l;->c(Lbb/g;JJ)V

    :cond_3
    invoke-virtual {v1}, Lbb/g;->readShort()S

    move-result v0

    and-int v2, v0, v21

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v2

    int-to-short v0, v0

    const v2, 0xffff

    and-int/2addr v0, v2

    int-to-long v4, v0

    invoke-virtual {v11, v4, v5}, Lbb/p;->M(J)V

    if-eqz v20, :cond_4

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lbb/l;->c(Lbb/g;JJ)V

    :cond_4
    invoke-virtual {v11, v4, v5}, Lbb/p;->skip(J)V

    :cond_5
    shr-int/lit8 v0, v19, 0x3

    and-int/2addr v0, v10

    const-wide/16 v22, 0x1

    if-ne v0, v10, :cond_8

    move-wide v2, v12

    const-wide/16 v13, 0x0

    const-wide v15, 0x7fffffffffffffffL

    const/4 v12, 0x0

    invoke-virtual/range {v11 .. v16}, Lbb/p;->b(BJJ)J

    move-result-wide v12

    cmp-long v0, v12, v17

    if-eqz v0, :cond_7

    if-eqz v20, :cond_6

    move-wide v4, v2

    const-wide/16 v2, 0x0

    move-wide v14, v4

    add-long v4, v12, v22

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lbb/l;->c(Lbb/g;JJ)V

    goto :goto_1

    :cond_6
    move-wide v14, v2

    :goto_1
    add-long v12, v12, v22

    invoke-virtual {v11, v12, v13}, Lbb/p;->skip(J)V

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_8
    move-wide v14, v12

    :goto_2
    shr-int/lit8 v0, v19, 0x4

    and-int/2addr v0, v10

    if-ne v0, v10, :cond_b

    move-wide v2, v14

    const-wide/16 v13, 0x0

    const-wide v15, 0x7fffffffffffffffL

    const/4 v12, 0x0

    invoke-virtual/range {v11 .. v16}, Lbb/p;->b(BJJ)J

    move-result-wide v12

    cmp-long v0, v12, v17

    if-eqz v0, :cond_a

    if-eqz v20, :cond_9

    move-wide v14, v2

    const-wide/16 v2, 0x0

    add-long v4, v12, v22

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lbb/l;->c(Lbb/g;JJ)V

    goto :goto_3

    :cond_9
    move-object/from16 v0, p0

    move-wide v14, v2

    :goto_3
    add-long v12, v12, v22

    invoke-virtual {v11, v12, v13}, Lbb/p;->skip(J)V

    goto :goto_4

    :cond_a
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_b
    move-object/from16 v0, p0

    :goto_4
    if-eqz v20, :cond_c

    invoke-virtual {v11, v14, v15}, Lbb/p;->M(J)V

    invoke-virtual {v1}, Lbb/g;->readShort()S

    move-result v1

    and-int v2, v1, v21

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v2

    int-to-short v1, v1

    invoke-virtual {v9}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    int-to-short v2, v2

    const-string v3, "FHCRC"

    invoke-static {v1, v2, v3}, Lbb/l;->b(IILjava/lang/String;)V

    invoke-virtual {v9}, Ljava/util/zip/CRC32;->reset()V

    :cond_c
    iput-byte v10, v0, Lbb/l;->l:B

    :cond_d
    iget-byte v1, v0, Lbb/l;->l:B

    const/4 v12, 0x2

    if-ne v1, v10, :cond_f

    iget-wide v2, v6, Lbb/g;->m:J

    iget-object v1, v0, Lbb/l;->o:Lbb/m;

    invoke-virtual {v1, v6, v7, v8}, Lbb/m;->read(Lbb/g;J)J

    move-result-wide v4

    cmp-long v1, v4, v17

    if-eqz v1, :cond_e

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lbb/l;->c(Lbb/g;JJ)V

    return-wide v4

    :cond_e
    iput-byte v12, v0, Lbb/l;->l:B

    :cond_f
    iget-byte v1, v0, Lbb/l;->l:B

    if-ne v1, v12, :cond_11

    invoke-virtual {v11}, Lbb/p;->F()I

    move-result v1

    invoke-virtual {v9}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    const-string v3, "CRC"

    invoke-static {v1, v2, v3}, Lbb/l;->b(IILjava/lang/String;)V

    invoke-virtual {v11}, Lbb/p;->F()I

    move-result v1

    iget-object v2, v0, Lbb/l;->n:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v2

    long-to-int v2, v2

    const-string v3, "ISIZE"

    invoke-static {v1, v2, v3}, Lbb/l;->b(IILjava/lang/String;)V

    const/4 v1, 0x3

    iput-byte v1, v0, Lbb/l;->l:B

    invoke-virtual {v11}, Lbb/p;->l()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_5

    :cond_10
    new-instance v0, Ljava/io/IOException;

    const-string v1, "gzip finished without exhausting source"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    :goto_5
    return-wide v17

    :cond_12
    const-string v0, "byteCount < 0: "

    invoke-static {v7, v8, v0}, Lm/a;->k(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final timeout()Lbb/w;
    .locals 0

    iget-object p0, p0, Lbb/l;->m:Lbb/p;

    iget-object p0, p0, Lbb/p;->l:Lbb/u;

    invoke-interface {p0}, Lbb/u;->timeout()Lbb/w;

    move-result-object p0

    return-object p0
.end method
