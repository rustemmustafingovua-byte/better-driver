.class public final Lp6/t;
.super Lp6/z;
.source "SourceFile"


# static fields
.field public static final l:Lp6/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp6/t;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lp6/t;->l:Lp6/t;

    return-void
.end method


# virtual methods
.method public final A()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public final c()Ls5/n;
    .locals 0

    sget-object p0, Ls5/n;->F:Ls5/n;

    return-object p0
.end method

.method public final d(Ls5/g;Lb6/r0;)V
    .locals 0

    invoke-virtual {p2, p1}, Lb6/r0;->U(Ls5/g;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-eq p1, p0, :cond_1

    instance-of p0, p1, Lp6/t;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public final q()Ljava/lang/String;
    .locals 0

    const-string p0, "null"

    return-object p0
.end method
