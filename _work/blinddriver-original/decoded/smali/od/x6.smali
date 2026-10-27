.class public abstract Lod/x6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const-string v15, "secondary_link"

    const-string v16, "tertiary_link"

    const-string v1, "motorway"

    const-string v2, "trunk"

    const-string v3, "primary"

    const-string v4, "secondary"

    const-string v5, "tertiary"

    const-string v6, "minor"

    const-string v7, "service"

    const-string v8, "track"

    const-string v9, "residential"

    const-string v10, "unclassified"

    const-string v11, "living_street"

    const-string v12, "motorway_link"

    const-string v13, "trunk_link"

    const-string v14, "primary_link"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ll7/a;->z([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lod/x6;->a:Ljava/util/Set;

    return-void
.end method
