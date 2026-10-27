.class public abstract Lcom/carrotsearch/hppc/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/carrotsearch/hppc/s;

.field public static final b:Lcom/carrotsearch/hppc/n;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/carrotsearch/hppc/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/carrotsearch/hppc/n;-><init>(I)V

    sput-object v0, Lcom/carrotsearch/hppc/t;->b:Lcom/carrotsearch/hppc/n;

    return-void
.end method

.method public static a(D)V
    .locals 5

    const-wide v0, 0x3f847ae140000000L    # 0.009999999776482582

    cmpg-double v2, p0, v0

    const-wide v3, 0x3fefae1480000000L    # 0.9900000095367432

    if-ltz v2, :cond_0

    cmpl-double v2, p0, v3

    if-gtz v2, :cond_0

    return-void

    :cond_0
    new-instance v2, Landroidx/fragment/app/i0;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    const-string v0, "The load factor should be in range [%.2f, %.2f]: %f"

    invoke-direct {v2, v0, p1, p0}, Landroidx/fragment/app/i0;-><init>(Ljava/lang/String;Ljava/lang/OutOfMemoryError;[Ljava/lang/Object;)V

    throw v2
.end method

.method public static b()Lcom/carrotsearch/hppc/u;
    .locals 6

    sget-object v0, Lcom/carrotsearch/hppc/t;->a:Lcom/carrotsearch/hppc/s;

    if-nez v0, :cond_2

    :try_start_0
    new-instance v0, Lcom/carrotsearch/hppc/l;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/carrotsearch/hppc/l;-><init>(I)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/carrotsearch/hppc/s;->values()[Lcom/carrotsearch/hppc/s;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    sput-object v4, Lcom/carrotsearch/hppc/t;->a:Lcom/carrotsearch/hppc/s;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-class v1, Lcom/carrotsearch/hppc/m;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "Failed to read \'tests.seed\' property for initial random seed."

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    sget-object v0, Lcom/carrotsearch/hppc/t;->a:Lcom/carrotsearch/hppc/s;

    if-nez v0, :cond_2

    sget-object v0, Lcom/carrotsearch/hppc/s;->l:Lcom/carrotsearch/hppc/p;

    sput-object v0, Lcom/carrotsearch/hppc/t;->a:Lcom/carrotsearch/hppc/s;

    :cond_2
    :try_start_1
    sget-object v0, Lcom/carrotsearch/hppc/t;->a:Lcom/carrotsearch/hppc/s;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/carrotsearch/hppc/u;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static c(DI)I
    .locals 3

    add-int/lit8 v0, p2, -0x1

    int-to-double v1, p2

    mul-double/2addr v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static d(DI)I
    .locals 7

    if-ltz p2, :cond_2

    int-to-double v0, p2

    div-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-long v0, v0

    int-to-long v2, p2

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x1

    if-nez v2, :cond_0

    add-long/2addr v0, v3

    :cond_0
    sub-long/2addr v0, v3

    const/4 v2, 0x1

    shr-long v5, v0, v2

    or-long/2addr v0, v5

    const/4 v2, 0x2

    shr-long v5, v0, v2

    or-long/2addr v0, v5

    const/4 v2, 0x4

    shr-long v5, v0, v2

    or-long/2addr v0, v5

    const/16 v2, 0x8

    shr-long v5, v0, v2

    or-long/2addr v0, v5

    const/16 v2, 0x10

    shr-long v5, v0, v2

    or-long/2addr v0, v5

    const/16 v2, 0x20

    shr-long v5, v0, v2

    or-long/2addr v0, v5

    add-long/2addr v0, v3

    const-wide/16 v2, 0x4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0x40000000

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    long-to-int p0, v0

    return p0

    :cond_1
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    const-string p2, "Maximum array size exceeded for this load factor (elements: %d, load factor: %f)"

    invoke-direct {v0, p2, p1, p0}, Landroidx/fragment/app/i0;-><init>(Ljava/lang/String;Ljava/lang/OutOfMemoryError;[Ljava/lang/Object;)V

    throw v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of elements must be >= 0: "

    invoke-static {p2, p1}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr p0, v0

    const v0, -0x7a143595

    mul-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0xd

    xor-int/2addr p0, v0

    const v0, -0x3d4d51cb

    mul-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr p0, v0

    return p0
.end method

.method public static f(J)J
    .locals 3

    const/16 v0, 0x20

    ushr-long v1, p0, v0

    xor-long/2addr p0, v1

    const-wide v1, 0x4cd6944c5cc20b6dL    # 1.4513408171825114E62

    mul-long/2addr p0, v1

    const/16 v1, 0x1d

    ushr-long v1, p0, v1

    xor-long/2addr p0, v1

    const-wide v1, -0x3ed3a4e62cda617L    # -4.573534684688033E289

    mul-long/2addr p0, v1

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static g(I)I
    .locals 1

    const v0, -0x61c88647

    mul-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr p0, v0

    return p0
.end method

.method public static h(J)I
    .locals 2

    const-wide v0, -0x61c8864680b583ebL

    mul-long/2addr p0, v0

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static i(IDI)I
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p0, v0, :cond_0

    shl-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    filled-new-array {p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "Maximum array size exceeded for this load factor (elements: %d, load factor: %f)"

    invoke-direct {p0, p3, p2, p1}, Landroidx/fragment/app/i0;-><init>(Ljava/lang/String;Ljava/lang/OutOfMemoryError;[Ljava/lang/Object;)V

    throw p0
.end method

.method public static j([III)Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".123456789X"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    move v4, v2

    :goto_0
    if-gt v4, p2, :cond_3

    int-to-long v5, v4

    int-to-long v7, p1

    mul-long/2addr v5, v7

    int-to-long v7, p2

    div-long/2addr v5, v7

    long-to-int v5, v5

    add-int/lit8 v6, v3, 0x1

    if-gt v6, v5, :cond_2

    const/4 v3, 0x0

    move v7, v6

    move v6, v3

    :goto_1
    if-gt v7, v5, :cond_1

    aget v8, p0, v7

    if-eqz v8, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    array-length v7, v1

    sub-int/2addr v7, v2

    array-length v8, v1

    mul-int/2addr v3, v8

    div-int/2addr v3, v6

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget-char v3, v1, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-ge p0, p2, :cond_4

    const/16 p0, 0x20

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static k([JII)Ljava/lang/String;
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".123456789X"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    move v4, v2

    :goto_0
    if-gt v4, p2, :cond_3

    int-to-long v5, v4

    int-to-long v7, p1

    mul-long/2addr v5, v7

    int-to-long v7, p2

    div-long/2addr v5, v7

    long-to-int v5, v5

    add-int/lit8 v6, v3, 0x1

    if-gt v6, v5, :cond_2

    const/4 v3, 0x0

    move v7, v6

    move v6, v3

    :goto_1
    if-gt v7, v5, :cond_1

    aget-wide v8, p0, v7

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    array-length v7, v1

    sub-int/2addr v7, v2

    array-length v8, v1

    mul-int/2addr v3, v8

    div-int/2addr v3, v6

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget-char v3, v1, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-ge p0, p2, :cond_4

    const/16 p0, 0x20

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
