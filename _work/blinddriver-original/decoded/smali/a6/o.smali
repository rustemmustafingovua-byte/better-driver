.class public final La6/o;
.super La6/s;
.source "SourceFile"


# instance fields
.field public final m:Ls5/c;


# direct methods
.method public constructor <init>(Ls5/c;La6/b;)V
    .locals 0

    invoke-direct {p0, p2}, La6/s;-><init>(La6/b;)V

    iput-object p1, p0, La6/o;->m:Ls5/c;

    return-void
.end method


# virtual methods
.method public final s(I)V
    .locals 1

    iget-object p0, p0, La6/o;->m:Ls5/c;

    const v0, 0x1312d00

    if-gt p1, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "getMaxStringLength"

    invoke-static {p0}, Ls5/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "String value length (%d) exceeds the maximum allowed (%d, from %s)"

    invoke-static {p1, p0}, Ls5/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method
