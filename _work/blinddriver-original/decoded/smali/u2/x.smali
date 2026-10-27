.class public final Lu2/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lp2/g;

.field public final b:J

.field public final c:Lp2/l0;


# direct methods
.method public constructor <init>(IJLjava/lang/String;)V
    .locals 1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 10
    const-string p4, ""

    :cond_0
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    .line 11
    sget-wide p2, Lp2/l0;->b:J

    .line 12
    :cond_1
    new-instance p1, Lp2/g;

    invoke-direct {p1, p4}, Lp2/g;-><init>(Ljava/lang/String;)V

    const/4 p4, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lu2/x;-><init>(Lp2/g;JLp2/l0;)V

    return-void
.end method

.method public constructor <init>(Lp2/g;JLp2/l0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lu2/x;->a:Lp2/g;

    .line 3
    iget-object v0, p1, Lp2/g;->m:Ljava/lang/String;

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0, p2, p3}, Lp2/d0;->c(IJ)J

    move-result-wide p2

    iput-wide p2, p0, Lu2/x;->b:J

    if-eqz p4, :cond_0

    .line 5
    iget-wide p2, p4, Lp2/l0;->a:J

    .line 6
    iget-object p1, p1, Lp2/g;->m:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1, p2, p3}, Lp2/d0;->c(IJ)J

    move-result-wide p1

    .line 8
    new-instance p3, Lp2/l0;

    invoke-direct {p3, p1, p2}, Lp2/l0;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 9
    :goto_0
    iput-object p3, p0, Lu2/x;->c:Lp2/l0;

    return-void
.end method

.method public static a(Lu2/x;Lp2/g;JI)Lu2/x;
    .locals 1

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lu2/x;->a:Lp2/g;

    :cond_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    iget-wide p2, p0, Lu2/x;->b:J

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p4, p0, Lu2/x;->c:Lp2/l0;

    goto :goto_0

    :cond_2
    const/4 p4, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lu2/x;

    invoke-direct {p0, p1, p2, p3, p4}, Lu2/x;-><init>(Lp2/g;JLp2/l0;)V

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lu2/x;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lu2/x;

    iget-wide v3, p1, Lu2/x;->b:J

    iget-wide v5, p0, Lu2/x;->b:J

    invoke-static {v5, v6, v3, v4}, Lp2/l0;->b(JJ)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lu2/x;->c:Lp2/l0;

    iget-object v3, p1, Lu2/x;->c:Lp2/l0;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lu2/x;->a:Lp2/g;

    iget-object p1, p1, Lu2/x;->a:Lp2/g;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lu2/x;->a:Lp2/g;

    invoke-virtual {v0}, Lp2/g;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    sget v2, Lp2/l0;->c:I

    iget-wide v2, p0, Lu2/x;->b:J

    invoke-static {v0, v1, v2, v3}, Lm/a;->f(IIJ)I

    move-result v0

    iget-object p0, p0, Lu2/x;->c:Lp2/l0;

    if-eqz p0, :cond_0

    iget-wide v1, p0, Lp2/l0;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TextFieldValue(text=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lu2/x;->a:Lp2/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', selection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lu2/x;->b:J

    invoke-static {v1, v2}, Lp2/l0;->h(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", composition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lu2/x;->c:Lp2/l0;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
