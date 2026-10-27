.class final Lk1/v;
.super Le2/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le2/y0;"
    }
.end annotation


# instance fields
.field public final a:Lk1/u;


# direct methods
.method public constructor <init>(Lk1/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk1/v;->a:Lk1/u;

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 1

    new-instance v0, Lk1/x;

    invoke-direct {v0}, Lf1/q;-><init>()V

    iget-object p0, p0, Lk1/v;->a:Lk1/u;

    iput-object p0, v0, Lk1/x;->z:Lk1/u;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lk1/v;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lk1/v;

    iget-object p0, p0, Lk1/v;->a:Lk1/u;

    iget-object p1, p1, Lk1/v;->a:Lk1/u;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final f(Lf1/q;)V
    .locals 1

    check-cast p1, Lk1/x;

    iget-object v0, p1, Lk1/x;->z:Lk1/u;

    iget-object v0, v0, Lk1/u;->a:Lt0/b;

    invoke-virtual {v0, p1}, Lt0/b;->j(Ljava/lang/Object;)Z

    iget-object p0, p0, Lk1/v;->a:Lk1/u;

    iput-object p0, p1, Lk1/x;->z:Lk1/u;

    iget-object p0, p0, Lk1/u;->a:Lt0/b;

    invoke-virtual {p0, p1}, Lt0/b;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lk1/v;->a:Lk1/u;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FocusRequesterElement(focusRequester="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lk1/v;->a:Lk1/u;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
