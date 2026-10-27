.class public final Lq/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J


# direct methods
.method public constructor <init>(JJJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lq/c;->a:J

    iput-wide p3, p0, Lq/c;->b:J

    iput-wide p5, p0, Lq/c;->c:J

    iput-wide p7, p0, Lq/c;->d:J

    iput-wide p9, p0, Lq/c;->e:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    instance-of v2, p1, Lq/c;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lq/c;

    iget-wide v2, p1, Lq/c;->a:J

    iget-wide v4, p0, Lq/c;->a:J

    invoke-static {v4, v5, v2, v3}, Lm1/p;->c(JJ)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-wide v2, p0, Lq/c;->b:J

    iget-wide v4, p1, Lq/c;->b:J

    invoke-static {v2, v3, v4, v5}, Lm1/p;->c(JJ)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-wide v2, p0, Lq/c;->c:J

    iget-wide v4, p1, Lq/c;->c:J

    invoke-static {v2, v3, v4, v5}, Lm1/p;->c(JJ)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-wide v2, p0, Lq/c;->d:J

    iget-wide v4, p1, Lq/c;->d:J

    invoke-static {v2, v3, v4, v5}, Lm1/p;->c(JJ)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-wide v2, p0, Lq/c;->e:J

    iget-wide p0, p1, Lq/c;->e:J

    invoke-static {v2, v3, p0, p1}, Lm1/p;->c(JJ)Z

    move-result p0

    if-nez p0, :cond_6

    return v1

    :cond_6
    return v0

    :cond_7
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 4

    sget v0, Lm1/p;->h:I

    iget-wide v0, p0, Lq/c;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lq/c;->b:J

    invoke-static {v0, v1, v2, v3}, Lm/a;->f(IIJ)I

    move-result v0

    iget-wide v2, p0, Lq/c;->c:J

    invoke-static {v0, v1, v2, v3}, Lm/a;->f(IIJ)I

    move-result v0

    iget-wide v2, p0, Lq/c;->d:J

    invoke-static {v0, v1, v2, v3}, Lm/a;->f(IIJ)I

    move-result v0

    iget-wide v1, p0, Lq/c;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContextMenuColors(backgroundColor="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lq/c;->a:J

    const-string v3, ", textColor="

    invoke-static {v1, v2, v3, v0}, Lm/a;->s(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Lq/c;->b:J

    const-string v3, ", iconColor="

    invoke-static {v1, v2, v3, v0}, Lm/a;->s(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Lq/c;->c:J

    const-string v3, ", disabledTextColor="

    invoke-static {v1, v2, v3, v0}, Lm/a;->s(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Lq/c;->d:J

    const-string v3, ", disabledIconColor="

    invoke-static {v1, v2, v3, v0}, Lm/a;->s(JLjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-wide v1, p0, Lq/c;->e:J

    invoke-static {v1, v2}, Lm1/p;->i(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
