.class public final Lo9/d;
.super Lo9/b;
.source "SourceFile"


# static fields
.field public static final o:Lo9/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lo9/d;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lo9/b;-><init>(III)V

    sput-object v0, Lo9/d;->o:Lo9/d;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lo9/d;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lo9/d;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lo9/d;

    invoke-virtual {v0}, Lo9/d;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    check-cast p1, Lo9/d;

    iget v0, p1, Lo9/b;->l:I

    iget v1, p0, Lo9/b;->l:I

    if-ne v1, v0, :cond_2

    iget p0, p0, Lo9/b;->m:I

    iget p1, p1, Lo9/b;->m:I

    if-ne p0, p1, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 1

    invoke-virtual {p0}, Lo9/d;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget v0, p0, Lo9/b;->l:I

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lo9/b;->m:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    iget v0, p0, Lo9/b;->l:I

    iget p0, p0, Lo9/b;->m:I

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lo9/b;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lo9/b;->m:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
