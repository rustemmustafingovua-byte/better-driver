.class public final Led/e;
.super Lla/a0;
.source "SourceFile"


# instance fields
.field public final b:Ljava/io/File;

.field public final c:Lb0/y;


# direct methods
.method public constructor <init>(Ljava/io/File;Lb0/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Led/e;->b:Ljava/io/File;

    iput-object p2, p0, Led/e;->c:Lb0/y;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-object p0, p0, Led/e;->b:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()Lla/t;
    .locals 0

    sget-object p0, Lla/t;->c:Lr9/i;

    const-string p0, "application/zip"

    invoke-static {p0}, Ll7/a;->o(Ljava/lang/String;)Lla/t;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lbb/o;)V
    .locals 12

    iget-object v0, p0, Led/e;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    move-wide v1, v3

    :cond_0
    invoke-static {v0}, Lpc/h;->x(Ljava/io/File;)Lbb/d;

    move-result-object v0

    :try_start_0
    new-instance v3, Lbb/g;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const-wide/16 v4, 0x0

    move-wide v6, v4

    :goto_0
    const-wide/32 v8, 0x10000

    invoke-virtual {v0, v3, v8, v9}, Lbb/d;->read(Lbb/g;J)J

    move-result-wide v8

    cmp-long v10, v8, v4

    if-ltz v10, :cond_2

    invoke-virtual {p1, v3, v8, v9}, Lbb/o;->write(Lbb/g;J)V

    add-long/2addr v6, v8

    iget-object v8, p0, Led/e;->c:Lb0/y;

    long-to-float v9, v6

    long-to-float v10, v1

    div-float/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v11, v9, v10

    if-lez v11, :cond_1

    move v9, v10

    :cond_1
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v8, v9}, Lb0/y;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lbb/d;->close()V

    return-void

    :goto_1
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v0, p0}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method
