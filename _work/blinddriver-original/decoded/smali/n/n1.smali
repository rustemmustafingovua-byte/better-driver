.class public final Ln/n1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/u;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ln/v;


# direct methods
.method public constructor <init>(IILn/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ln/n1;->a:I

    iput p2, p0, Ln/n1;->b:I

    iput-object p3, p0, Ln/n1;->c:Ln/v;

    return-void
.end method


# virtual methods
.method public final a(Ln/o1;)Ln/q1;
    .locals 2

    .line 1
    new-instance p1, Lad/s2;

    iget v0, p0, Ln/n1;->b:I

    iget-object v1, p0, Ln/n1;->c:Ln/v;

    iget p0, p0, Ln/n1;->a:I

    invoke-direct {p1, p0, v0, v1}, Lad/s2;-><init>(IILn/v;)V

    return-object p1
.end method

.method public final a(Ln/o1;)Ln/s1;
    .locals 2

    .line 2
    new-instance p1, Lad/s2;

    iget v0, p0, Ln/n1;->b:I

    iget-object v1, p0, Ln/n1;->c:Ln/v;

    iget p0, p0, Ln/n1;->a:I

    invoke-direct {p1, p0, v0, v1}, Lad/s2;-><init>(IILn/v;)V

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ln/n1;

    if-eqz v0, :cond_0

    check-cast p1, Ln/n1;

    iget v0, p1, Ln/n1;->a:I

    iget v1, p0, Ln/n1;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Ln/n1;->b:I

    iget v1, p0, Ln/n1;->b:I

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Ln/n1;->c:Ln/v;

    iget-object p0, p0, Ln/n1;->c:Ln/v;

    invoke-static {p1, p0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Ln/n1;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ln/n1;->c:Ln/v;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget p0, p0, Ln/n1;->b:I

    add-int/2addr v1, p0

    return v1
.end method
