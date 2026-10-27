.class public final synthetic Landroidx/datastore/core/okio/OkioStorage$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lokio/Path;

    check-cast p2, Lokio/FileSystem;

    invoke-static {p1, p2}, Landroidx/datastore/core/okio/OkioStorage;->$r8$lambda$zaSHyDobNeO3yk4Wyl_gDVAF7jA(Lokio/Path;Lokio/FileSystem;)Landroidx/datastore/core/InterProcessCoordinator;

    move-result-object p1

    return-object p1
.end method
