.class public final Lk1/m;
.super Le2/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le2/y0;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lk1/o;


# direct methods
.method public constructor <init>(Lk1/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk1/m;->a:Lk1/o;

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 0

    iget-object p0, p0, Lk1/m;->a:Lk1/o;

    iget-object p0, p0, Lk1/o;->c:Lk1/b0;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final bridge synthetic f(Lf1/q;)V
    .locals 0

    check-cast p1, Lk1/b0;

    return-void
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lk1/m;->a:Lk1/o;

    iget-object p0, p0, Lk1/o;->c:Lk1/b0;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
