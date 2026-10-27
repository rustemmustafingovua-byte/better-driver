.class public final Lf8/y;
.super Lf8/y3;
.source "SourceFile"


# static fields
.field public static final r:Lf8/y;

.field public static final s:Lf8/w;


# instance fields
.field public n:I

.field public o:I

.field public p:I

.field public q:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf8/y;

    invoke-direct {v0}, Lf8/y;-><init>()V

    sput-object v0, Lf8/y;->r:Lf8/y;

    new-instance v0, Lf8/w;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lf8/y;->s:Lf8/w;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lf8/y3;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lf8/y;->q:B

    return-void
.end method


# virtual methods
.method public final a()Lf8/c;
    .locals 0

    sget-object p0, Lf8/y;->r:Lf8/y;

    return-object p0
.end method

.method public final d()Lf8/a;
    .locals 0

    sget-object p0, Lf8/y;->r:Lf8/y;

    invoke-virtual {p0}, Lf8/y;->w()Lf8/x;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_3

    :cond_0
    instance-of v1, p1, Lf8/y;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lf8/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    check-cast p1, Lf8/y;

    iget v1, p0, Lf8/y;->n:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    iget v4, p1, Lf8/y;->n:I

    and-int/2addr v4, v0

    if-eqz v4, :cond_3

    move v4, v0

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    if-eq v2, v4, :cond_4

    goto :goto_2

    :cond_4
    and-int/2addr v1, v0

    if-eqz v1, :cond_5

    iget v1, p0, Lf8/y;->o:I

    iget v2, p1, Lf8/y;->o:I

    if-eq v1, v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lf8/y;->v()Z

    move-result v1

    invoke-virtual {p1}, Lf8/y;->v()Z

    move-result v2

    if-eq v1, v2, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lf8/y;->v()Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Lf8/y;->p:I

    iget v2, p1, Lf8/y;->p:I

    if-eq v1, v2, :cond_7

    goto :goto_2

    :cond_7
    iget-object p0, p0, Lf8/y3;->m:Lf8/i5;

    iget-object p1, p1, Lf8/y3;->m:Lf8/i5;

    invoke-virtual {p0, p1}, Lf8/i5;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    :goto_2
    return v3

    :cond_8
    :goto_3
    return v0
.end method

.method public final bridge synthetic f()Lf8/n4;
    .locals 0

    invoke-virtual {p0}, Lf8/y;->w()Lf8/x;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 5

    iget v0, p0, Lf8/c;->l:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    sget-object v0, Lf8/l2;->q:Lf8/m2;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    iget v1, p0, Lf8/y;->n:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/16 v3, 0x35

    const/16 v4, 0x25

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v2, v3}, La6/q;->b(IIII)I

    move-result v0

    iget v1, p0, Lf8/y;->o:I

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lf8/y;->v()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-static {v0, v4, v1, v3}, La6/q;->b(IIII)I

    move-result v0

    iget v1, p0, Lf8/y;->p:I

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
    .locals 2

    iget-byte v0, p0, Lf8/y;->q:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iput-byte v1, p0, Lf8/y;->q:B

    return v1
.end method

.method public final q()Lf8/x3;
    .locals 2

    sget-object p0, Lf8/l2;->r:Lf8/x3;

    const-class v0, Lf8/y;

    const-class v1, Lf8/x;

    invoke-virtual {p0, v0, v1}, Lf8/x3;->c(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final v()Z
    .locals 0

    iget p0, p0, Lf8/y;->n:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final w()Lf8/x;
    .locals 2

    sget-object v0, Lf8/y;->r:Lf8/y;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance p0, Lf8/x;

    invoke-direct {p0, v1}, Lf8/l3;-><init>(Lf8/m3;)V

    return-object p0

    :cond_0
    new-instance v0, Lf8/x;

    invoke-direct {v0, v1}, Lf8/l3;-><init>(Lf8/m3;)V

    invoke-virtual {v0, p0}, Lf8/x;->S(Lf8/y;)V

    return-object v0
.end method
