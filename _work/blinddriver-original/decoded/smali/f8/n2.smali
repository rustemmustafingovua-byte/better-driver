.class public final Lf8/n2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lf8/x2;

.field public final b:I


# direct methods
.method public constructor <init>(Lf8/x2;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf8/n2;->a:Lf8/x2;

    iput p2, p0, Lf8/n2;->b:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lf8/n2;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lf8/n2;

    iget-object v0, p0, Lf8/n2;->a:Lf8/x2;

    iget-object v2, p1, Lf8/n2;->a:Lf8/x2;

    if-ne v0, v2, :cond_1

    iget p0, p0, Lf8/n2;->b:I

    iget p1, p1, Lf8/n2;->b:I

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lf8/n2;->a:Lf8/x2;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xffff

    mul-int/2addr v0, v1

    iget p0, p0, Lf8/n2;->b:I

    add-int/2addr v0, p0

    return v0
.end method
