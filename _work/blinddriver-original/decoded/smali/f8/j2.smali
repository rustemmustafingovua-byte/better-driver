.class public final Lf8/j2;
.super Lf8/y3;
.source "SourceFile"


# static fields
.field public static final r:Lf8/j2;

.field public static final s:Lf8/h2;


# instance fields
.field public n:I

.field public volatile o:Ljava/io/Serializable;

.field public p:Z

.field public q:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf8/j2;

    invoke-direct {v0}, Lf8/j2;-><init>()V

    sput-object v0, Lf8/j2;->r:Lf8/j2;

    new-instance v0, Lf8/h2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lf8/j2;->s:Lf8/h2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lf8/y3;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lf8/j2;->q:B

    const-string v0, ""

    iput-object v0, p0, Lf8/j2;->o:Ljava/io/Serializable;

    return-void
.end method


# virtual methods
.method public final a()Lf8/c;
    .locals 0

    sget-object p0, Lf8/j2;->r:Lf8/j2;

    return-object p0
.end method

.method public final d()Lf8/a;
    .locals 0

    sget-object p0, Lf8/j2;->r:Lf8/j2;

    invoke-virtual {p0}, Lf8/j2;->y()Lf8/i2;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lf8/j2;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lf8/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    check-cast p1, Lf8/j2;

    invoke-virtual {p0}, Lf8/j2;->x()Z

    move-result v1

    invoke-virtual {p1}, Lf8/j2;->x()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {p0}, Lf8/j2;->x()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lf8/j2;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lf8/j2;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    :cond_3
    invoke-virtual {p0}, Lf8/j2;->w()Z

    move-result v1

    invoke-virtual {p1}, Lf8/j2;->w()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    :cond_4
    invoke-virtual {p0}, Lf8/j2;->w()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lf8/j2;->p:Z

    iget-boolean v2, p1, Lf8/j2;->p:Z

    if-eq v1, v2, :cond_5

    return v3

    :cond_5
    iget-object p0, p0, Lf8/y3;->m:Lf8/i5;

    iget-object p1, p1, Lf8/y3;->m:Lf8/i5;

    invoke-virtual {p0, p1}, Lf8/i5;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v3

    :cond_6
    return v0
.end method

.method public final bridge synthetic f()Lf8/n4;
    .locals 0

    invoke-virtual {p0}, Lf8/j2;->y()Lf8/i2;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lf8/c;->l:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    sget-object v0, Lf8/l2;->Q:Lf8/m2;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-virtual {p0}, Lf8/j2;->x()Z

    move-result v1

    const/16 v2, 0x35

    const/16 v3, 0x25

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-static {v0, v3, v1, v2}, La6/q;->b(IIII)I

    move-result v0

    invoke-virtual {p0}, Lf8/j2;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lf8/j2;->w()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-static {v0, v3, v1, v2}, La6/q;->b(IIII)I

    move-result v0

    iget-boolean v1, p0, Lf8/j2;->p:Z

    invoke-static {v1}, Lf8/f4;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
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

    iget-byte v0, p0, Lf8/j2;->q:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lf8/j2;->x()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v2, p0, Lf8/j2;->q:B

    return v2

    :cond_2
    invoke-virtual {p0}, Lf8/j2;->w()Z

    move-result v0

    if-nez v0, :cond_3

    iput-byte v2, p0, Lf8/j2;->q:B

    return v2

    :cond_3
    iput-byte v1, p0, Lf8/j2;->q:B

    return v1
.end method

.method public final q()Lf8/x3;
    .locals 2

    sget-object p0, Lf8/l2;->R:Lf8/x3;

    const-class v0, Lf8/j2;

    const-class v1, Lf8/i2;

    invoke-virtual {p0, v0, v1}, Lf8/x3;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final v()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lf8/j2;->o:Ljava/io/Serializable;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lf8/j;

    invoke-virtual {v0}, Lf8/j;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lf8/j;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lf8/j2;->o:Ljava/io/Serializable;

    :cond_1
    return-object v1
.end method

.method public final w()Z
    .locals 0

    iget p0, p0, Lf8/j2;->n:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final x()Z
    .locals 1

    iget p0, p0, Lf8/j2;->n:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final y()Lf8/i2;
    .locals 1

    sget-object v0, Lf8/j2;->r:Lf8/j2;

    if-ne p0, v0, :cond_0

    new-instance p0, Lf8/i2;

    invoke-direct {p0}, Lf8/i2;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Lf8/i2;

    invoke-direct {v0}, Lf8/i2;-><init>()V

    invoke-virtual {v0, p0}, Lf8/i2;->S(Lf8/j2;)V

    return-object v0
.end method
