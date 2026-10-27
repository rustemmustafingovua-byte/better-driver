.class public final Lp/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lb3/c;

.field public final c:J

.field public final d:Lu/s0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lb3/c;JLu/s0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp/k;->a:Landroid/content/Context;

    iput-object p2, p0, Lp/k;->b:Lb3/c;

    iput-wide p3, p0, Lp/k;->c:J

    iput-object p5, p0, Lp/k;->d:Lu/s0;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-class v2, Lp/k;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type androidx.compose.foundation.AndroidEdgeEffectOverscrollFactory"

    invoke-static {p1, v1}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lp/k;

    iget-object v1, p0, Lp/k;->a:Landroid/content/Context;

    iget-object v3, p1, Lp/k;->a:Landroid/content/Context;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lp/k;->b:Lb3/c;

    iget-object v3, p1, Lp/k;->b:Lb3/c;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lp/k;->c:J

    iget-wide v5, p1, Lp/k;->c:J

    invoke-static {v3, v4, v5, v6}, Lm1/p;->c(JJ)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lp/k;->d:Lu/s0;

    iget-object p1, p1, Lp/k;->d:Lu/s0;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Lp/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lp/k;->b:Lb3/c;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    sget v0, Lm1/p;->h:I

    iget-wide v3, p0, Lp/k;->c:J

    invoke-static {v2, v1, v3, v4}, Lm/a;->f(IIJ)I

    move-result v0

    iget-object p0, p0, Lp/k;->d:Lu/s0;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
