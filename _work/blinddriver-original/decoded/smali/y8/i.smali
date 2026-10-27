.class public final Ly8/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly8/h;
.implements Ljava/io/Serializable;


# static fields
.field public static final l:Ly8/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ly8/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ly8/i;->l:Ly8/i;

    return-void
.end method


# virtual methods
.method public final d(Li9/e;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p2
.end method

.method public final hashCode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final k(Ly8/g;)Ly8/h;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n(Ly8/g;)Ly8/f;
    .locals 0

    const-string p0, "key"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "EmptyCoroutineContext"

    return-object p0
.end method

.method public final y(Ly8/h;)Ly8/h;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
