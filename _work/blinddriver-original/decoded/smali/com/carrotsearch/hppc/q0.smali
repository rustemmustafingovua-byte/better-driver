.class public final Lcom/carrotsearch/hppc/q0;
.super Lcom/carrotsearch/hppc/c0;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 3

    new-instance v0, Lcom/carrotsearch/hppc/n;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/carrotsearch/hppc/n;-><init>(I)V

    const-wide/high16 v1, 0x3fe8000000000000L    # 0.75

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/carrotsearch/hppc/c0;-><init>(IDLcom/carrotsearch/hppc/u;)V

    return-void
.end method


# virtual methods
.method public final hashKey(I)I
    .locals 0

    invoke-static {p1}, Lcom/carrotsearch/hppc/t;->g(I)I

    move-result p0

    return p0
.end method
