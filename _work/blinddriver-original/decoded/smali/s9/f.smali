.class public final Ls9/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls9/g;


# instance fields
.field public final l:J

.field public final m:I


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Ls9/f;->l:J

    iput p1, p0, Ls9/f;->m:I

    return-void
.end method


# virtual methods
.method public final toInstant()Ls9/d;
    .locals 18

    move-object/from16 v0, p0

    sget-object v1, Ls9/d;->n:Ls9/d;

    sget-object v1, Ls9/d;->n:Ls9/d;

    iget-wide v2, v1, Ls9/d;->l:J

    iget-wide v4, v0, Ls9/f;->l:J

    cmp-long v2, v4, v2

    if-ltz v2, :cond_5

    sget-object v2, Ls9/d;->o:Ls9/d;

    iget-wide v6, v2, Ls9/d;->l:J

    cmp-long v3, v4, v6

    if-gtz v3, :cond_5

    iget v0, v0, Ls9/f;->m:I

    int-to-long v6, v0

    const-wide/32 v8, 0x3b9aca00

    div-long v10, v6, v8

    xor-long v12, v6, v8

    const-wide/16 v14, 0x0

    cmp-long v0, v12, v14

    if-gez v0, :cond_0

    mul-long v12, v10, v8

    cmp-long v0, v12, v6

    if-eqz v0, :cond_0

    const-wide/16 v12, -0x1

    add-long/2addr v10, v12

    :cond_0
    add-long v12, v4, v10

    xor-long v16, v4, v12

    cmp-long v0, v16, v14

    if-gez v0, :cond_1

    xor-long/2addr v10, v4

    cmp-long v0, v10, v14

    if-ltz v0, :cond_1

    cmp-long v0, v4, v14

    if-lez v0, :cond_2

    goto :goto_0

    :cond_1
    const-wide v3, -0x701cefeb9bec00L

    cmp-long v0, v12, v3

    if-gez v0, :cond_3

    :cond_2
    return-object v1

    :cond_3
    const-wide v0, 0x701cd2fa9578ffL

    cmp-long v0, v12, v0

    if-lez v0, :cond_4

    :goto_0
    return-object v2

    :cond_4
    rem-long/2addr v6, v8

    xor-long v0, v6, v8

    neg-long v2, v6

    or-long/2addr v2, v6

    and-long/2addr v0, v2

    const/16 v2, 0x3f

    shr-long/2addr v0, v2

    and-long/2addr v0, v8

    add-long/2addr v6, v0

    long-to-int v0, v6

    new-instance v1, Ls9/d;

    invoke-direct {v1, v0, v12, v13}, Ls9/d;-><init>(IJ)V

    return-object v1

    :cond_5
    new-instance v0, Lda/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The parsed date is outside the range representable by Instant (Unix epoch second "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lda/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method
