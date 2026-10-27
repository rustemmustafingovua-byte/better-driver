.class public final Lcom/carrotsearch/hppc/t0;
.super Lcom/carrotsearch/hppc/g;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final o:[J


# instance fields
.field public l:[J

.field public m:I

.field public final n:Ld7/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [J

    sput-object v0, Lcom/carrotsearch/hppc/t0;->o:[J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    new-instance v0, Ld7/g;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Ld7/g;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/carrotsearch/hppc/t0;->o:[J

    iput-object v1, p0, Lcom/carrotsearch/hppc/t0;->l:[J

    iput-object v0, p0, Lcom/carrotsearch/hppc/t0;->n:Ld7/g;

    if-lez p1, :cond_0

    iget v0, p0, Lcom/carrotsearch/hppc/t0;->m:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/carrotsearch/hppc/t0;->g(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/carrotsearch/hppc/t0;->g(I)V

    iget-object v0, p0, Lcom/carrotsearch/hppc/t0;->l:[J

    iget v1, p0, Lcom/carrotsearch/hppc/t0;->m:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/carrotsearch/hppc/t0;->m:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public final addAll(Lcom/carrotsearch/hppc/v0;)I
    .locals 3

    invoke-interface {p1}, Lcom/carrotsearch/hppc/v0;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/carrotsearch/hppc/t0;->g(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln5/f;

    iget-wide v1, v1, Ln5/f;->b:J

    invoke-virtual {p0, v1, v2}, Lcom/carrotsearch/hppc/t0;->a(J)V

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carrotsearch/hppc/t0;

    iget-object p0, p0, Lcom/carrotsearch/hppc/t0;->l:[J

    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    iput-object p0, v0, Lcom/carrotsearch/hppc/t0;->l:[J
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final contains(J)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/carrotsearch/hppc/t0;->m:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/carrotsearch/hppc/t0;->l:[J

    aget-wide v2, v2, v1

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    if-ltz v1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/carrotsearch/hppc/t0;

    if-ne v2, v1, :cond_3

    invoke-virtual {v2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/carrotsearch/hppc/t0;

    iget v1, p0, Lcom/carrotsearch/hppc/t0;->m:I

    iget v2, p1, Lcom/carrotsearch/hppc/t0;->m:I

    if-eq v2, v1, :cond_0

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p1, Lcom/carrotsearch/hppc/t0;->l:[J

    aget-wide v3, v3, v2

    iget-object v5, p0, Lcom/carrotsearch/hppc/t0;->l:[J

    aget-wide v5, v5, v2

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v0
.end method

.method public final g(I)V
    .locals 3

    iget-object v0, p0, Lcom/carrotsearch/hppc/t0;->l:[J

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    iget v1, p0, Lcom/carrotsearch/hppc/t0;->m:I

    add-int v2, v1, p1

    if-le v2, v0, :cond_1

    iget-object v2, p0, Lcom/carrotsearch/hppc/t0;->n:Ld7/g;

    invoke-virtual {v2, v0, v1, p1}, Ld7/g;->r(III)I

    move-result p1

    iget-object v0, p0, Lcom/carrotsearch/hppc/t0;->l:[J

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/carrotsearch/hppc/t0;->l:[J

    :cond_1
    return-void
.end method

.method public final hashCode()I
    .locals 5

    iget v0, p0, Lcom/carrotsearch/hppc/t0;->m:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v3, p0, Lcom/carrotsearch/hppc/t0;->l:[J

    aget-wide v3, v3, v2

    invoke-static {v3, v4}, Lcom/carrotsearch/hppc/t;->f(J)J

    move-result-wide v3

    long-to-int v3, v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final isEmpty()Z
    .locals 0

    iget p0, p0, Lcom/carrotsearch/hppc/t0;->m:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/carrotsearch/hppc/v;

    iget-object v1, p0, Lcom/carrotsearch/hppc/t0;->l:[J

    iget p0, p0, Lcom/carrotsearch/hppc/t0;->m:I

    invoke-direct {v0, v1, p0}, Lcom/carrotsearch/hppc/v;-><init>([JI)V

    return-object v0
.end method

.method public final removeAll(Lo5/f;)I
    .locals 8

    iget-object v0, p0, Lcom/carrotsearch/hppc/t0;->l:[J

    iget v1, p0, Lcom/carrotsearch/hppc/t0;->m:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-wide/16 v4, 0x0

    if-ge v2, v1, :cond_4

    :try_start_0
    aget-wide v6, v0, v2

    invoke-interface {p1, v6, v7}, Lo5/f;->apply(J)Z

    move-result v6

    if-eqz v6, :cond_0

    aput-wide v4, v0, v2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    if-eq v3, v2, :cond_1

    aget-wide v6, v0, v2

    aput-wide v6, v0, v3

    aput-wide v4, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :goto_2
    if-ge v2, v1, :cond_3

    if-eq v3, v2, :cond_2

    aget-wide v6, v0, v2

    aput-wide v6, v0, v3

    aput-wide v4, v0, v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    iput v3, p0, Lcom/carrotsearch/hppc/t0;->m:I

    throw p1

    :cond_4
    :goto_3
    if-ge v2, v1, :cond_6

    if-eq v3, v2, :cond_5

    aget-wide v6, v0, v2

    aput-wide v6, v0, v3

    aput-wide v4, v0, v2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    iput v3, p0, Lcom/carrotsearch/hppc/t0;->m:I

    sub-int/2addr v1, v3

    return v1
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/carrotsearch/hppc/t0;->m:I

    return p0
.end method

.method public final toArray()[J
    .locals 1

    iget-object v0, p0, Lcom/carrotsearch/hppc/t0;->l:[J

    iget p0, p0, Lcom/carrotsearch/hppc/t0;->m:I

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p0

    return-object p0
.end method
