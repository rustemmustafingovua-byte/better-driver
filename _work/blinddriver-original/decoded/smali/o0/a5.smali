.class public final Lo0/a5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lf1/h;

.field public final b:Lf1/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lf1/c;->x:Lf1/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo0/a5;->a:Lf1/h;

    iput-object v0, p0, Lo0/a5;->b:Lf1/h;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lo0/a5;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lo0/a5;

    iget-object v0, p0, Lo0/a5;->a:Lf1/h;

    iget-object v1, p1, Lo0/a5;->a:Lf1/h;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lo0/a5;->b:Lf1/h;

    iget-object p1, p1, Lo0/a5;->b:Lf1/h;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lo0/a5;->a:Lf1/h;

    iget v2, v2, Lf1/h;->a:F

    invoke-static {v2, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    iget-object p0, p0, Lo0/a5;->b:Lf1/h;

    iget p0, p0, Lf1/h;->a:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Attached(alwaysMinimize=false, minimizedAlignment="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo0/a5;->a:Lf1/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", expandedAlignment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lo0/a5;->b:Lf1/h;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
