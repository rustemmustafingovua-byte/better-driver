.class public abstract Luc/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "unlimited_via"

    const-string v1, "unlimited_saved"

    const-string v2, "unlimited_builds"

    const-string v3, "cameras_signals"

    const-string v4, "trip_analytics"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ll7/a;->z([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Luc/d;->a:Ljava/util/Set;

    return-void
.end method

.method public static a(Luc/b;J)Z
    .locals 5

    const/4 p0, 0x1

    return p0
.end method
