.class public final Ldd/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Ldd/u;


# instance fields
.field public final a:Lu8/k;

.field public final b:Lu8/k;

.field public c:J

.field public d:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldd/u;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldd/y;->Companion:Ldd/u;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lu8/k;

    invoke-direct {v0}, Lu8/k;-><init>()V

    iput-object v0, p0, Ldd/y;->a:Lu8/k;

    new-instance v0, Lu8/k;

    invoke-direct {v0}, Lu8/k;-><init>()V

    iput-object v0, p0, Ldd/y;->b:Lu8/k;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ldd/y;->c:J

    return-void
.end method


# virtual methods
.method public final a(ZJ)V
    .locals 14

    move-wide/from16 v0, p2

    if-nez p1, :cond_0

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ldd/y;->c:J

    return-void

    :cond_0
    iget-wide v2, p0, Ldd/y;->c:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    iput-wide v0, p0, Ldd/y;->c:J

    return-void

    :cond_1
    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Ldd/y;->a:Lu8/k;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ldd/x;

    iget-wide v5, v5, Ldd/x;->a:J

    iget-wide v7, p0, Ldd/y;->c:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_3

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x14

    if-ge v3, v4, :cond_5

    :goto_1
    return-void

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v3, :cond_6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Ldd/x;

    iget-wide v7, v7, Ldd/x;->b:D

    add-double/2addr v4, v7

    goto :goto_2

    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-double v2, v2

    div-double v6, v4, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_7

    iget-wide v8, p0, Ldd/y;->d:D

    const-wide v10, 0x3fd3333333333333L    # 0.3

    move-wide v12, v8

    invoke-static/range {v6 .. v13}, Lm/a;->b(DDDD)D

    move-result-wide v2

    iput-wide v2, p0, Ldd/y;->d:D

    :cond_7
    iput-wide v0, p0, Ldd/y;->c:J

    return-void
.end method
