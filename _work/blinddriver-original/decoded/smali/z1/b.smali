.class public final Lz1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lz1/d;

.field public final b:Lz1/d;

.field public c:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lz1/c;->l:Lz1/c;

    new-instance v0, Lz1/d;

    invoke-direct {v0}, Lz1/d;-><init>()V

    iput-object v0, p0, Lz1/b;->a:Lz1/d;

    new-instance v0, Lz1/d;

    invoke-direct {v0}, Lz1/d;-><init>()V

    iput-object v0, p0, Lz1/b;->b:Lz1/d;

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 2

    const/16 v0, 0x20

    shr-long v0, p3, v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iget-object v1, p0, Lz1/b;->a:Lz1/d;

    invoke-virtual {v1, v0, p1, p2}, Lz1/d;->a(FJ)V

    const-wide v0, 0xffffffffL

    and-long/2addr p3, v0

    long-to-int p3, p3

    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p3

    iget-object p0, p0, Lz1/b;->b:Lz1/d;

    invoke-virtual {p0, p3, p1, p2}, Lz1/d;->a(FJ)V

    return-void
.end method
