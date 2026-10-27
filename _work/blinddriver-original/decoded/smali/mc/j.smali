.class public final Lmc/j;
.super Lf8/y3;
.source "SourceFile"


# static fields
.field public static final q:Lmc/j;

.field public static final r:Lmc/h;


# instance fields
.field public n:I

.field public o:J

.field public p:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmc/j;

    invoke-direct {v0}, Lmc/j;-><init>()V

    sput-object v0, Lmc/j;->q:Lmc/j;

    new-instance v0, Lmc/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmc/j;->r:Lmc/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lf8/y3;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lmc/j;->p:B

    return-void
.end method


# virtual methods
.method public final a()Lf8/c;
    .locals 0

    sget-object p0, Lmc/j;->q:Lmc/j;

    return-object p0
.end method

.method public final d()Lf8/a;
    .locals 0

    sget-object p0, Lmc/j;->q:Lmc/j;

    invoke-virtual {p0}, Lmc/j;->w()Lmc/i;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lmc/j;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lf8/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    check-cast p1, Lmc/j;

    invoke-virtual {p0}, Lmc/j;->v()Z

    move-result v1

    invoke-virtual {p1}, Lmc/j;->v()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {p0}, Lmc/j;->v()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v1, p0, Lmc/j;->o:J

    iget-wide v4, p1, Lmc/j;->o:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_3

    return v3

    :cond_3
    iget-object p0, p0, Lf8/y3;->m:Lf8/i5;

    iget-object p1, p1, Lf8/y3;->m:Lf8/i5;

    invoke-virtual {p0, p1}, Lf8/i5;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v3

    :cond_4
    return v0
.end method

.method public final bridge synthetic f()Lf8/n4;
    .locals 0

    invoke-virtual {p0}, Lmc/j;->w()Lmc/i;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lf8/c;->l:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    sget-object v0, Lmc/s0;->o:Lf8/m2;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-virtual {p0}, Lmc/j;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    const/16 v2, 0x35

    const/16 v3, 0x25

    invoke-static {v0, v3, v1, v2}, La6/q;->b(IIII)I

    move-result v0

    iget-wide v1, p0, Lmc/j;->o:J

    invoke-static {v1, v2}, Lf8/f4;->b(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
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

    iget-byte v0, p0, Lmc/j;->p:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lmc/j;->v()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v2, p0, Lmc/j;->p:B

    return v2

    :cond_2
    iput-byte v1, p0, Lmc/j;->p:B

    return v1
.end method

.method public final q()Lf8/x3;
    .locals 2

    sget-object p0, Lmc/s0;->p:Lf8/x3;

    const-class v0, Lmc/j;

    const-class v1, Lmc/i;

    invoke-virtual {p0, v0, v1}, Lf8/x3;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final v()Z
    .locals 1

    iget p0, p0, Lmc/j;->n:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final w()Lmc/i;
    .locals 1

    sget-object v0, Lmc/j;->q:Lmc/j;

    if-ne p0, v0, :cond_0

    new-instance p0, Lmc/i;

    invoke-direct {p0}, Lmc/i;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Lmc/i;

    invoke-direct {v0}, Lmc/i;-><init>()V

    invoke-virtual {v0, p0}, Lmc/i;->R(Lmc/j;)V

    return-object v0
.end method
