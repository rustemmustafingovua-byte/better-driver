.class public final Ln/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/j;


# instance fields
.field public final a:Ln/u;

.field public final b:J


# direct methods
.method public constructor <init>(Ln/u;J)V
    .locals 1

    sget-object v0, Ln/o0;->l:Ln/o0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/b0;->a:Ln/u;

    iput-wide p2, p0, Ln/b0;->b:J

    return-void
.end method


# virtual methods
.method public final a(Ln/o1;)Ln/q1;
    .locals 3

    new-instance v0, Ln/u1;

    iget-object v1, p0, Ln/b0;->a:Ln/u;

    invoke-interface {v1, p1}, Ln/u;->a(Ln/o1;)Ln/s1;

    move-result-object p1

    sget-object v1, Ln/o0;->l:Ln/o0;

    iget-wide v1, p0, Ln/b0;->b:J

    invoke-direct {v0, p1, v1, v2}, Ln/u1;-><init>(Ln/s1;J)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Ln/b0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ln/b0;

    iget-object v0, p1, Ln/b0;->a:Ln/u;

    iget-object v2, p0, Ln/b0;->a:Ln/u;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ln/o0;->l:Ln/o0;

    iget-wide v2, p1, Ln/b0;->b:J

    iget-wide p0, p0, Ln/b0;->b:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Ln/b0;->a:Ln/u;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    sget-object v1, Ln/o0;->l:Ln/o0;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Ln/b0;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method
