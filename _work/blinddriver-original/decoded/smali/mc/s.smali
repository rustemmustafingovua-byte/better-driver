.class public final Lmc/s;
.super Lf8/y3;
.source "SourceFile"


# static fields
.field public static final t:Lmc/s;

.field public static final u:Lmc/q;


# instance fields
.field public n:I

.field public o:J

.field public p:J

.field public q:J

.field public r:J

.field public s:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmc/s;

    invoke-direct {v0}, Lmc/s;-><init>()V

    sput-object v0, Lmc/s;->t:Lmc/s;

    new-instance v0, Lmc/q;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmc/s;->u:Lmc/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lf8/y3;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lmc/s;->s:B

    return-void
.end method


# virtual methods
.method public final a()Lf8/c;
    .locals 0

    sget-object p0, Lmc/s;->t:Lmc/s;

    return-object p0
.end method

.method public final d()Lf8/a;
    .locals 0

    sget-object p0, Lmc/s;->t:Lmc/s;

    invoke-virtual {p0}, Lmc/s;->z()Lmc/r;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lmc/s;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lf8/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    check-cast p1, Lmc/s;

    invoke-virtual {p0}, Lmc/s;->w()Z

    move-result v1

    invoke-virtual {p1}, Lmc/s;->w()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {p0}, Lmc/s;->w()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v1, p0, Lmc/s;->o:J

    iget-wide v4, p1, Lmc/s;->o:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_3

    return v3

    :cond_3
    invoke-virtual {p0}, Lmc/s;->x()Z

    move-result v1

    invoke-virtual {p1}, Lmc/s;->x()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    :cond_4
    invoke-virtual {p0}, Lmc/s;->x()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-wide v1, p0, Lmc/s;->p:J

    iget-wide v4, p1, Lmc/s;->p:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_5

    return v3

    :cond_5
    invoke-virtual {p0}, Lmc/s;->y()Z

    move-result v1

    invoke-virtual {p1}, Lmc/s;->y()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    :cond_6
    invoke-virtual {p0}, Lmc/s;->y()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-wide v1, p0, Lmc/s;->q:J

    iget-wide v4, p1, Lmc/s;->q:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_7

    return v3

    :cond_7
    invoke-virtual {p0}, Lmc/s;->v()Z

    move-result v1

    invoke-virtual {p1}, Lmc/s;->v()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    :cond_8
    invoke-virtual {p0}, Lmc/s;->v()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-wide v1, p0, Lmc/s;->r:J

    iget-wide v4, p1, Lmc/s;->r:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_9

    return v3

    :cond_9
    iget-object p0, p0, Lf8/y3;->m:Lf8/i5;

    iget-object p1, p1, Lf8/y3;->m:Lf8/i5;

    invoke-virtual {p0, p1}, Lf8/i5;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v3

    :cond_a
    return v0
.end method

.method public final bridge synthetic f()Lf8/n4;
    .locals 0

    invoke-virtual {p0}, Lmc/s;->z()Lmc/r;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 6

    iget v0, p0, Lf8/c;->l:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    sget-object v0, Lmc/s0;->c:Lf8/m2;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-virtual {p0}, Lmc/s;->w()Z

    move-result v1

    const/16 v2, 0x35

    const/16 v3, 0x25

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-static {v0, v3, v1, v2}, La6/q;->b(IIII)I

    move-result v0

    iget-wide v4, p0, Lmc/s;->o:J

    invoke-static {v4, v5}, Lf8/f4;->b(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lmc/s;->x()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-static {v0, v3, v1, v2}, La6/q;->b(IIII)I

    move-result v0

    iget-wide v4, p0, Lmc/s;->p:J

    invoke-static {v4, v5}, Lf8/f4;->b(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lmc/s;->y()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    invoke-static {v0, v3, v1, v2}, La6/q;->b(IIII)I

    move-result v0

    iget-wide v4, p0, Lmc/s;->q:J

    invoke-static {v4, v5}, Lf8/f4;->b(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-virtual {p0}, Lmc/s;->v()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    invoke-static {v0, v3, v1, v2}, La6/q;->b(IIII)I

    move-result v0

    iget-wide v1, p0, Lmc/s;->r:J

    invoke-static {v1, v2}, Lf8/f4;->b(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lf8/y3;->m:Lf8/i5;

    iget-object v1, v1, Lf8/i5;->l:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lf8/c;->l:I

    return v1
.end method

.method public final i()Lf8/i5;
    .locals 0

    iget-object p0, p0, Lf8/y3;->m:Lf8/i5;

    return-object p0
.end method

.method public final p()Z
    .locals 3

    iget-byte v0, p0, Lmc/s;->s:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lmc/s;->w()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v2, p0, Lmc/s;->s:B

    return v2

    :cond_2
    invoke-virtual {p0}, Lmc/s;->x()Z

    move-result v0

    if-nez v0, :cond_3

    iput-byte v2, p0, Lmc/s;->s:B

    return v2

    :cond_3
    invoke-virtual {p0}, Lmc/s;->y()Z

    move-result v0

    if-nez v0, :cond_4

    iput-byte v2, p0, Lmc/s;->s:B

    return v2

    :cond_4
    invoke-virtual {p0}, Lmc/s;->v()Z

    move-result v0

    if-nez v0, :cond_5

    iput-byte v2, p0, Lmc/s;->s:B

    return v2

    :cond_5
    iput-byte v1, p0, Lmc/s;->s:B

    return v1
.end method

.method public final q()Lf8/x3;
    .locals 2

    sget-object p0, Lmc/s0;->d:Lf8/x3;

    const-class v0, Lmc/s;

    const-class v1, Lmc/r;

    invoke-virtual {p0, v0, v1}, Lf8/x3;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final v()Z
    .locals 0

    iget p0, p0, Lmc/s;->n:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final w()Z
    .locals 1

    iget p0, p0, Lmc/s;->n:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final x()Z
    .locals 0

    iget p0, p0, Lmc/s;->n:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final y()Z
    .locals 0

    iget p0, p0, Lmc/s;->n:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final z()Lmc/r;
    .locals 1

    sget-object v0, Lmc/s;->t:Lmc/s;

    if-ne p0, v0, :cond_0

    new-instance p0, Lmc/r;

    invoke-direct {p0}, Lmc/r;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Lmc/r;

    invoke-direct {v0}, Lmc/r;-><init>()V

    invoke-virtual {v0, p0}, Lmc/r;->S(Lmc/s;)V

    return-object v0
.end method
