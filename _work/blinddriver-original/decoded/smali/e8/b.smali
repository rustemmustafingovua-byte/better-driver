.class public Le8/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final l:Ljava/io/Reader;

.field public m:Z

.field public final n:[C

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:J

.field public u:I

.field public v:Ljava/lang/String;

.field public w:[I

.field public x:I

.field public y:[Ljava/lang/String;

.field public z:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Le8/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Le8/a;->a:Le8/a;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Le8/b;->m:Z

    const/16 v1, 0x400

    new-array v1, v1, [C

    iput-object v1, p0, Le8/b;->n:[C

    iput v0, p0, Le8/b;->o:I

    iput v0, p0, Le8/b;->p:I

    iput v0, p0, Le8/b;->q:I

    iput v0, p0, Le8/b;->r:I

    iput v0, p0, Le8/b;->s:I

    const/16 v1, 0x20

    new-array v2, v1, [I

    iput-object v2, p0, Le8/b;->w:[I

    const/4 v3, 0x1

    iput v3, p0, Le8/b;->x:I

    const/4 v3, 0x6

    aput v3, v2, v0

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Le8/b;->y:[Ljava/lang/String;

    new-array v0, v1, [I

    iput-object v0, p0, Le8/b;->z:[I

    const-string v0, "in == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Le8/b;->l:Ljava/io/Reader;

    return-void
.end method


# virtual methods
.method public final C(C)Z
    .locals 1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x23

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x1

    return p0

    :cond_0
    :pswitch_0
    invoke-virtual {p0}, Le8/b;->d()V

    :cond_1
    :pswitch_1
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method final J()Ljava/lang/String;
    .locals 5

    iget v0, p0, Le8/b;->q:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Le8/b;->o:I

    iget v2, p0, Le8/b;->r:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    const-string v2, " column "

    const-string v3, " path "

    const-string v4, " at line "

    invoke-static {v4, v0, v2, v1, v3}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Le8/b;->q()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public K()Z
    .locals 4

    iget v0, p0, Le8/b;->s:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Le8/b;->e()I

    move-result v0

    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    iput v2, p0, Le8/b;->s:I

    iget-object v0, p0, Le8/b;->z:[I

    iget p0, p0, Le8/b;->x:I

    sub-int/2addr p0, v3

    aget v1, v0, p0

    add-int/2addr v1, v3

    aput v1, v0, p0

    return v3

    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    iput v2, p0, Le8/b;->s:I

    iget-object v0, p0, Le8/b;->z:[I

    iget p0, p0, Le8/b;->x:I

    sub-int/2addr p0, v3

    aget v1, v0, p0

    add-int/2addr v1, v3

    aput v1, v0, p0

    return v2

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a boolean but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Le8/b;->Z()I

    move-result v2

    invoke-static {v2}, La6/q;->y(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le8/b;->J()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public P()D
    .locals 6

    iget v0, p0, Le8/b;->s:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Le8/b;->e()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iput v2, p0, Le8/b;->s:I

    iget-object v0, p0, Le8/b;->z:[I

    iget v1, p0, Le8/b;->x:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-wide v0, p0, Le8/b;->t:J

    long-to-double v0, v0

    return-wide v0

    :cond_1
    const/16 v1, 0x10

    const/16 v3, 0xb

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/String;

    iget v1, p0, Le8/b;->o:I

    iget v4, p0, Le8/b;->u:I

    iget-object v5, p0, Le8/b;->n:[C

    invoke-direct {v0, v5, v1, v4}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Le8/b;->v:Ljava/lang/String;

    iget v0, p0, Le8/b;->o:I

    iget v1, p0, Le8/b;->u:I

    add-int/2addr v0, v1

    iput v0, p0, Le8/b;->o:I

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v4, 0x9

    if-ne v0, v4, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Le8/b;->Y()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le8/b;->v:Ljava/lang/String;

    goto :goto_2

    :cond_4
    if-ne v0, v3, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a double but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Le8/b;->Z()I

    move-result v2

    invoke-static {v2}, La6/q;->y(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le8/b;->J()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_0
    if-ne v0, v1, :cond_7

    const/16 v0, 0x27

    goto :goto_1

    :cond_7
    const/16 v0, 0x22

    :goto_1
    invoke-virtual {p0, v0}, Le8/b;->W(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le8/b;->v:Ljava/lang/String;

    :goto_2
    iput v3, p0, Le8/b;->s:I

    iget-object v0, p0, Le8/b;->v:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-boolean v3, p0, Le8/b;->m:Z

    if-nez v3, :cond_9

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_3

    :cond_8
    new-instance v2, Le8/d;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le8/b;->J()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    :goto_3
    const/4 v3, 0x0

    iput-object v3, p0, Le8/b;->v:Ljava/lang/String;

    iput v2, p0, Le8/b;->s:I

    iget-object v2, p0, Le8/b;->z:[I

    iget p0, p0, Le8/b;->x:I

    add-int/lit8 p0, p0, -0x1

    aget v3, v2, p0

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, p0

    return-wide v0
.end method

.method public R()I
    .locals 7

    iget v0, p0, Le8/b;->s:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Le8/b;->e()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    const-string v3, "Expected an int but was "

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Le8/b;->t:J

    long-to-int v4, v0

    int-to-long v5, v4

    cmp-long v0, v0, v5

    if-nez v0, :cond_1

    iput v2, p0, Le8/b;->s:I

    iget-object v0, p0, Le8/b;->z:[I

    iget p0, p0, Le8/b;->x:I

    add-int/lit8 p0, p0, -0x1

    aget v1, v0, p0

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p0

    return v4

    :cond_1
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Le8/b;->t:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le8/b;->J()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/lang/String;

    iget v1, p0, Le8/b;->o:I

    iget v4, p0, Le8/b;->u:I

    iget-object v5, p0, Le8/b;->n:[C

    invoke-direct {v0, v5, v1, v4}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Le8/b;->v:Ljava/lang/String;

    iget v0, p0, Le8/b;->o:I

    iget v1, p0, Le8/b;->u:I

    add-int/2addr v0, v1

    iput v0, p0, Le8/b;->o:I

    goto :goto_3

    :cond_3
    const/16 v1, 0xa

    const/16 v4, 0x8

    if-eq v0, v4, :cond_5

    const/16 v5, 0x9

    if-eq v0, v5, :cond_5

    if-ne v0, v1, :cond_4

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Le8/b;->Z()I

    move-result v2

    invoke-static {v2}, La6/q;->y(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le8/b;->J()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_0
    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Le8/b;->Y()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le8/b;->v:Ljava/lang/String;

    goto :goto_2

    :cond_6
    if-ne v0, v4, :cond_7

    const/16 v0, 0x27

    goto :goto_1

    :cond_7
    const/16 v0, 0x22

    :goto_1
    invoke-virtual {p0, v0}, Le8/b;->W(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le8/b;->v:Ljava/lang/String;

    :goto_2
    :try_start_0
    iget-object v0, p0, Le8/b;->v:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v2, p0, Le8/b;->s:I

    iget-object v1, p0, Le8/b;->z:[I

    iget v4, p0, Le8/b;->x:I

    add-int/lit8 v4, v4, -0x1

    aget v5, v1, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :goto_3
    const/16 v0, 0xb

    iput v0, p0, Le8/b;->s:I

    iget-object v0, p0, Le8/b;->v:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v4, v0

    int-to-double v5, v4

    cmpl-double v0, v5, v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    iput-object v0, p0, Le8/b;->v:Ljava/lang/String;

    iput v2, p0, Le8/b;->s:I

    iget-object v0, p0, Le8/b;->z:[I

    iget p0, p0, Le8/b;->x:I

    add-int/lit8 p0, p0, -0x1

    aget v1, v0, p0

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p0

    return v4

    :cond_8
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Le8/b;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le8/b;->J()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public S()J
    .locals 8

    iget v0, p0, Le8/b;->s:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Le8/b;->e()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iput v2, p0, Le8/b;->s:I

    iget-object v0, p0, Le8/b;->z:[I

    iget v1, p0, Le8/b;->x:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-wide v0, p0, Le8/b;->t:J

    return-wide v0

    :cond_1
    const/16 v1, 0x10

    const-string v3, "Expected a long but was "

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/String;

    iget v1, p0, Le8/b;->o:I

    iget v4, p0, Le8/b;->u:I

    iget-object v5, p0, Le8/b;->n:[C

    invoke-direct {v0, v5, v1, v4}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Le8/b;->v:Ljava/lang/String;

    iget v0, p0, Le8/b;->o:I

    iget v1, p0, Le8/b;->u:I

    add-int/2addr v0, v1

    iput v0, p0, Le8/b;->o:I

    goto :goto_3

    :cond_2
    const/16 v1, 0xa

    const/16 v4, 0x8

    if-eq v0, v4, :cond_4

    const/16 v5, 0x9

    if-eq v0, v5, :cond_4

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Le8/b;->Z()I

    move-result v2

    invoke-static {v2}, La6/q;->y(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le8/b;->J()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Le8/b;->Y()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le8/b;->v:Ljava/lang/String;

    goto :goto_2

    :cond_5
    if-ne v0, v4, :cond_6

    const/16 v0, 0x27

    goto :goto_1

    :cond_6
    const/16 v0, 0x22

    :goto_1
    invoke-virtual {p0, v0}, Le8/b;->W(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le8/b;->v:Ljava/lang/String;

    :goto_2
    :try_start_0
    iget-object v0, p0, Le8/b;->v:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput v2, p0, Le8/b;->s:I

    iget-object v4, p0, Le8/b;->z:[I

    iget v5, p0, Le8/b;->x:I

    add-int/lit8 v5, v5, -0x1

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    :goto_3
    const/16 v0, 0xb

    iput v0, p0, Le8/b;->s:I

    iget-object v0, p0, Le8/b;->v:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v4, v0

    long-to-double v6, v4

    cmpl-double v0, v6, v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    iput-object v0, p0, Le8/b;->v:Ljava/lang/String;

    iput v2, p0, Le8/b;->s:I

    iget-object v0, p0, Le8/b;->z:[I

    iget p0, p0, Le8/b;->x:I

    add-int/lit8 p0, p0, -0x1

    aget v1, v0, p0

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p0

    return-wide v4

    :cond_7
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Le8/b;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le8/b;->J()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public T()Ljava/lang/String;
    .locals 3

    iget v0, p0, Le8/b;->s:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Le8/b;->e()I

    move-result v0

    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Le8/b;->Y()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Le8/b;->W(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Le8/b;->W(C)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Le8/b;->s:I

    iget-object v1, p0, Le8/b;->y:[Ljava/lang/String;

    iget p0, p0, Le8/b;->x:I

    add-int/lit8 p0, p0, -0x1

    aput-object v0, v1, p0

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a name but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Le8/b;->Z()I

    move-result v2

    invoke-static {v2}, La6/q;->y(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le8/b;->J()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final U(Z)I
    .locals 9

    iget v0, p0, Le8/b;->o:I

    iget v1, p0, Le8/b;->p:I

    :goto_0
    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    iput v0, p0, Le8/b;->o:I

    invoke-virtual {p0, v2}, Le8/b;->n(I)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "End of input"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Le8/b;->J()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget v0, p0, Le8/b;->o:I

    iget v1, p0, Le8/b;->p:I

    :cond_2
    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Le8/b;->n:[C

    aget-char v5, v4, v0

    const/16 v6, 0xa

    if-ne v5, v6, :cond_3

    iget v0, p0, Le8/b;->q:I

    add-int/2addr v0, v2

    iput v0, p0, Le8/b;->q:I

    iput v3, p0, Le8/b;->r:I

    goto/16 :goto_6

    :cond_3
    const/16 v7, 0x20

    if-eq v5, v7, :cond_f

    const/16 v7, 0xd

    if-eq v5, v7, :cond_f

    const/16 v7, 0x9

    if-ne v5, v7, :cond_4

    goto/16 :goto_6

    :cond_4
    const/16 v7, 0x2f

    if-ne v5, v7, :cond_d

    iput v3, p0, Le8/b;->o:I

    const/4 v8, 0x2

    if-ne v3, v1, :cond_5

    iput v0, p0, Le8/b;->o:I

    invoke-virtual {p0, v8}, Le8/b;->n(I)Z

    move-result v0

    iget v1, p0, Le8/b;->o:I

    add-int/2addr v1, v2

    iput v1, p0, Le8/b;->o:I

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Le8/b;->d()V

    iget v0, p0, Le8/b;->o:I

    aget-char v1, v4, v0

    const/16 v3, 0x2a

    if-eq v1, v3, :cond_7

    if-eq v1, v7, :cond_6

    :goto_1
    return v5

    :cond_6
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le8/b;->o:I

    invoke-virtual {p0}, Le8/b;->d0()V

    iget v0, p0, Le8/b;->o:I

    iget v1, p0, Le8/b;->p:I

    goto :goto_0

    :cond_7
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le8/b;->o:I

    :goto_2
    iget v0, p0, Le8/b;->o:I

    add-int/2addr v0, v8

    iget v1, p0, Le8/b;->p:I

    if-le v0, v1, :cond_9

    invoke-virtual {p0, v8}, Le8/b;->n(I)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    const-string p1, "Unterminated comment"

    invoke-virtual {p0, p1}, Le8/b;->g0(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_9
    :goto_3
    iget v0, p0, Le8/b;->o:I

    aget-char v1, v4, v0

    if-ne v1, v6, :cond_a

    iget v1, p0, Le8/b;->q:I

    add-int/2addr v1, v2

    iput v1, p0, Le8/b;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le8/b;->r:I

    goto :goto_5

    :cond_a
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v8, :cond_c

    iget v1, p0, Le8/b;->o:I

    add-int/2addr v1, v0

    aget-char v1, v4, v1

    const-string v3, "*/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v1, v3, :cond_b

    :goto_5
    iget v0, p0, Le8/b;->o:I

    add-int/2addr v0, v2

    iput v0, p0, Le8/b;->o:I

    goto :goto_2

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_c
    iget v0, p0, Le8/b;->o:I

    add-int/2addr v0, v8

    iget v1, p0, Le8/b;->p:I

    goto/16 :goto_0

    :cond_d
    const/16 v0, 0x23

    if-ne v5, v0, :cond_e

    iput v3, p0, Le8/b;->o:I

    invoke-virtual {p0}, Le8/b;->d()V

    invoke-virtual {p0}, Le8/b;->d0()V

    iget v0, p0, Le8/b;->o:I

    iget v1, p0, Le8/b;->p:I

    goto/16 :goto_0

    :cond_e
    iput v3, p0, Le8/b;->o:I

    return v5

    :cond_f
    :goto_6
    move v0, v3

    goto/16 :goto_0
.end method

.method public V()V
    .locals 3

    iget v0, p0, Le8/b;->s:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Le8/b;->e()I

    move-result v0

    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Le8/b;->s:I

    iget-object v0, p0, Le8/b;->z:[I

    iget p0, p0, Le8/b;->x:I

    add-int/lit8 p0, p0, -0x1

    aget v1, v0, p0

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p0

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected null but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Le8/b;->Z()I

    move-result v2

    invoke-static {v2}, La6/q;->y(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le8/b;->J()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final W(C)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    iget v2, p0, Le8/b;->o:I

    iget v3, p0, Le8/b;->p:I

    :goto_1
    move v4, v3

    move v3, v2

    :goto_2
    const/16 v5, 0x10

    const/4 v6, 0x1

    iget-object v7, p0, Le8/b;->n:[C

    if-ge v2, v4, :cond_5

    add-int/lit8 v8, v2, 0x1

    aget-char v2, v7, v2

    if-ne v2, p1, :cond_1

    iput v8, p0, Le8/b;->o:I

    sub-int/2addr v8, v3

    sub-int/2addr v8, v6

    if-nez v1, :cond_0

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v7, v3, v8}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    :cond_0
    invoke-virtual {v1, v7, v3, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v9, 0x5c

    if-ne v2, v9, :cond_3

    iput v8, p0, Le8/b;->o:I

    sub-int/2addr v8, v3

    add-int/lit8 v2, v8, -0x1

    if-nez v1, :cond_2

    mul-int/lit8 v8, v8, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    :cond_2
    invoke-virtual {v1, v7, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le8/b;->b0()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Le8/b;->o:I

    iget v3, p0, Le8/b;->p:I

    goto :goto_1

    :cond_3
    const/16 v5, 0xa

    if-ne v2, v5, :cond_4

    iget v2, p0, Le8/b;->q:I

    add-int/2addr v2, v6

    iput v2, p0, Le8/b;->q:I

    iput v8, p0, Le8/b;->r:I

    :cond_4
    move v2, v8

    goto :goto_2

    :cond_5
    if-nez v1, :cond_6

    sub-int v1, v2, v3

    mul-int/lit8 v1, v1, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v4

    :cond_6
    sub-int v4, v2, v3

    invoke-virtual {v1, v7, v3, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iput v2, p0, Le8/b;->o:I

    invoke-virtual {p0, v6}, Le8/b;->n(I)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_0

    :cond_7
    const-string p1, "Unterminated string"

    invoke-virtual {p0, p1}, Le8/b;->g0(Ljava/lang/String;)V

    throw v0
.end method

.method public X()Ljava/lang/String;
    .locals 4

    iget v0, p0, Le8/b;->s:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Le8/b;->e()I

    move-result v0

    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Le8/b;->Y()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Le8/b;->W(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Le8/b;->W(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Le8/b;->v:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Le8/b;->v:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/16 v1, 0xf

    if-ne v0, v1, :cond_5

    iget-wide v0, p0, Le8/b;->t:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/16 v1, 0x10

    if-ne v0, v1, :cond_6

    new-instance v0, Ljava/lang/String;

    iget v1, p0, Le8/b;->o:I

    iget v2, p0, Le8/b;->u:I

    iget-object v3, p0, Le8/b;->n:[C

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    iget v1, p0, Le8/b;->o:I

    iget v2, p0, Le8/b;->u:I

    add-int/2addr v1, v2

    iput v1, p0, Le8/b;->o:I

    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Le8/b;->s:I

    iget-object v1, p0, Le8/b;->z:[I

    iget p0, p0, Le8/b;->x:I

    add-int/lit8 p0, p0, -0x1

    aget v2, v1, p0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, p0

    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a string but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Le8/b;->Z()I

    move-result v2

    invoke-static {v2}, La6/q;->y(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le8/b;->J()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final Y()Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    move v2, v1

    :goto_0
    iget v3, p0, Le8/b;->o:I

    add-int v4, v3, v2

    iget v5, p0, Le8/b;->p:I

    iget-object v6, p0, Le8/b;->n:[C

    if-ge v4, v5, :cond_2

    add-int/2addr v3, v2

    aget-char v3, v6, v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_3

    const/16 v4, 0x23

    if-eq v3, v4, :cond_1

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_3

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_1

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_1

    const/16 v4, 0x7b

    if-eq v3, v4, :cond_3

    const/16 v4, 0x7d

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :pswitch_0
    invoke-virtual {p0}, Le8/b;->d()V

    goto :goto_1

    :cond_2
    array-length v3, v6

    if-ge v2, v3, :cond_4

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Le8/b;->n(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    :pswitch_1
    move v1, v2

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    :cond_5
    iget v3, p0, Le8/b;->o:I

    invoke-virtual {v0, v6, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v3, p0, Le8/b;->o:I

    add-int/2addr v3, v2

    iput v3, p0, Le8/b;->o:I

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Le8/b;->n(I)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_2
    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/String;

    iget v2, p0, Le8/b;->o:I

    invoke-direct {v0, v6, v2, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_3

    :cond_6
    iget v2, p0, Le8/b;->o:I

    invoke-virtual {v0, v6, v2, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    iget v2, p0, Le8/b;->o:I

    add-int/2addr v2, v1

    iput v2, p0, Le8/b;->o:I

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public Z()I
    .locals 1

    iget v0, p0, Le8/b;->s:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Le8/b;->e()I

    move-result v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_0
    const/16 p0, 0xa

    return p0

    :pswitch_1
    const/4 p0, 0x7

    return p0

    :pswitch_2
    const/4 p0, 0x5

    return p0

    :pswitch_3
    const/4 p0, 0x6

    return p0

    :pswitch_4
    const/16 p0, 0x9

    return p0

    :pswitch_5
    const/16 p0, 0x8

    return p0

    :pswitch_6
    const/4 p0, 0x2

    return p0

    :pswitch_7
    const/4 p0, 0x1

    return p0

    :pswitch_8
    const/4 p0, 0x4

    return p0

    :pswitch_9
    const/4 p0, 0x3

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a0(I)V
    .locals 3

    iget v0, p0, Le8/b;->x:I

    iget-object v1, p0, Le8/b;->w:[I

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Le8/b;->w:[I

    iget-object v1, p0, Le8/b;->z:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Le8/b;->z:[I

    iget-object v1, p0, Le8/b;->y:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Le8/b;->y:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Le8/b;->w:[I

    iget v1, p0, Le8/b;->x:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le8/b;->x:I

    aput p1, v0, v1

    return-void
.end method

.method public b()V
    .locals 3

    iget v0, p0, Le8/b;->s:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Le8/b;->e()I

    move-result v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Le8/b;->a0(I)V

    iget-object v1, p0, Le8/b;->z:[I

    iget v2, p0, Le8/b;->x:I

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    aput v0, v1, v2

    iput v0, p0, Le8/b;->s:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected BEGIN_ARRAY but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Le8/b;->Z()I

    move-result v2

    invoke-static {v2}, La6/q;->y(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le8/b;->J()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b0()C
    .locals 8

    iget v0, p0, Le8/b;->o:I

    iget v1, p0, Le8/b;->p:I

    const/4 v2, 0x0

    const-string v3, "Unterminated escape sequence"

    const/4 v4, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v4}, Le8/b;->n(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Le8/b;->g0(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    iget v0, p0, Le8/b;->o:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Le8/b;->o:I

    iget-object v5, p0, Le8/b;->n:[C

    aget-char v6, v5, v0

    const/16 v7, 0xa

    if-eq v6, v7, :cond_f

    const/16 v1, 0x22

    if-eq v6, v1, :cond_e

    const/16 v1, 0x27

    if-eq v6, v1, :cond_e

    const/16 v1, 0x2f

    if-eq v6, v1, :cond_e

    const/16 v1, 0x5c

    if-eq v6, v1, :cond_e

    const/16 v1, 0x62

    if-eq v6, v1, :cond_d

    const/16 v1, 0x66

    if-eq v6, v1, :cond_c

    const/16 v4, 0x6e

    if-eq v6, v4, :cond_b

    const/16 v4, 0x72

    if-eq v6, v4, :cond_a

    const/16 v4, 0x74

    if-eq v6, v4, :cond_9

    const/16 v4, 0x75

    if-ne v6, v4, :cond_8

    add-int/lit8 v0, v0, 0x5

    iget v4, p0, Le8/b;->p:I

    const/4 v6, 0x4

    if-le v0, v4, :cond_3

    invoke-virtual {p0, v6}, Le8/b;->n(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v3}, Le8/b;->g0(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_1
    iget v0, p0, Le8/b;->o:I

    add-int/lit8 v2, v0, 0x4

    const/4 v3, 0x0

    :goto_2
    if-ge v0, v2, :cond_7

    aget-char v4, v5, v0

    shl-int/lit8 v3, v3, 0x4

    int-to-char v3, v3

    const/16 v7, 0x30

    if-lt v4, v7, :cond_4

    const/16 v7, 0x39

    if-gt v4, v7, :cond_4

    add-int/lit8 v4, v4, -0x30

    :goto_3
    add-int/2addr v4, v3

    int-to-char v3, v4

    goto :goto_4

    :cond_4
    const/16 v7, 0x61

    if-lt v4, v7, :cond_5

    if-gt v4, v1, :cond_5

    add-int/lit8 v4, v4, -0x57

    goto :goto_3

    :cond_5
    const/16 v7, 0x41

    if-lt v4, v7, :cond_6

    const/16 v7, 0x46

    if-gt v4, v7, :cond_6

    add-int/lit8 v4, v4, -0x37

    goto :goto_3

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/String;

    iget p0, p0, Le8/b;->o:I

    invoke-direct {v1, v5, p0, v6}, Ljava/lang/String;-><init>([CII)V

    const-string p0, "\\u"

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget v0, p0, Le8/b;->o:I

    add-int/2addr v0, v6

    iput v0, p0, Le8/b;->o:I

    return v3

    :cond_8
    const-string v0, "Invalid escape sequence"

    invoke-virtual {p0, v0}, Le8/b;->g0(Ljava/lang/String;)V

    throw v2

    :cond_9
    const/16 p0, 0x9

    return p0

    :cond_a
    const/16 p0, 0xd

    return p0

    :cond_b
    return v7

    :cond_c
    const/16 p0, 0xc

    return p0

    :cond_d
    const/16 p0, 0x8

    return p0

    :cond_e
    return v6

    :cond_f
    iget v0, p0, Le8/b;->q:I

    add-int/2addr v0, v4

    iput v0, p0, Le8/b;->q:I

    iput v1, p0, Le8/b;->r:I

    return v6
.end method

.method public c()V
    .locals 3

    iget v0, p0, Le8/b;->s:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Le8/b;->e()I

    move-result v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Le8/b;->a0(I)V

    const/4 v0, 0x0

    iput v0, p0, Le8/b;->s:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected BEGIN_OBJECT but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Le8/b;->Z()I

    move-result v2

    invoke-static {v2}, La6/q;->y(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le8/b;->J()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c0(C)V
    .locals 5

    :goto_0
    iget v0, p0, Le8/b;->o:I

    iget v1, p0, Le8/b;->p:I

    :goto_1
    const/4 v2, 0x1

    if-ge v0, v1, :cond_3

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Le8/b;->n:[C

    aget-char v0, v4, v0

    if-ne v0, p1, :cond_0

    iput v3, p0, Le8/b;->o:I

    return-void

    :cond_0
    const/16 v4, 0x5c

    if-ne v0, v4, :cond_1

    iput v3, p0, Le8/b;->o:I

    invoke-virtual {p0}, Le8/b;->b0()C

    iget v0, p0, Le8/b;->o:I

    iget v1, p0, Le8/b;->p:I

    goto :goto_1

    :cond_1
    const/16 v4, 0xa

    if-ne v0, v4, :cond_2

    iget v0, p0, Le8/b;->q:I

    add-int/2addr v0, v2

    iput v0, p0, Le8/b;->q:I

    iput v3, p0, Le8/b;->r:I

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    iput v0, p0, Le8/b;->o:I

    invoke-virtual {p0, v2}, Le8/b;->n(I)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const-string p1, "Unterminated string"

    invoke-virtual {p0, p1}, Le8/b;->g0(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public close()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Le8/b;->s:I

    iget-object v1, p0, Le8/b;->w:[I

    const/16 v2, 0x8

    aput v2, v1, v0

    const/4 v0, 0x1

    iput v0, p0, Le8/b;->x:I

    iget-object p0, p0, Le8/b;->l:Ljava/io/Reader;

    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-boolean v0, p0, Le8/b;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-virtual {p0, v0}, Le8/b;->g0(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final d0()V
    .locals 4

    :cond_0
    iget v0, p0, Le8/b;->o:I

    iget v1, p0, Le8/b;->p:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, v2}, Le8/b;->n(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget v0, p0, Le8/b;->o:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Le8/b;->o:I

    iget-object v3, p0, Le8/b;->n:[C

    aget-char v0, v3, v0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_2

    iget v0, p0, Le8/b;->q:I

    add-int/2addr v0, v2

    iput v0, p0, Le8/b;->q:I

    iput v1, p0, Le8/b;->r:I

    return-void

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    :cond_3
    return-void
.end method

.method public final e()I
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Le8/b;->w:[I

    iget v2, v0, Le8/b;->x:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget v4, v1, v2

    const/16 v8, 0xa

    const/16 v10, 0x27

    const/4 v11, 0x6

    const/16 v12, 0x5d

    const/16 v13, 0x3b

    const/16 v14, 0x2c

    const/4 v15, 0x3

    const/16 v16, 0x0

    iget-object v6, v0, Le8/b;->n:[C

    const/4 v7, 0x4

    const/4 v9, 0x5

    const/16 v18, 0x7

    const/4 v5, 0x2

    if-ne v4, v3, :cond_1

    aput v5, v1, v2

    :cond_0
    :goto_0
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_1
    if-ne v4, v5, :cond_4

    invoke-virtual {v0, v3}, Le8/b;->U(Z)I

    move-result v1

    if-eq v1, v14, :cond_0

    if-eq v1, v13, :cond_3

    if-ne v1, v12, :cond_2

    iput v7, v0, Le8/b;->s:I

    return v7

    :cond_2
    const-string v1, "Unterminated array"

    invoke-virtual {v0, v1}, Le8/b;->g0(Ljava/lang/String;)V

    throw v16

    :cond_3
    invoke-virtual {v0}, Le8/b;->d()V

    goto :goto_0

    :cond_4
    const/16 v5, 0x7d

    if-eq v4, v15, :cond_5

    if-ne v4, v9, :cond_6

    :cond_5
    move/from16 v19, v7

    goto/16 :goto_19

    :cond_6
    if-ne v4, v7, :cond_9

    aput v9, v1, v2

    invoke-virtual {v0, v3}, Le8/b;->U(Z)I

    move-result v1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_0

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_8

    invoke-virtual {v0}, Le8/b;->d()V

    iget v1, v0, Le8/b;->o:I

    iget v2, v0, Le8/b;->p:I

    if-lt v1, v2, :cond_7

    invoke-virtual {v0, v3}, Le8/b;->n(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_7
    iget v1, v0, Le8/b;->o:I

    aget-char v2, v6, v1

    const/16 v5, 0x3e

    if-ne v2, v5, :cond_0

    add-int/2addr v1, v3

    iput v1, v0, Le8/b;->o:I

    goto :goto_0

    :cond_8
    const-string v1, "Expected \':\'"

    invoke-virtual {v0, v1}, Le8/b;->g0(Ljava/lang/String;)V

    throw v16

    :cond_9
    if-ne v4, v11, :cond_d

    iget-boolean v1, v0, Le8/b;->m:Z

    if-eqz v1, :cond_c

    invoke-virtual {v0, v3}, Le8/b;->U(Z)I

    iget v1, v0, Le8/b;->o:I

    add-int/lit8 v2, v1, -0x1

    iput v2, v0, Le8/b;->o:I

    add-int/lit8 v1, v1, 0x4

    iget v2, v0, Le8/b;->p:I

    if-le v1, v2, :cond_a

    invoke-virtual {v0, v9}, Le8/b;->n(I)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_1

    :cond_a
    iget v1, v0, Le8/b;->o:I

    aget-char v2, v6, v1

    const/16 v7, 0x29

    if-ne v2, v7, :cond_c

    add-int/lit8 v2, v1, 0x1

    aget-char v2, v6, v2

    if-ne v2, v12, :cond_c

    add-int/lit8 v2, v1, 0x2

    aget-char v2, v6, v2

    if-ne v2, v5, :cond_c

    add-int/lit8 v2, v1, 0x3

    aget-char v2, v6, v2

    if-ne v2, v10, :cond_c

    add-int/lit8 v2, v1, 0x4

    aget-char v2, v6, v2

    if-eq v2, v8, :cond_b

    goto :goto_1

    :cond_b
    add-int/2addr v1, v9

    iput v1, v0, Le8/b;->o:I

    :cond_c
    :goto_1
    iget-object v1, v0, Le8/b;->w:[I

    iget v2, v0, Le8/b;->x:I

    sub-int/2addr v2, v3

    aput v18, v1, v2

    goto/16 :goto_0

    :cond_d
    move/from16 v1, v18

    if-ne v4, v1, :cond_f

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Le8/b;->U(Z)I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_e

    const/16 v1, 0x11

    iput v1, v0, Le8/b;->s:I

    return v1

    :cond_e
    invoke-virtual {v0}, Le8/b;->d()V

    iget v2, v0, Le8/b;->o:I

    sub-int/2addr v2, v3

    iput v2, v0, Le8/b;->o:I

    goto :goto_2

    :cond_f
    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq v4, v2, :cond_41

    :goto_2
    invoke-virtual {v0, v3}, Le8/b;->U(Z)I

    move-result v2

    const/16 v5, 0x22

    if-eq v2, v5, :cond_40

    if-eq v2, v10, :cond_3f

    if-eq v2, v14, :cond_3c

    if-eq v2, v13, :cond_3c

    const/16 v5, 0x5b

    if-eq v2, v5, :cond_3b

    if-eq v2, v12, :cond_3a

    const/16 v4, 0x7b

    if-eq v2, v4, :cond_39

    iget v2, v0, Le8/b;->o:I

    sub-int/2addr v2, v3

    iput v2, v0, Le8/b;->o:I

    aget-char v2, v6, v2

    const/16 v4, 0x74

    if-eq v2, v4, :cond_15

    const/16 v4, 0x54

    if-ne v2, v4, :cond_10

    goto :goto_6

    :cond_10
    const/16 v4, 0x66

    if-eq v2, v4, :cond_14

    const/16 v4, 0x46

    if-ne v2, v4, :cond_11

    goto :goto_5

    :cond_11
    const/16 v4, 0x6e

    if-eq v2, v4, :cond_13

    const/16 v4, 0x4e

    if-ne v2, v4, :cond_12

    goto :goto_4

    :cond_12
    :goto_3
    move v5, v1

    goto :goto_9

    :cond_13
    :goto_4
    const-string v2, "null"

    const-string v4, "NULL"

    const/4 v5, 0x7

    goto :goto_7

    :cond_14
    :goto_5
    const-string v2, "false"

    const-string v4, "FALSE"

    move v5, v11

    goto :goto_7

    :cond_15
    :goto_6
    const-string v2, "true"

    const-string v4, "TRUE"

    move v5, v9

    :goto_7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    move v10, v3

    :goto_8
    if-ge v10, v7, :cond_18

    iget v12, v0, Le8/b;->o:I

    add-int/2addr v12, v10

    iget v13, v0, Le8/b;->p:I

    if-lt v12, v13, :cond_16

    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v0, v12}, Le8/b;->n(I)Z

    move-result v12

    if-nez v12, :cond_16

    goto :goto_3

    :cond_16
    iget v12, v0, Le8/b;->o:I

    add-int/2addr v12, v10

    aget-char v12, v6, v12

    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-eq v12, v13, :cond_17

    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-eq v12, v13, :cond_17

    goto :goto_3

    :cond_17
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_18
    iget v2, v0, Le8/b;->o:I

    add-int/2addr v2, v7

    iget v4, v0, Le8/b;->p:I

    if-lt v2, v4, :cond_19

    add-int/lit8 v2, v7, 0x1

    invoke-virtual {v0, v2}, Le8/b;->n(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_19
    iget v2, v0, Le8/b;->o:I

    add-int/2addr v2, v7

    aget-char v2, v6, v2

    invoke-virtual {v0, v2}, Le8/b;->C(C)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_3

    :cond_1a
    iget v2, v0, Le8/b;->o:I

    add-int/2addr v2, v7

    iput v2, v0, Le8/b;->o:I

    iput v5, v0, Le8/b;->s:I

    :goto_9
    if-eqz v5, :cond_1b

    return v5

    :cond_1b
    iget v2, v0, Le8/b;->o:I

    iget v4, v0, Le8/b;->p:I

    move v5, v1

    move v7, v5

    move/from16 v17, v7

    move v14, v2

    move v10, v3

    const-wide/16 v1, 0x0

    const-wide/16 v20, 0x0

    :goto_a
    add-int v12, v14, v7

    if-ne v12, v4, :cond_1f

    array-length v4, v6

    if-ne v7, v4, :cond_1d

    :cond_1c
    :goto_b
    const/4 v9, 0x0

    goto/16 :goto_17

    :cond_1d
    add-int/lit8 v4, v7, 0x1

    invoke-virtual {v0, v4}, Le8/b;->n(I)Z

    move-result v4

    if-nez v4, :cond_1e

    :goto_c
    const/4 v13, 0x2

    goto/16 :goto_11

    :cond_1e
    iget v4, v0, Le8/b;->o:I

    iget v12, v0, Le8/b;->p:I

    move v14, v4

    move v4, v12

    :cond_1f
    add-int v12, v14, v7

    aget-char v12, v6, v12

    const/16 v13, 0x2b

    if-eq v12, v13, :cond_35

    const/16 v13, 0x45

    if-eq v12, v13, :cond_33

    const/16 v13, 0x65

    if-eq v12, v13, :cond_33

    const/16 v13, 0x2d

    if-eq v12, v13, :cond_31

    const/16 v13, 0x2e

    if-eq v12, v13, :cond_30

    const/16 v13, 0x30

    if-lt v12, v13, :cond_29

    const/16 v13, 0x39

    if-le v12, v13, :cond_20

    goto :goto_10

    :cond_20
    if-eq v5, v3, :cond_28

    if-nez v5, :cond_21

    goto :goto_f

    :cond_21
    const/4 v13, 0x2

    if-ne v5, v13, :cond_25

    cmp-long v13, v1, v20

    if-nez v13, :cond_22

    goto :goto_b

    :cond_22
    const-wide/16 v22, 0xa

    mul-long v22, v22, v1

    add-int/lit8 v12, v12, -0x30

    int-to-long v12, v12

    sub-long v22, v22, v12

    const-wide v12, -0xcccccccccccccccL

    cmp-long v12, v1, v12

    if-gtz v12, :cond_24

    if-nez v12, :cond_23

    cmp-long v1, v22, v1

    if-gez v1, :cond_23

    goto :goto_d

    :cond_23
    const/4 v1, 0x0

    goto :goto_e

    :cond_24
    :goto_d
    move v1, v3

    :goto_e
    and-int/2addr v10, v1

    move-wide/from16 v1, v22

    goto/16 :goto_16

    :cond_25
    if-ne v5, v15, :cond_26

    const/4 v5, 0x4

    goto/16 :goto_16

    :cond_26
    if-eq v5, v9, :cond_27

    if-ne v5, v11, :cond_36

    :cond_27
    const/4 v5, 0x7

    goto/16 :goto_16

    :cond_28
    :goto_f
    add-int/lit8 v12, v12, -0x30

    neg-int v1, v12

    int-to-long v1, v1

    const/4 v5, 0x2

    goto/16 :goto_16

    :cond_29
    :goto_10
    invoke-virtual {v0, v12}, Le8/b;->C(C)Z

    move-result v3

    if-nez v3, :cond_1c

    goto :goto_c

    :goto_11
    if-ne v5, v13, :cond_2e

    if-eqz v10, :cond_2a

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, v1, v3

    if-nez v3, :cond_2b

    if-eqz v17, :cond_2a

    goto :goto_12

    :cond_2a
    const/4 v13, 0x2

    goto :goto_14

    :cond_2b
    :goto_12
    cmp-long v3, v1, v20

    if-nez v3, :cond_2c

    if-nez v17, :cond_2a

    :cond_2c
    if-eqz v17, :cond_2d

    goto :goto_13

    :cond_2d
    neg-long v1, v1

    :goto_13
    iput-wide v1, v0, Le8/b;->t:J

    iget v1, v0, Le8/b;->o:I

    add-int/2addr v1, v7

    iput v1, v0, Le8/b;->o:I

    const/16 v9, 0xf

    iput v9, v0, Le8/b;->s:I

    goto :goto_17

    :cond_2e
    :goto_14
    if-eq v5, v13, :cond_2f

    const/4 v1, 0x4

    if-eq v5, v1, :cond_2f

    const/4 v1, 0x7

    if-ne v5, v1, :cond_1c

    :cond_2f
    iput v7, v0, Le8/b;->u:I

    const/16 v9, 0x10

    iput v9, v0, Le8/b;->s:I

    goto :goto_17

    :cond_30
    const/4 v13, 0x2

    if-ne v5, v13, :cond_1c

    move v5, v15

    goto :goto_16

    :cond_31
    const/4 v13, 0x2

    if-nez v5, :cond_32

    move v5, v3

    move/from16 v17, v5

    goto :goto_16

    :cond_32
    if-ne v5, v9, :cond_1c

    :goto_15
    move v5, v11

    goto :goto_16

    :cond_33
    const/4 v13, 0x2

    if-eq v5, v13, :cond_34

    const/4 v12, 0x4

    if-ne v5, v12, :cond_1c

    :cond_34
    move v5, v9

    goto :goto_16

    :cond_35
    if-ne v5, v9, :cond_1c

    goto :goto_15

    :cond_36
    :goto_16
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_a

    :goto_17
    if-eqz v9, :cond_37

    return v9

    :cond_37
    iget v1, v0, Le8/b;->o:I

    aget-char v1, v6, v1

    invoke-virtual {v0, v1}, Le8/b;->C(C)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-virtual {v0}, Le8/b;->d()V

    iput v8, v0, Le8/b;->s:I

    return v8

    :cond_38
    const-string v1, "Expected value"

    invoke-virtual {v0, v1}, Le8/b;->g0(Ljava/lang/String;)V

    throw v16

    :cond_39
    iput v3, v0, Le8/b;->s:I

    return v3

    :cond_3a
    if-ne v4, v3, :cond_3c

    const/4 v1, 0x4

    iput v1, v0, Le8/b;->s:I

    return v1

    :cond_3b
    iput v15, v0, Le8/b;->s:I

    return v15

    :cond_3c
    if-eq v4, v3, :cond_3e

    const/4 v13, 0x2

    if-ne v4, v13, :cond_3d

    goto :goto_18

    :cond_3d
    const-string v1, "Unexpected value"

    invoke-virtual {v0, v1}, Le8/b;->g0(Ljava/lang/String;)V

    throw v16

    :cond_3e
    :goto_18
    invoke-virtual {v0}, Le8/b;->d()V

    iget v1, v0, Le8/b;->o:I

    sub-int/2addr v1, v3

    iput v1, v0, Le8/b;->o:I

    const/4 v1, 0x7

    iput v1, v0, Le8/b;->s:I

    return v1

    :cond_3f
    invoke-virtual {v0}, Le8/b;->d()V

    const/16 v2, 0x8

    iput v2, v0, Le8/b;->s:I

    return v2

    :cond_40
    const/16 v1, 0x9

    iput v1, v0, Le8/b;->s:I

    return v1

    :cond_41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_19
    aput v19, v1, v2

    if-ne v4, v9, :cond_44

    invoke-virtual {v0, v3}, Le8/b;->U(Z)I

    move-result v1

    if-eq v1, v14, :cond_44

    if-eq v1, v13, :cond_43

    if-ne v1, v5, :cond_42

    const/4 v13, 0x2

    iput v13, v0, Le8/b;->s:I

    return v13

    :cond_42
    const-string v1, "Unterminated object"

    invoke-virtual {v0, v1}, Le8/b;->g0(Ljava/lang/String;)V

    throw v16

    :cond_43
    invoke-virtual {v0}, Le8/b;->d()V

    :cond_44
    invoke-virtual {v0, v3}, Le8/b;->U(Z)I

    move-result v1

    const/16 v2, 0x22

    if-eq v1, v2, :cond_49

    if-eq v1, v10, :cond_48

    const-string v2, "Expected name"

    if-eq v1, v5, :cond_46

    invoke-virtual {v0}, Le8/b;->d()V

    iget v4, v0, Le8/b;->o:I

    sub-int/2addr v4, v3

    iput v4, v0, Le8/b;->o:I

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Le8/b;->C(C)Z

    move-result v1

    if-eqz v1, :cond_45

    const/16 v1, 0xe

    iput v1, v0, Le8/b;->s:I

    return v1

    :cond_45
    invoke-virtual {v0, v2}, Le8/b;->g0(Ljava/lang/String;)V

    throw v16

    :cond_46
    if-eq v4, v9, :cond_47

    const/4 v13, 0x2

    iput v13, v0, Le8/b;->s:I

    return v13

    :cond_47
    invoke-virtual {v0, v2}, Le8/b;->g0(Ljava/lang/String;)V

    throw v16

    :cond_48
    invoke-virtual {v0}, Le8/b;->d()V

    const/16 v1, 0xc

    iput v1, v0, Le8/b;->s:I

    return v1

    :cond_49
    const/16 v1, 0xd

    iput v1, v0, Le8/b;->s:I

    return v1
.end method

.method public final e0()V
    .locals 4

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Le8/b;->o:I

    add-int v2, v1, v0

    iget v3, p0, Le8/b;->p:I

    if-ge v2, v3, :cond_3

    iget-object v2, p0, Le8/b;->n:[C

    add-int/2addr v1, v0

    aget-char v1, v2, v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    const/16 v2, 0x20

    if-eq v1, v2, :cond_2

    const/16 v2, 0x23

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_2

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_2

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :pswitch_0
    invoke-virtual {p0}, Le8/b;->d()V

    :cond_2
    :pswitch_1
    iget v1, p0, Le8/b;->o:I

    add-int/2addr v1, v0

    iput v1, p0, Le8/b;->o:I

    return-void

    :cond_3
    add-int/2addr v1, v0

    iput v1, p0, Le8/b;->o:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Le8/b;->n(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public f0()V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    iget v2, p0, Le8/b;->s:I

    if-nez v2, :cond_1

    invoke-virtual {p0}, Le8/b;->e()I

    move-result v2

    :cond_1
    const/16 v3, 0x27

    const/16 v4, 0x22

    const-string v5, "<skipped>"

    const/4 v6, 0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    :pswitch_1
    return-void

    :pswitch_2
    iget v2, p0, Le8/b;->o:I

    iget v3, p0, Le8/b;->u:I

    add-int/2addr v2, v3

    iput v2, p0, Le8/b;->o:I

    goto :goto_2

    :pswitch_3
    invoke-virtual {p0}, Le8/b;->e0()V

    if-nez v1, :cond_3

    iget-object v2, p0, Le8/b;->y:[Ljava/lang/String;

    iget v3, p0, Le8/b;->x:I

    sub-int/2addr v3, v6

    aput-object v5, v2, v3

    goto :goto_2

    :pswitch_4
    invoke-virtual {p0, v4}, Le8/b;->c0(C)V

    if-nez v1, :cond_3

    iget-object v2, p0, Le8/b;->y:[Ljava/lang/String;

    iget v3, p0, Le8/b;->x:I

    sub-int/2addr v3, v6

    aput-object v5, v2, v3

    goto :goto_2

    :pswitch_5
    invoke-virtual {p0, v3}, Le8/b;->c0(C)V

    if-nez v1, :cond_3

    iget-object v2, p0, Le8/b;->y:[Ljava/lang/String;

    iget v3, p0, Le8/b;->x:I

    sub-int/2addr v3, v6

    aput-object v5, v2, v3

    goto :goto_2

    :pswitch_6
    invoke-virtual {p0}, Le8/b;->e0()V

    goto :goto_2

    :pswitch_7
    invoke-virtual {p0, v4}, Le8/b;->c0(C)V

    goto :goto_2

    :pswitch_8
    invoke-virtual {p0, v3}, Le8/b;->c0(C)V

    goto :goto_2

    :pswitch_9
    iget v2, p0, Le8/b;->x:I

    sub-int/2addr v2, v6

    iput v2, p0, Le8/b;->x:I

    :goto_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :pswitch_a
    invoke-virtual {p0, v6}, Le8/b;->a0(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :pswitch_b
    if-nez v1, :cond_2

    iget-object v2, p0, Le8/b;->y:[Ljava/lang/String;

    iget v3, p0, Le8/b;->x:I

    sub-int/2addr v3, v6

    const/4 v4, 0x0

    aput-object v4, v2, v3

    :cond_2
    iget v2, p0, Le8/b;->x:I

    sub-int/2addr v2, v6

    iput v2, p0, Le8/b;->x:I

    goto :goto_0

    :pswitch_c
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Le8/b;->a0(I)V

    goto :goto_1

    :cond_3
    :goto_2
    iput v0, p0, Le8/b;->s:I

    if-gtz v1, :cond_0

    iget-object v0, p0, Le8/b;->z:[I

    iget p0, p0, Le8/b;->x:I

    sub-int/2addr p0, v6

    aget v1, v0, p0

    add-int/2addr v1, v6

    aput v1, v0, p0

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final g0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Le8/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le8/b;->J()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k()V
    .locals 3

    iget v0, p0, Le8/b;->s:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Le8/b;->e()I

    move-result v0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget v0, p0, Le8/b;->x:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Le8/b;->x:I

    iget-object v1, p0, Le8/b;->z:[I

    add-int/lit8 v0, v0, -0x2

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    const/4 v0, 0x0

    iput v0, p0, Le8/b;->s:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected END_ARRAY but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Le8/b;->Z()I

    move-result v2

    invoke-static {v2}, La6/q;->y(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le8/b;->J()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public m()V
    .locals 5

    iget v0, p0, Le8/b;->s:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Le8/b;->e()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Le8/b;->x:I

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Le8/b;->x:I

    iget-object v3, p0, Le8/b;->y:[Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    iget-object v2, p0, Le8/b;->z:[I

    sub-int/2addr v0, v1

    aget v1, v2, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, v2, v0

    const/4 v0, 0x0

    iput v0, p0, Le8/b;->s:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected END_OBJECT but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Le8/b;->Z()I

    move-result v2

    invoke-static {v2}, La6/q;->y(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le8/b;->J()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final n(I)Z
    .locals 7

    iget v0, p0, Le8/b;->r:I

    iget v1, p0, Le8/b;->o:I

    sub-int/2addr v0, v1

    iput v0, p0, Le8/b;->r:I

    iget v0, p0, Le8/b;->p:I

    const/4 v2, 0x0

    iget-object v3, p0, Le8/b;->n:[C

    if-eq v0, v1, :cond_0

    sub-int/2addr v0, v1

    iput v0, p0, Le8/b;->p:I

    invoke-static {v3, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    iput v2, p0, Le8/b;->p:I

    :goto_0
    iput v2, p0, Le8/b;->o:I

    :cond_1
    iget v0, p0, Le8/b;->p:I

    array-length v1, v3

    sub-int/2addr v1, v0

    iget-object v4, p0, Le8/b;->l:Ljava/io/Reader;

    invoke-virtual {v4, v3, v0, v1}, Ljava/io/Reader;->read([CII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget v1, p0, Le8/b;->p:I

    add-int/2addr v1, v0

    iput v1, p0, Le8/b;->p:I

    iget v0, p0, Le8/b;->q:I

    const/4 v4, 0x1

    if-nez v0, :cond_2

    iget v0, p0, Le8/b;->r:I

    if-nez v0, :cond_2

    if-lez v1, :cond_2

    aget-char v5, v3, v2

    const v6, 0xfeff

    if-ne v5, v6, :cond_2

    iget v5, p0, Le8/b;->o:I

    add-int/2addr v5, v4

    iput v5, p0, Le8/b;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Le8/b;->r:I

    add-int/lit8 p1, p1, 0x1

    :cond_2
    if-lt v1, p1, :cond_1

    return v4

    :cond_3
    return v2
.end method

.method public q()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Le8/b;->t(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final t(Z)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Le8/b;->x:I

    if-ge v1, v2, :cond_4

    iget-object v3, p0, Le8/b;->w:[I

    aget v3, v3, v1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v2, 0x3

    if-eq v3, v2, :cond_0

    const/4 v2, 0x4

    if-eq v3, v2, :cond_0

    const/4 v2, 0x5

    if-eq v3, v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le8/b;->y:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    iget-object v3, p0, Le8/b;->z:[I

    aget v3, v3, v1

    if-eqz p1, :cond_2

    if-lez v3, :cond_2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    add-int/lit8 v3, v3, -0x1

    :cond_2
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le8/b;->J()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Le8/b;->t(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public y()Z
    .locals 1

    iget v0, p0, Le8/b;->s:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Le8/b;->e()I

    move-result v0

    :cond_0
    const/4 p0, 0x2

    if-eq v0, p0, :cond_1

    const/4 p0, 0x4

    if-eq v0, p0, :cond_1

    const/16 p0, 0x11

    if-eq v0, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
