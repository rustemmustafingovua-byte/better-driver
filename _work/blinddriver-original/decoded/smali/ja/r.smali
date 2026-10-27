.class public abstract Lja/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    sget-object v1, Lha/g1;->b:Lha/x;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lha/j1;->b:Lha/x;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lha/d1;->b:Lha/x;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lha/m1;->b:Lha/x;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ll7/a;->z([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lja/r;->a:Ljava/util/Set;

    return-void
.end method

.method public static final a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lja/r;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
