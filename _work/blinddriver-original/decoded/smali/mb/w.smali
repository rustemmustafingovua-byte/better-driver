.class public final Lmb/w;
.super Lmb/x;
.source "SourceFile"


# instance fields
.field public final I:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lmb/x;-><init>()V

    iput-object p1, p0, Lmb/w;->I:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final B()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final C()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final E()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final F()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final G()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final H()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final I()Z
    .locals 3

    sget-object v0, Lmb/o;->a:Ljava/util/Map;

    iget-object p0, p0, Lmb/w;->I:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v0, "BDFIJSC"

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public final d()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public final f()Lmb/x;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final g()[Lmb/x;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Lmb/x;

    return-object p0
.end method

.method public final h()[Lmb/f6;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Lmb/f6;

    return-object p0
.end method

.method public final i()[Lmb/s;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Lmb/s;

    return-object p0
.end method

.method public final l()[Lmb/v;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Lmb/v;

    return-object p0
.end method

.method public final n()Lmb/x;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final p()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmb/w;->I:Ljava/lang/String;

    return-object p0
.end method

.method public final u()[Lmb/x;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Lmb/x;

    return-object p0
.end method

.method public final w()Lmb/x;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final y()Lmb/x;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
