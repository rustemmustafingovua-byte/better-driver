.class public final Lorg/maplibre/android/style/sources/RasterSource;
.super Lorg/maplibre/android/style/sources/Source;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/maplibre/android/style/sources/RasterSource$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/maplibre/android/style/sources/RasterSource$Companion;

.field public static final DEFAULT_TILE_SIZE:I = 0x200


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/maplibre/android/style/sources/RasterSource$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/maplibre/android/style/sources/RasterSource$Companion;-><init>(Lj9/g;)V

    sput-object v0, Lorg/maplibre/android/style/sources/RasterSource;->Companion:Lorg/maplibre/android/style/sources/RasterSource$Companion;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/style/sources/Source;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lorg/maplibre/android/style/sources/Source;-><init>()V

    const/16 v0, 0x200

    .line 5
    invoke-virtual {p0, p1, p2, v0}, Lorg/maplibre/android/style/sources/RasterSource;->initialize(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lorg/maplibre/android/style/sources/Source;-><init>()V

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lorg/maplibre/android/style/sources/RasterSource;->initialize(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/net/URI;)V
    .locals 1

    const-string v0, "uri"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/style/sources/RasterSource;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/net/URL;)V
    .locals 1
    .annotation runtime Lt8/c;
    .end annotation

    const-string v0, "url"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/style/sources/RasterSource;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/maplibre/android/style/sources/TileSet;)V
    .locals 1

    const-string v0, "tileSet"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Lorg/maplibre/android/style/sources/Source;-><init>()V

    .line 9
    invoke-virtual {p2}, Lorg/maplibre/android/style/sources/TileSet;->toValueObject()Ljava/util/Map;

    move-result-object p2

    const/16 v0, 0x200

    invoke-virtual {p0, p1, p2, v0}, Lorg/maplibre/android/style/sources/RasterSource;->initialize(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/maplibre/android/style/sources/TileSet;I)V
    .locals 1

    const-string v0, "tileSet"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Lorg/maplibre/android/style/sources/Source;-><init>()V

    .line 11
    invoke-virtual {p2}, Lorg/maplibre/android/style/sources/TileSet;->toValueObject()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lorg/maplibre/android/style/sources/RasterSource;->initialize(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public final native finalize()V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public final getUri()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->checkThread()V

    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/RasterSource;->nativeGetUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 0
    .annotation runtime Lt8/c;
    .end annotation

    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/Source;->checkThread()V

    invoke-virtual {p0}, Lorg/maplibre/android/style/sources/RasterSource;->nativeGetUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final native initialize(Ljava/lang/String;Ljava/lang/Object;I)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method public final native nativeGetUrl()Ljava/lang/String;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method
