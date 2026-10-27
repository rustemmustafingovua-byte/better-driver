.class public final Lp6/o;
.super Lp6/z;
.source "SourceFile"


# static fields
.field public static final l:Lp6/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp6/o;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lp6/o;->l:Lp6/o;

    return-void
.end method


# virtual methods
.method public final A()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public final G()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public final a(Ls5/g;Lb6/r0;Ln6/e;)V
    .locals 0

    invoke-virtual {p1}, Ls5/g;->U()V

    return-void
.end method

.method public final c()Ls5/n;
    .locals 0

    sget-object p0, Ls5/n;->t:Ls5/n;

    return-object p0
.end method

.method public final d(Ls5/g;Lb6/r0;)V
    .locals 0

    invoke-virtual {p1}, Ls5/g;->U()V

    return-void
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

.method public final hashCode()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public final q()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method
