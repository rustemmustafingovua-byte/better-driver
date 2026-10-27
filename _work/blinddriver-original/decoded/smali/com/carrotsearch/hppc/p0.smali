.class public final Lcom/carrotsearch/hppc/p0;
.super Lcom/carrotsearch/hppc/n0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v0, Lcom/carrotsearch/hppc/n;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/carrotsearch/hppc/n;-><init>(I)V

    const/4 v1, 0x4

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/carrotsearch/hppc/n0;-><init>(IDLcom/carrotsearch/hppc/u;)V

    return-void
.end method


# virtual methods
.method public final hashKey(I)I
    .locals 0

    invoke-static {p1}, Lcom/carrotsearch/hppc/t;->g(I)I

    move-result p0

    return p0
.end method
