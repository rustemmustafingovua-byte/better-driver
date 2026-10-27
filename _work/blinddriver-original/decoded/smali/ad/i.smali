.class public final Lad/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lad/g;


# instance fields
.field public a:D

.field public b:J

.field public c:D

.field public d:D

.field public e:D

.field public final f:Lu8/k;

.field public final g:Lu8/k;

.field public h:J

.field public i:D

.field public j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lad/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lad/i;->Companion:Lad/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lad/i;->a:D

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lad/i;->b:J

    iput-wide v0, p0, Lad/i;->d:D

    iput-wide v0, p0, Lad/i;->e:D

    new-instance v0, Lu8/k;

    invoke-direct {v0}, Lu8/k;-><init>()V

    iput-object v0, p0, Lad/i;->f:Lu8/k;

    new-instance v0, Lu8/k;

    invoke-direct {v0}, Lu8/k;-><init>()V

    iput-object v0, p0, Lad/i;->g:Lu8/k;

    iput-wide v2, p0, Lad/i;->h:J

    return-void
.end method

.method public static a(DD)D
    .locals 2

    sub-double/2addr p2, p0

    const-wide p0, 0x4076800000000000L    # 360.0

    rem-double/2addr p2, p0

    const-wide p0, 0x4066800000000000L    # 180.0

    cmpl-double p0, p2, p0

    const/16 p1, 0x168

    if-lez p0, :cond_0

    int-to-double v0, p1

    sub-double/2addr p2, v0

    :cond_0
    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double p0, p2, v0

    if-gtz p0, :cond_1

    int-to-double p0, p1

    add-double/2addr p2, p0

    :cond_1
    return-wide p2
.end method

.method public static e(D)D
    .locals 2

    const-wide v0, 0x4076800000000000L    # 360.0

    rem-double/2addr p0, v0

    add-double/2addr p0, v0

    rem-double/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public final b()Z
    .locals 4

    iget-object p0, p0, Lad/i;->g:Lu8/k;

    invoke-virtual {p0}, Lu8/k;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move v2, v0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    if-ltz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lg5/f;->O()V

    const/4 p0, 0x0

    throw p0

    :cond_3
    :goto_1
    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lu8/k;->a()I

    move-result p0

    if-le v2, p0, :cond_4

    goto :goto_2

    :cond_4
    return v0

    :cond_5
    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method public final c()Z
    .locals 5

    iget-object p0, p0, Lad/i;->g:Lu8/k;

    invoke-virtual {p0}, Lu8/k;->a()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_4

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    if-ltz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lg5/f;->O()V

    const/4 p0, 0x0

    throw p0

    :cond_3
    :goto_1
    mul-int/2addr v3, v2

    invoke-virtual {p0}, Lu8/k;->a()I

    move-result p0

    if-le v3, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    return v1
.end method

.method public final d(DD)V
    .locals 2

    iget-boolean v0, p0, Lad/i;->j:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lad/i;->i:D

    invoke-static {v0, v1, p1, p2}, Lad/i;->a(DD)D

    move-result-wide p1

    mul-double/2addr p1, p3

    add-double/2addr p1, v0

    invoke-static {p1, p2}, Lad/i;->e(D)D

    move-result-wide p1

    const-wide p3, 0x4066800000000000L    # 180.0

    cmpl-double p3, p1, p3

    if-lez p3, :cond_1

    const/16 p3, 0x168

    int-to-double p3, p3

    sub-double/2addr p1, p3

    :cond_1
    :goto_0
    iput-wide p1, p0, Lad/i;->i:D

    const/4 p1, 0x1

    iput-boolean p1, p0, Lad/i;->j:Z

    return-void
.end method
