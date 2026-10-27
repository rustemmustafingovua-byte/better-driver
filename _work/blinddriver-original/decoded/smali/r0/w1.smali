.class public final Lr0/w1;
.super Lr0/r;
.source "SourceFile"


# instance fields
.field public final d:Lr0/r;

.field public final e:I


# direct methods
.method public constructor <init>(Lr0/r;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/w1;->d:Lr0/r;

    iput p2, p0, Lr0/w1;->e:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lr0/w1;

    if-eqz v0, :cond_0

    check-cast p1, Lr0/w1;

    iget-object v0, p1, Lr0/w1;->d:Lr0/r;

    iget-object v1, p0, Lr0/w1;->d:Lr0/r;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p1, Lr0/w1;->e:I

    iget p0, p0, Lr0/w1;->e:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lr0/w1;->e:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lr0/w1;->d:Lr0/r;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
