.class public final Lcom/carrotsearch/hppc/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/carrotsearch/hppc/u;


# instance fields
.field public final synthetic l:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/carrotsearch/hppc/o;->l:J

    return-void
.end method


# virtual methods
.method public final clone()Lcom/carrotsearch/hppc/u;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 0

    .line 2
    return-object p0
.end method

.method public final e(I)I
    .locals 2

    int-to-long v0, p1

    iget-wide p0, p0, Lcom/carrotsearch/hppc/o;->l:J

    xor-long/2addr p0, v0

    invoke-static {p0, p1}, Lcom/carrotsearch/hppc/t;->f(J)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method
