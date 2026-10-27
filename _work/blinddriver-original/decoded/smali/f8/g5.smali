.class public final Lf8/g5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/List;

.field public b:Ljava/util/List;

.field public c:Ljava/util/List;

.field public d:Ljava/util/List;

.field public e:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lb0/l1;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb0/l1;-><init>(IZ)V

    new-instance v1, Lf8/g5;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lb0/l1;->m:Ljava/lang/Object;

    invoke-virtual {v0}, Lb0/l1;->h()Lf8/g5;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lf8/g5;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object v0, p0, Lf8/g5;->a:Ljava/util/List;

    iget-object v1, p0, Lf8/g5;->b:Ljava/util/List;

    iget-object v2, p0, Lf8/g5;->c:Ljava/util/List;

    iget-object v3, p0, Lf8/g5;->d:Ljava/util/List;

    iget-object p0, p0, Lf8/g5;->e:Ljava/util/List;

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    check-cast p1, Lf8/g5;

    iget-object v0, p1, Lf8/g5;->a:Ljava/util/List;

    iget-object v1, p1, Lf8/g5;->b:Ljava/util/List;

    iget-object v2, p1, Lf8/g5;->c:Ljava/util/List;

    iget-object v3, p1, Lf8/g5;->d:Ljava/util/List;

    iget-object p1, p1, Lf8/g5;->e:Ljava/util/List;

    filled-new-array {v0, v1, v2, v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lf8/g5;->a:Ljava/util/List;

    iget-object v1, p0, Lf8/g5;->b:Ljava/util/List;

    iget-object v2, p0, Lf8/g5;->c:Ljava/util/List;

    iget-object v3, p0, Lf8/g5;->d:Ljava/util/List;

    iget-object p0, p0, Lf8/g5;->e:Ljava/util/List;

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
